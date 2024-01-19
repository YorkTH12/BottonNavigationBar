import 'dart:convert';

import 'package:button_navigation_bar/bottomnavigationbar.dart';
import 'package:button_navigation_bar/course.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  List<Course> courses = [];

  Future<void> fetchCourses() async {
    try {
      var url = "https://api.codingthailand.com/api/course";
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body)['data'] as List;
        courses =
            data.map((courseData) => Course.fromJson(courseData)).toList();
        setState(() {});
      } else {
        print("Error : $response.statusCode");
      }
    } catch (e) {
      print("Error $e");
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchCourses();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Courses")),
        body: ListView.separated(
          separatorBuilder: (context, index) => const Divider(),
          itemCount: courses.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(courses[index].title),
            subtitle: Text(courses[index].detail),
            leading: ConstrainedBox(
              constraints: const BoxConstraints(
                  maxHeight: 80, minHeight: 80, maxWidth: 80, minWidth: 80),
              child: Image.network(
                courses[index].picture,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        bottomNavigationBar: MyBottomNavigationBar(
          currentIndex: 0,
          onTap: (index) {},
        ));
  }
}
