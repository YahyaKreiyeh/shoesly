import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shoesly/features/product/data/models/get_reviews_header.dart';
import 'package:shoesly/features/product/data/models/get_reviews_response.dart';
import 'package:shoesly/features/product/data/repos/product_repo.dart';

part 'review_cubit.freezed.dart';
part 'review_state.dart';

class ReviewCubit extends Cubit<ReviewState<List<ReviewsResponse>>> {
  final ProductRepo _productRepo;
  int _currentOffset = 0;
  bool _hasReachedMax = false;
  bool _isFetching = false;

  ReviewCubit(this._productRepo) : super(const ReviewState.initial());

  bool get isFetching => _isFetching;

  void fetchInitialreviews(int productId) {
    _resetState();
    _fetchreviews(isInitial: true, productId: productId);
  }

  void loadMorereviews(int productId) {
    if (_hasReachedMax || _isFetching) return;
    _currentOffset += 20;
    _fetchreviews(productId: productId);
  }

  void _resetState() {
    _currentOffset = 0;
    _hasReachedMax = false;
  }

  Future<void> _fetchreviews({
    bool isInitial = false,
    required int productId,
  }) async {
    if (_isFetching) return;
    _isFetching = true;
    emit(isInitial
        ? const ReviewState.loading()
        : ReviewState.loadingMore(_getCurrentData()));
    final response = await _productRepo.getReviews(
      ReviewsRequestHeader(
        limit: 20,
        offset: _currentOffset,
        id: productId,
      ),
    );
    response.when(
      success: (reviewResponse) {
        _hasReachedMax = reviewResponse.isEmpty;
        emit(ReviewState.success(
          data: isInitial
              ? reviewResponse
              : [..._getCurrentData(), ...reviewResponse],
          hasReachedMax: _hasReachedMax,
        ));
      },
      failure: (error) {
        emit(ReviewState.error(
            error: error.apiErrorModel.message ??
                'An unexpected error occurred.'));
      },
    );
    _isFetching = false;
  }

  List<ReviewsResponse> _getCurrentData() {
    return state.maybeWhen(
      success: (data, _) => data,
      loadingMore: (data) => data,
      orElse: () => [],
    );
  }
}
