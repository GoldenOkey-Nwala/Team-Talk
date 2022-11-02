import 'package:flutter/material.dart';
import 'package:team_talk/helpers/constants/app_icons.dart';
import 'package:team_talk/helpers/constants/colors.dart';
import 'package:team_talk/helpers/constants/spacer.dart';

class BottomBarIcon extends StatelessWidget {
  const BottomBarIcon({
    super.key,
    required this.icon,
    required this.color,
    this.count = false,
  });
  final String icon;
  final Color color;
  final bool count;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            AppIcon(
              icon,
              color: color,
            ),
            count
                ? Positioned(
                    right: 0,
                    child: Container(
                      width: 14,
                      height: 12,
                      decoration: const BoxDecoration(
                        color: redMain,
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Text(
                          '2',
                          style: TextStyle(
                            fontSize: 8,
                            color: white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  )
                : const SizedBox()
          ],
        ),
        heightSpace(5),
      ],
    );
  }
}
