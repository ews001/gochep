import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gochep/generated/l10n.dart';
import 'package:gochep/modules/auth/login/bloc/login_bloc.dart';
import 'package:gochep/settings/size_config.dart';
import 'package:gochep/utils/colors.dart';
import 'package:gochep/utils/text_styles.dart';

class BtnSignUpWidget extends StatelessWidget {
  const BtnSignUpWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.widthMultiplier * 100,
      height: SizeConfig.heightMultiplier * 7,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: constPrimaryColor.withOpacity(0.1),
          elevation: 0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
        ),
        onPressed: () => {},
        child: Text(
          S.current.signInViewBtnSignUp,
          style: const14BoltTextStyle,
        ),
      ),
    );
  }
}

class BtnLoginWidget extends StatelessWidget {
  final Stream<bool> stream;
  const BtnLoginWidget({super.key, required this.stream});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
      stream: stream,
      builder: (context, snapshot) => SizedBox(
        width: SizeConfig.widthMultiplier * 100,
        height: SizeConfig.heightMultiplier * 7,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: constPrimaryColor,
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7.0)),
          ),
          onPressed: () {
            // print(snapshot);
          },
          child: Text(
            S.current.signInViewBtnLogin,
          ),
        ),
      ),
    );
  }
}

class ForgotPasswordsBtnWidget extends HookWidget {
  const ForgotPasswordsBtnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<String>(
        stream: context.read<LoginBloc>().email,
        builder: (context, snapshot) {
          return Column(
            children: [
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      context
                          .read<LoginBloc>()
                          .add(const LoginForgotPasswordEvent());
                    },
                    child: Text(
                      S.current.signInViewBtnForgotPassword,
                      style: const14BoltTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  )),
            ],
          );
        });
  }
}
