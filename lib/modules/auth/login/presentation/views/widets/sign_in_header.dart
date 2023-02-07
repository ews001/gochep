import 'package:flutter/material.dart';
import 'package:gochep/generated/l10n.dart';
import 'package:gochep/settings/size_config.dart';
import 'package:gochep/utils/conts.dart';
import 'package:gochep/utils/text_styles.dart';

Widget header() {
  return Column(
    children: [
      SizedBox(
          width: SizeConfig.widthMultiplier * 30,
          child: Image.asset('assets/small_logo.png')),
      heightSpace,
      SizedBox(
        width: SizeConfig.widthMultiplier * 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.current.signInViewTitle,
              style: const17TBoldTextStyle,
            ),
            heightSpace,
            Text(
              S.current.signInViewSubTitle,
              style: const14BoltTextStyle,
            )
          ],
        ),
      ),
    ],
  );
}
