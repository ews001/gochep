import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart' show immutable;
import 'package:flutter/material.dart';
import 'package:gochep/modules/auth/login/bloc/validators.dart';
import 'package:rxdart/rxdart.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> with Validators {
  final BehaviorSubject _emailController = BehaviorSubject<String>();
  final BehaviorSubject _passwordController = BehaviorSubject<String>();

  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  Stream<String> get email => _emailController.stream.transform(validateEmail);
  Stream<String> get password =>
      _passwordController.stream.transform(validatePassword);

  Stream<bool> get submitValid =>
      Rx.combineLatest2(email, password, (email, password) => true);

  LoginBloc() : super(LoginInitialState()) {
    on<LoginForgotPasswordEvent>(
        (event, emit) => _handleLoginStateIsInForgotPasswordEvent(event, emit));
  }

  void _handleLoginStateIsInForgotPasswordEvent(
      LoginForgotPasswordEvent event, Emitter<LoginState> emit) {
    emit(LoginStateIsInForgotPassword());
  }
}
