import 'dart:developer';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:postblocapp/data/models/products_model/products_model.dart';
import 'package:postblocapp/domain/failures/main_failure.dart';

abstract class ProductsRemoteDataSource {
  Future<Either<MainFailures, List<ProductsModel>>> getAllProductsFromApi();
}

class ProductsRemoteDataSourceImpl implements ProductsRemoteDataSource {
  Dio dio = Dio();
  @override
  Future<Either<MainFailures, List<ProductsModel>>>
      getAllProductsFromApi() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    final token = pref.get("token");
    try {
      final response = await dio.get("https://dummyjson.com/auth/products",
          options: Options(headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $token"
          }));
      log("log after get method ${response.data}");
      if (response.statusCode == 200) {
        final result = (response.data["products"] as List);
        final productList = result
            .map((eachElementsInList) =>
                ProductsModel.fromJson(eachElementsInList))
            .toList();
        log("ProductList$productList");
        return right(productList);
      }
      return left(const MainFailures.clientFailure());
    } on DioException catch (e) {
      log("log from dioexception catch $e");
      return left(const MainFailures.serverFailure());
    } catch (e) {
      log("log from catch $e");
      return left(const MainFailures.serverFailure());
    }
  }
}
