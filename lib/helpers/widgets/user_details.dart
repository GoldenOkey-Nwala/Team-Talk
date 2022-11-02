import 'package:flutter/material.dart';
import 'package:team_talk/helpers/constants/app_icons.dart';
import 'package:team_talk/helpers/constants/colors.dart';
import 'package:team_talk/helpers/constants/spacer.dart';
import 'package:team_talk/helpers/constants/textstyle.dart';

Widget userDetails({
  required String icon,
  heading,
  item1,
  itemA,
  item2,
  itemB,
}) {
  return Column(
    children: [
      Row(children: [
        AppIcon(icon),
        widthSpace(8),
        Text(
          heading,
          style: normalText,
        )
      ]),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        margin: const EdgeInsets.only(top: 9.5, bottom: 32),
        decoration: BoxDecoration(
          color: blue10,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$item1:',
                  style: smallText.copyWith(color: grayMid),
                ),
                Text(
                  itemA,
                  style: mediumText,
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Divider(color: blue20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 113,
                  child: Text(
                    '$item2:',
                    style: smallText.copyWith(color: grayMid),
                  ),
                ),
                Text(
                  itemB,
                  style: mediumText,
                ),
              ],
            )
          ],
        ),
      )
    ],
  );
}
