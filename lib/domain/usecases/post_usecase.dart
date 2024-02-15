import 'package:dartz/dartz.dart';

import 'package:postblocapp/data/repositories/post_repo_impl.dart';
import 'package:postblocapp/domain/entities/post_entity.dart';
import 'package:postblocapp/domain/failures/main_failure.dart';
import 'package:postblocapp/domain/repositories/post_repository.dart';



class PostUseCases {
  PostRepo postRepo = PostRepoImpl();

  Future<Either<MainFailures, List<PostEntity>>> getPostFromDataSource() async {
    final posts = await postRepo.getPostFromDataSource();

    return posts;
  }
}