import 'package:dartz/dartz.dart';
import 'package:postblocapp/data/repositories/products_repo_impl.dart';
import 'package:postblocapp/domain/entities/products_entity.dart';
import 'package:postblocapp/domain/failures/main_failure.dart';
import 'package:postblocapp/domain/repositories/products_repository.dart';

class ProductsUsecases {
  ProductsRepo productsRepo = ProductsRepoImpl();
  Future<Either<MainFailures, List<ProductsEntity>>> getAllProducts() async {
    final products = await productsRepo.getAllProducts();
    return products;
  }
}
