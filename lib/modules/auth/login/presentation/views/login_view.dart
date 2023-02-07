import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gochep/modules/auth/forgot_password/presentation/views/forgot_password_view.dart';
import 'package:gochep/modules/auth/login/bloc/login_bloc.dart';
import 'package:gochep/modules/auth/login/presentation/views/widets/password_input_widget.dart';
import 'package:gochep/modules/auth/login/presentation/views/widets/sign_in_with_social_providers.dart';
import 'package:gochep/modules/splash/presentation/views/splash_view.dart';
import 'package:gochep/utils/conts.dart';
import 'package:gochep/utils/widgets.dart';

import 'widets/btns.dart';
import 'widets/email_input_widget.dart';
import 'widets/sign_in_header.dart';

class LoginView extends HookWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = LoginBloc();
    return Scaffold(
        body: BlocProvider(
      create: (_) => bloc,
      child: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          switch (state.runtimeType) {
            case LoginStateIsInForgotPassword:
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const ForgotPasswordView(),
              ));
              break;
            default:
          }
        },
        child: SingleChildScrollView(
          child: FullContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                heightSpaceX2,
                Padding(
                  padding: fixPaddingX2,
                  child: Column(
                    children: [
                      header(),
                      heightSpaceX2,
                      heightSpaceX2,
                      EmailInputWidget(
                        stream: bloc.email,
                        onChangeEvent: bloc.changeEmail,
                      ),
                      heightSpace,
                      PasswordInputWidget(
                        stream: bloc.password,
                        onChangeEvent: bloc.changePassword,
                      ),
                      heightSpace,
                      BtnLoginWidget(
                        stream: bloc.submitValid,
                      ),
                      const ForgotPasswordsBtnWidget()
                    ],
                  ),
                ),
                heightSpace,
                const LoginFormWithSocialProviders(),
                const BtnSignUpWidget()
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
