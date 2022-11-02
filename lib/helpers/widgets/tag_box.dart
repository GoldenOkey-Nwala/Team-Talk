import 'package:flutter/material.dart';
import 'package:team_talk/helpers/constants/colors.dart';
import 'package:team_talk/helpers/constants/textstyle.dart';

Widget tagBox() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 6),
    decoration: BoxDecoration(
      color: blue5,
      border: Border.all(color: blueMain),
      borderRadius: BorderRadius.circular(100),
    ),
    child: Text(
      'Tag One',
      style: mediumText.copyWith(color: blueMain),
    ),
  );
}
