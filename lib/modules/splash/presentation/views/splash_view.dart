import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gochep/generated/l10n.dart';
import 'package:gochep/modules/auth/login/presentation/views/login_view.dart';
import 'package:gochep/modules/onBoardPage/presentation/views/on_board_view.dart';
import 'package:gochep/modules/splash/bloc/splash_bloc.dart';
import 'package:gochep/settings/size_config.dart';
import 'package:gochep/utils/colors.dart';
import 'package:gochep/utils/conts.dart';
import 'package:gochep/utils/text_styles.dart';
import 'package:gochep/utils/widgets.dart';

class SplashView extends HookWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<SplashBloc>(
        create: (_) => SplashBloc(SplashBloc.initialState)
          ..add(LoadingStateSessionEvent()),
        child: BlocConsumer<SplashBloc, SplashState>(
          listener: (context, state) {
            if (state is SplashStateIsInWelcomeView) {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => OnBoardingView(),
                  ),
                  (route) => false);
            }
            if (state is SplashStateIsInAuthView) {
              Future.delayed(const Duration(seconds: 3), () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => const LoginView(),
                    ),
                    (route) => false);
              });
            }
          },
          builder: (context, state) {
            return FullContainer(
                child: Column(
              children: [
                Expanded(
                  child: SizedBox(
                      width: SizeConfig.widthMultiplier * 55,
                      child: Image.asset('assets/small_logo.png')),
                ),
                SpinKitDancingSquare(
                  itemBuilder: (BuildContext context, int index) =>
                      LinearProgressIndicator(
                    color: constPrimaryColor,
                    backgroundColor: constPrimaryColor.withOpacity(0.3),
                  ),
                ),
                heightSpace,
                Text(
                  S.current.splashViewFooter(state.currentYear),
                  style: const14TextStyle,
                ),
                heightSpace,
              ],
            ));
          },
        ),
      ),
    );
  }
}
