import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:postblocapp/domain/entities/user_entity.dart';
import 'package:postblocapp/domain/usecases/login_usecase.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final loginRepository = LoginUseCases();
  LoginBloc() : super(LoginState.initial()) {
    on<Login>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result =
          await loginRepository.login(event.userName, event.password);
      log("Result From bloc$result");
      result.fold(
          (failure) => emit(state.copyWith(isError: true, isLoading: false)),
          (success) => emit(
              state.copyWith(user: success, isError: false, isLoading: false)));
    });
  }
}
