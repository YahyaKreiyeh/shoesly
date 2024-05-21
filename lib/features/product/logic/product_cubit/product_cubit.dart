import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shoesly/features/product/data/models/get_product_body.dart';
import 'package:shoesly/features/product/data/models/get_product_header.dart';
import 'package:shoesly/features/product/data/repos/product_repo.dart';

part 'product_cubit.freezed.dart';
part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  final ProductRepo _productRepo;

  ProductCubit(this._productRepo) : super(const ProductState.initial());

  Future<void> fetchProduct(int productId) async {
    emit(const ProductState.loading());
    final result = await _productRepo.getProduct(
      productRequestBody: ProductRequestBody(id: productId),
      productRequestHeader: ProductRequestHeader(id: productId),
    );
    result.when(
      success: (data) => emit(ProductState.success(data[0])),
      failure: (error) => emit(ProductState.error(
        error: error.apiErrorModel.message ?? 'An unexpected error occurred.',
      )),
    );
  }
}
