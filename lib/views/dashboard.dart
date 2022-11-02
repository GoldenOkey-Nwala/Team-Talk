import 'package:flutter/material.dart';
import 'package:team_talk/helpers/classes/bottom_bar_icon.dart';
import 'package:team_talk/helpers/constants/app_icons.dart';
import 'package:team_talk/helpers/constants/colors.dart';
import 'package:team_talk/views/content.dart';
import 'package:team_talk/views/messages.dart';
import 'package:team_talk/views/tasks.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedPage = 0;

  final List<Widget> _pages = const [
    Messages(),
    Content(),
    Tasks(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPage],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
        decoration: BoxDecoration(
          color: white,
          boxShadow: [
            BoxShadow(
              color: const Color(0xff000000).withOpacity(0.06),
              spreadRadius: 0,
              blurRadius: 10,
              offset: const Offset(0, -4), // changes position of shadow
            ),
          ],
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedPage,
          elevation: 0,
          onTap: (index) => setState(() => _selectedPage = index),
          backgroundColor: white,
          selectedItemColor: blueMain,
          unselectedItemColor: black,
          selectedIconTheme: const IconThemeData(
            color: blueMain,
          ),
          iconSize: 27,
          selectedFontSize: 15,
          unselectedFontSize: 13,
          // showUnselectedLabels: false,
          // showSelectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: BottomBarIcon(
                icon: AppIcons.message_text_square,
                color: _selectedPage == 0 ? blueMain : black,
              ),
              label: 'Messages',
            ),
            BottomNavigationBarItem(
              icon: BottomBarIcon(
                icon: AppIcons.play_circle,
                color: _selectedPage == 1 ? blueMain : black,
              ),
              label: 'Contents',
            ),
            BottomNavigationBarItem(
              icon: BottomBarIcon(
                icon: AppIcons.message_text_square,
                color: _selectedPage == 2 ? blueMain : black,
                count: true,
              ),
              label: 'Tasks',
            ),
          ],
        ),
      ),
    );
  }
}
