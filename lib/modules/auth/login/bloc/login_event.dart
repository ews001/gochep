part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {
  const LoginEvent();
}

class LoginFormSubmittedEvent extends LoginEvent {
  const LoginFormSubmittedEvent();
}

class LoginFormValidationEvent extends LoginEvent {
  const LoginFormValidationEvent();
}

class LoginSuccessEvent extends LoginEvent {
  const LoginSuccessEvent();
}

class LoginFailureEvent extends LoginEvent {
  final String errorMessage;

  const LoginFailureEvent({required this.errorMessage});
}

class LoginServerErrorEvent extends LoginEvent {
  final String errorMessage;

  const LoginServerErrorEvent({required this.errorMessage});
}

class LoginForgotPasswordEvent extends LoginEvent {
  const LoginForgotPasswordEvent();
}
