import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:postblocapp/data/datasources/post/post_remote_datasource.dart';
import 'package:postblocapp/domain/entities/post_entity.dart';
import 'package:postblocapp/domain/failures/main_failure.dart';
import 'package:postblocapp/domain/repositories/post_repository.dart';

@LazySingleton(as: PostRepo)
class PostRepoImpl implements PostRepo {
  PostRemoteDataSource postRemoteDataSource = PostRemoteDataSourceImpl();

  @override
  Future<Either<MainFailures, List<PostEntity>>> getPostFromDataSource() async {
    final posts = await postRemoteDataSource.getPostFromApi();
    return posts;
  }
}