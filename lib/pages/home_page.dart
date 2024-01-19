// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: Container(
//         child: GNav(
//           backgroundColor: Colors.black,
//           color: Colors.white,
//           activeColor: Colors.white,
//           tabBackgroundColor: Colors.grey,
//           tabs: [
//             GButton(
//               icon: Icons.home,
//               text: 'Home',
//               onPressed: () => Get.toNamed("/home"),
//             ),
//             GButton(
//               icon: Icons.favorite_border,
//               onPressed: () => Get.toNamed("/aboutMe"),
//               text: 'About Me',
//             ),
//             GButton(
//               icon: Icons.search,
//               text: 'AboutGF',
//               onPressed: () => Get.toNamed("/aboutGF"),
//             ),
//             GButton(
//               icon: Icons.settings,
//               text: 'Courses',
//               onPressed: () => Get.toNamed("/courses"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:button_navigation_bar/bottomnavigationbar.dart';
import 'package:flutter/material.dart';
 // นำเข้า Widget

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Text('This is the Home page.'),
      ),
      bottomNavigationBar: MyBottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {

        },
      ),
    );
  }
}

