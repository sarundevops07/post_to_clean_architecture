
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:postblocapp/data/models/post_model/post_model.dart';
import 'package:postblocapp/domain/failures/main_failure.dart';

abstract class PostRemoteDataSource {
  Future<Either<MainFailures, List<PostModel>>> getPostFromApi();
}

class PostRemoteDataSourceImpl implements PostRemoteDataSource {
  Dio dio = Dio();
  @override
  Future<Either<MainFailures, List<PostModel>>> getPostFromApi() async {
    try {
      final response = await dio.get(
          "https://jsonplaceholder.typicode.com/posts",
          options: Options(headers: {'content-type': 'application/json'}));

      if (response.statusCode == 200) {

        final responseBody = response.data as List;
        final List<PostModel> posts =
            responseBody.map((json) => PostModel.fromJson(json)).toList();
        log(posts.toString());
        return Right(posts);
      } else {
        return left(const MainFailures.clientFailure());
      }
    } catch (e) {
      return left(const MainFailures.serverFailure());
    }
  }
}
