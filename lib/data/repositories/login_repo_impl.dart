import 'package:dartz/dartz.dart';
import 'package:postblocapp/data/datasources/login/login_remote_datasource.dart';
import 'package:postblocapp/domain/entities/user_entity.dart';
import 'package:postblocapp/domain/failures/main_failure.dart';
import 'package:postblocapp/domain/repositories/login_repository.dart';

class LoginRepoImpl implements LoginRepository {
  LoginRemoteDatasource loginRemoteDatasource = LoginRemoteDatasourceImpl();

  @override
  Future<Either<MainFailures, UserEntity>> login(
      String userName, String password) async {
    final user = await loginRemoteDatasource.loginApiCall(userName, password);
    return user;
  }
}