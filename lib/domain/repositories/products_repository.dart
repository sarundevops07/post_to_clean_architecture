import 'package:dartz/dartz.dart';
import 'package:postblocapp/domain/entities/products_entity.dart';
import 'package:postblocapp/domain/failures/main_failure.dart';

abstract class ProductsRepo {
  Future<Either<MainFailures, List<ProductsEntity>>> getAllProducts();
}
