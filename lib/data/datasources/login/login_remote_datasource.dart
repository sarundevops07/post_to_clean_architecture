import 'dart:convert';
import 'dart:developer';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:postblocapp/data/models/user_model/user_model.dart';
import 'package:postblocapp/domain/failures/main_failure.dart';

abstract class LoginRemoteDatasource {
  Future<Either<MainFailures, UserModel>> loginApiCall(
      String userName, String password);
}

class LoginRemoteDatasourceImpl implements LoginRemoteDatasource {
  Dio dio = Dio();
  Map<String, dynamic> loginData = {
    "username": "kminchelle",
    "password": "0lelplR"
  };
  @override
  Future<Either<MainFailures, UserModel>> loginApiCall(
      String userName, String password) async {
    try {
      final response = await dio.post(
        "https://dummyjson.com/auth/login",
        options: Options(headers: {"Content-Type": "application/json"}),
        data: jsonEncode(loginData),
      );
      log("Response after post method ${response.data}");

      if (response.statusCode == 200) {
        log("entered if condition");
        // final result = jsonDecode(response);
       // log("result after jsonDecode $result ");
        final user = UserModel.fromJson(response.data);
        log("Log of UserModel $user");
        final SharedPreferences pref = await SharedPreferences.getInstance();
        pref.setString("token", user.token.toString());

        return Right(user);
      }
      return left(const MainFailures.serverFailure());
    } on DioException catch (e) {
      log("Dio Catched Error $e");
      return left(const MainFailures.clientFailure());
    } catch (e) {
      log("Catched Error $e");
      return left(const MainFailures.clientFailure());
    }
  }
}
