import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:team_talk/helpers/constants/colors.dart';
import 'package:team_talk/views/dashboard.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const TeamTalk());
}

class TeamTalk extends StatelessWidget {
  const TeamTalk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Team Talk",
      theme: ThemeData(
        fontFamily: 'Inter',
        scaffoldBackgroundColor: white,
      ),
      debugShowCheckedModeBanner: false,
      home: const Dashboard(),
    );
  }
}
