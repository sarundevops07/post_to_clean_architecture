import 'package:dartz/dartz.dart';
import 'package:postblocapp/data/repositories/login_repo_impl.dart';
import 'package:postblocapp/domain/entities/user_entity.dart';
import 'package:postblocapp/domain/failures/main_failure.dart';
import 'package:postblocapp/domain/repositories/login_repository.dart';

class LoginUseCases {
  LoginRepository loginRepository = LoginRepoImpl();

  Future<Either<MainFailures, UserEntity>> login(
      String userName, String password) async {
    final user = await loginRepository.login(userName, password);
    return user;
  }
}
