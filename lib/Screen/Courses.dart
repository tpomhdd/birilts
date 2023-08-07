import 'package:berlitz/Widget_main/Home_Widget/Container_Course.dart';
import 'package:flutter/material.dart';

import '../Client/Client.dart';
import '../Model/ActiveCourses.dart';
import '../Widget_Response/Courses_Detailes.dart';
import '../Widget_main/Course_Details.dart';
import '../Widget_main/Login_Widget/mytext.dart';
import '../Widget_main/buttom_bar.dart';
import '../Widget_main/courses_details/Contiainer_Lessons.dart';
import '../Widget_main/courses_details/Future_Course.dart';
import '../theme/colors.dart';

class Courses extends StatefulWidget {
  const Courses({Key? key}) : super(key: key);

  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  @override
  Widget build(BuildContext context) {
    setState(() {});
    return Scaffold(
      bottomNavigationBar: buttom_bar(
        indexx: 1,
      ),
      backgroundColor: DesignColors.gray,
      appBar: AppBar(
        title: MyText(
          color: DesignColors.black,
          text: 'Hello Test 44!',
          size: 18,
          fontWeight: FontWeight.w500,
        ),
        leading: Image.asset("assets/svgs/tt.png"),
        backgroundColor: DesignColors.gray,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MyText(
                color: DesignColors.primaryColor,
                text: 'Search on courser',
                size: 14),
          ),
          TextFormField(
            decoration: InputDecoration(
                icon: Icon(
              Icons.search_sharp,
              color: DesignColors.gray1,
            )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MyText(
              color: Colors.black,
              text: 'To open Courses',
              size: 18,
              fontWeight: FontWeight.w800,
            ),
          ),
          Course_Response()
        ],
      ),
    );
  }
}
