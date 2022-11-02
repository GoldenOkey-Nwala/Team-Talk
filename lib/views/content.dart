import 'package:flutter/material.dart';
import 'package:team_talk/helpers/constants/app_icons.dart';
import 'package:team_talk/helpers/constants/assets.dart';
import 'package:team_talk/helpers/constants/colors.dart';
import 'package:team_talk/helpers/constants/spacer.dart';
import 'package:team_talk/helpers/constants/textstyle.dart';

import '../helpers/widgets/tag_box.dart';
import '../helpers/widgets/user_details.dart';

class Content extends StatelessWidget {
  const Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grayBg,
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: SizedBox(
          width: MediaQuery.of(context).size.width * .78,
          child: Row(children: [
            // widthSpace(16),
            const AppIcon(AppIcons.arrow_left),
            widthSpace(4),
            const Text(
              'Back',
              style: normalText,
            ),
            const Expanded(child: SizedBox()),
            const Text(
              'Settings',
              style: normalText,
            ),
            const Expanded(child: SizedBox()),
          ]),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 343,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: white,
                  border: Border.all(color: grayLight),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    const AppImage(
                      image: AppImages.profile,
                      width: 56,
                    ),
                    heightSpace(16),
                    const Text(
                      'Samuel Joseph',
                      style: bigText,
                    )
                  ],
                ),
              ),
            ),
            heightSpace(32),
            userDetails(
              icon: AppIcons.user_03,
              heading: 'Personal Info',
              item1: 'Email Address',
              itemA: 'samueljoseph@gmail.com',
              item2: 'Phone Number',
              itemB: '0123456789',
            ),
            userDetails(
              icon: AppIcons.coins_stacked,
              heading: 'Tasks and Points',
              item1: 'Tasks Completed',
              itemA: '52',
              item2: 'Accumulated Points (Worth)',
              itemB: '50,283',
            ),
            const Text(
              'Tags',
              style: normalText,
            ),
            heightSpace(16),
            Wrap(
              runSpacing: 8,
              spacing: 8,
              children: List.generate(8, (index) => tagBox()),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                color: red10,
                width: 343,
                margin: const EdgeInsets.symmetric(vertical: 52),
                padding: const EdgeInsets.symmetric(vertical: 13),
                child: Center(
                  child: Text(
                    'Disconnect',
                    style: normalText.copyWith(
                      fontSize: 15,
                      color: redMain,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
