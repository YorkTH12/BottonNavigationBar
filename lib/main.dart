import 'package:button_navigation_bar/pages/about_gf.dart';
import 'package:button_navigation_bar/pages/about_me.dart';
import 'package:button_navigation_bar/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/home',
      getPages: [
        GetPage(name: "/home", page: () => const HomePage(), transition: Transition.zoom,),
        GetPage(name: "/aboutMe", page: () => const AboutMePage(), transition: Transition.fade),
        GetPage(name: "/aboutGF", page: () => const AboutGFPage(), transition: Transition.leftToRight),
      ],
    );
  }
}