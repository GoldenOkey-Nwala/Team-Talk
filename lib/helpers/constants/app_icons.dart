// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppIcon extends StatelessWidget {
  const AppIcon(
    this.icon, {
    Key? key,
    this.size = 24,
    this.color,
  }) : super(key: key);
  final String icon;
  final double? size;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      width: size,
      height: size,
      color: color,
    );
  }
}

class AppIcons {
  static const arrow_left = "assets/icons/arrow-left.svg";
  static const coins_stacked = "assets/icons/coins-stacked.svg";
  static const message_text_square = "assets/icons/message-text-square-02.svg";
  static const play_circle = "assets/icons/play-circle.svg";
  static const user_03 = "assets/icons/user-03.svg";
}
