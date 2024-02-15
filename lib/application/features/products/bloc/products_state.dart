part of 'products_bloc.dart';

@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState(
      {required bool isLoading,
      required bool isError,
      required List<ProductsEntity> products}) = _Initial;
  factory ProductsState.initial() =>
      const ProductsState(isLoading: false, isError: false, products: []);
}
