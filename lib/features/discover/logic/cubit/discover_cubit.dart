import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shoesly/features/discover/data/models/get_products_header.dart';
import 'package:shoesly/features/discover/data/models/get_products_response.dart';
import 'package:shoesly/features/discover/data/repos/discover_repo.dart';

part 'discover_cubit.freezed.dart';
part 'discover_state.dart';

class DiscoverCubit extends Cubit<DiscoverState<List<ProductsResponse>>> {
  final DiscoverRepo _discoverRepo;
  int _currentOffset = 0;
  bool _hasReachedMax = false;
  bool _isFetching = false;

  DiscoverCubit(this._discoverRepo) : super(const DiscoverState.initial());

  bool get isFetching => _isFetching;

  void fetchInitialProducts() {
    _resetState();
    _fetchProducts(isInitial: true);
  }

  void loadMoreProducts() {
    if (_hasReachedMax || _isFetching) return;
    _currentOffset += 20;
    _fetchProducts();
  }

  void _resetState() {
    _currentOffset = 0;
    _hasReachedMax = false;
  }

  Future<void> _fetchProducts({bool isInitial = false}) async {
    if (_isFetching) return;
    _isFetching = true;
    emit(isInitial
        ? const DiscoverState.loading()
        : DiscoverState.loadingMore(_getCurrentData()));
    final response = await _discoverRepo
        .getProducts(ProductsRequestHeader(limit: 20, offset: _currentOffset));
    response.when(
      success: (productResponse) {
        _hasReachedMax = productResponse.isEmpty;
        emit(DiscoverState.success(
          data: isInitial
              ? productResponse
              : [..._getCurrentData(), ...productResponse],
          hasReachedMax: _hasReachedMax,
        ));
      },
      failure: (error) {
        emit(DiscoverState.error(
            error: error.apiErrorModel.message ??
                'An unexpected error occurred.'));
      },
    );
    _isFetching = false;
  }

  List<ProductsResponse> _getCurrentData() {
    return state.maybeWhen(
      success: (data, _) => data,
      loadingMore: (data) => data,
      orElse: () => [],
    );
  }
}
