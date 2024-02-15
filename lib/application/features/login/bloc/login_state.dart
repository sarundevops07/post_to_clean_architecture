part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState(
      {required UserEntity? user,
      required bool isLoading,
      required bool isError}) = _Initial;
  factory LoginState.initial() =>
      const LoginState(user: null, isError: false, isLoading: false);
}