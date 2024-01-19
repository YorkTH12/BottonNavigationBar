import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  MyBottomNavigationBar({required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
        backgroundColor: Colors.black,
        color: Colors.white,
        activeColor: Colors.white,
        tabBackgroundColor: Colors.grey,
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Home',
            onPressed: () => Get.toNamed("/home"),
          ),
          GButton(
            icon: Icons.favorite_border,
            onPressed: () => Get.toNamed("/aboutMe"),
            text: 'About Me',
          ),
          GButton(
            icon: Icons.search,
            text: 'AboutGF',
            onPressed: () => Get.toNamed("/aboutGF"),
          ),
          GButton(
            icon: Icons.settings,
            text: 'Courses',
            onPressed: () => Get.toNamed("/courses"),
          ),
        ],
        selectedIndex: currentIndex,
        onTabChange: onTap,
      ),
    );
  }
}
