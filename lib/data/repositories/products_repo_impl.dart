import 'package:dartz/dartz.dart';
import 'package:postblocapp/data/datasources/products/products_remote_datasource.dart';
import 'package:postblocapp/domain/entities/products_entity.dart';
import 'package:postblocapp/domain/failures/main_failure.dart';
import 'package:postblocapp/domain/repositories/products_repository.dart';

class ProductsRepoImpl implements ProductsRepo {
  ProductsRemoteDataSource productsRemoteDataSource =
      ProductsRemoteDataSourceImpl();
  @override
  Future<Either<MainFailures, List<ProductsEntity>>> getAllProducts() async {
    final products = await productsRemoteDataSource.getAllProductsFromApi();
    return products;
  }
}
