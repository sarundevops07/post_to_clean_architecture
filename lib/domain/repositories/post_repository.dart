import 'package:postblocapp/domain/entities/post_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:postblocapp/domain/failures/main_failure.dart';

abstract class PostRepo {
  Future<Either<MainFailures, List<PostEntity>>> getPostFromDataSource();
}
