import 'package:flutter/material.dart';

import '../settings/size_config.dart';

class FullContainer extends StatelessWidget {
  const FullContainer(
      {Key? key,
      required this.child,
      this.padding = EdgeInsets.zero,
      this.restHeight = 0})
      : super(key: key);

  final Widget child;
  final EdgeInsets padding;
  final double restHeight;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      width: SizeConfig.widthMultiplier * 100,
      height: SizeConfig.heightMultiplier * 100 - restHeight,
      child: child,
    );
  }
}
