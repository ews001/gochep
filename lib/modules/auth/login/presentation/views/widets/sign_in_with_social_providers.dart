import 'package:flutter/material.dart';
import 'package:gochep/generated/l10n.dart';
import 'package:gochep/utils/colors.dart';
import 'package:gochep/utils/conts.dart';
import 'package:gochep/utils/text_styles.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

class LoginFormWithSocialProviders extends StatelessWidget {
  const LoginFormWithSocialProviders({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: fixPaddingX2.copyWith(top: 0, bottom: 0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: Divider(
                  color: constPrimaryColor,
                )),
                weightSpace,
                Text(
                  S.current.signInViewOrProviderLabel,
                  style: const14BoltTextStyle,
                ),
                weightSpaceX2,
                Expanded(
                    child: Divider(
                  color: constPrimaryColor,
                ))
              ],
            ),
            heightSpaceX2,
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialLoginButton(
                    text: '',
                    buttonType: SocialLoginButtonType.facebook,
                    onPressed: () => {},
                    mode: SocialLoginButtonMode.single),
                weightSpaceX2,
                SocialLoginButton(
                    text: '',
                    buttonType: SocialLoginButtonType.google,
                    onPressed: () => {},
                    mode: SocialLoginButtonMode.single),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
