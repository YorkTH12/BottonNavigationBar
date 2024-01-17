import 'package:flutter/material.dart';

class AboutGFPage extends StatelessWidget {
  const AboutGFPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About GF Page")),
      body: Container(
  child: Center(
    child: Column(
      children: [
        Text("Pairwaporn Panwichai"),
        Text("9 December 2000"),
        Text("Age 23"),
        Image.asset('lib/assets/images/GF.jpg',fit: BoxFit.cover,width: 200,height: 200,),
      ],
    ),
  ),
),
    );
  }
}