import 'package:button_navigation_bar/bottomnavigationbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About Me")),
      body: Container(
        child: Center(
            child: Column(
          children: [
            Text("Itthisak Sasirot"),
            Text("6 September 2003"),
            Text("Age 20"),
            Image.asset('lib/assets/images/Me.jpg'),
          ],
        )),
      ),
      bottomNavigationBar: MyBottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {

        },
      ),
    );
  }
}
