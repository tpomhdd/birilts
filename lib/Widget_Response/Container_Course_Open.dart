import 'package:berlitz/Client/Client.dart';
import 'package:berlitz/Model/ActiveCourses.dart';
import 'package:berlitz/Widget_main/Home_Widget/Container_Course_Open.dart';
import 'package:berlitz/Widget_main/Login_Widget/mytext.dart';
import 'package:flutter/material.dart';

import '../Widget_main/myload.dart';

class Course_Open_Server extends StatefulWidget {
  const Course_Open_Server({Key? key}) : super(key: key);

  @override
  _Course_Open_ServerState createState() => _Course_Open_ServerState();
}

class _Course_Open_ServerState extends State<Course_Open_Server> {
  List<ToOpenCourse>? posts;
  var isLoaded = false;

  getData() async {
    posts = await myClient().getToOpenCourse();
    if (posts != null) {
      setState(() {
        isLoaded = true;
      });
    }
    return posts;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
//ToOpenCourse toOpenCourse=new ToOpenCourse(id: id,
// ageGroupId: ageGroupId, cid: cid, levelId: levelId, studentNumber: studentNumber,
// studentNumberV: studentNumberV, lessonsNumber: lessonsNumber,
// lessonsNumberV: lessonsNumberV, courseCost: courseCost,
// bookCost: bookCost, costV: costV, startDate: , endDate: endDate,
// endDateV: endDateV, visible: visible, createdAt: createdAt,
// updatedAt: updatedAt, teacher: teacher, description: description, lessons: lessons)
    return FutureBuilder(
        future: getData(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.hasData) {

            return snapshot.data.toString() == '[]'
                ? MyText(
                    color: Colors.black,
                    text: 'you don`t have to open coures',
                    size: 12)
                : ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      return

                      //   Container_Open_Course(
                      //   start_dete: snapshot.data[index].startDate.toString(),
                      //   end_dete: snapshot.data[index].endDate.toString(),
                      //   Teacher: snapshot.data[index].teacher.toString(),
                      //   cost_book: snapshot.data[index].teacher.toString(),
                      //   cost_course: snapshot.data[index].courseCost.toString(),
                      //   lang: snapshot.data[index].cid.toString(),
                      //   level: snapshot.data[index].levelId.toString(),
                      //   lessons: snapshot.data[index].lessonsNumber.toString(),
                      //   details: snapshot.data[index].description.toString(),
                      // );
MyText(color: Colors.black, text:snapshot.data.toString(), size: 22);
                    //  details: snapshot.data[index].description.toString(),

                    },
                  );
          } else
            return  myloading();
        });
  }
}
