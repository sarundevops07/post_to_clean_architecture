
import 'package:dartz/dartz.dart';

import 'package:postblocapp/domain/entities/user_entity.dart';
import 'package:postblocapp/domain/failures/main_failure.dart';

abstract class LoginRepository {
  Future<Either<MainFailures, UserEntity>> login(
      String userName, String password);
}
