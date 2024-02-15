import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:postblocapp/domain/entities/products_entity.dart';
import 'package:postblocapp/domain/usecases/products_usecase.dart';

part 'products_event.dart';
part 'products_state.dart';
part 'products_bloc.freezed.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  final productsUsecases = ProductsUsecases();
  ProductsBloc() : super(ProductsState.initial()) {
    on<GetAllProducts>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result = await productsUsecases.getAllProducts();
      result.fold(
          (failure) => emit(state.copyWith(isError: true, isLoading: false)),
          (success) => emit(state.copyWith(
              products: success, isError: false, isLoading: false)));
    });
  }
}
