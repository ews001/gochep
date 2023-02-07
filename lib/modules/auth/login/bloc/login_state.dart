part of 'login_bloc.dart';

@immutable
abstract class LoginState {}

class LoginInitialState extends LoginState {}

class LoginLoadingState extends LoginState {}

class LoginSuccessState extends LoginState {}

class LoginFailureState extends LoginState {
  final String errorMessage;

  LoginFailureState({required this.errorMessage});
}

class LoginFormSubmittingState extends LoginState {}

class LoginFormInvalidState extends LoginState {}

class LoginServerErrorState extends LoginState {
  final String errorMessage;

  LoginServerErrorState({required this.errorMessage});
}

class LoginStateIsInForgotPassword extends LoginState {}
