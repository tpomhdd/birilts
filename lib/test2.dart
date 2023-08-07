import 'package:berlitz/Widget_main/courses_details/Contiainer_Lessons.dart';
import 'package:berlitz/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:berlitz/Client/Client.dart';

import 'Widget_main/Login_Widget/mytext.dart';
class test2 extends StatefulWidget {
  const test2({Key? key}) : super(key: key);

  @override
  State<test2> createState() => _test2State();
}

class _test2State extends State<test2> {
  @override
  Widget build(BuildContext context) {
//course_id
    return Scaffold(
      body:
      FutureBuilder(
      future:myClient.getToOpenCourse2(),

      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
      if (snapshot.hasData) {
      return
      ListView.builder(
      itemCount: snapshot.data.length,


    itemBuilder: (context, index) {
    int cor=0;
    cor++;
    for (var index = 0; index < snapshot.data.length; index++) {
      //print(index.toString());
      cor++;

    }
        return

    Column(
      children: [
        MyText(color: Colors.black,
            text: snapshot.data[index]['levels']
[index]

                .toString(), size: 20),

      ],
    );
    },);
    }
    else
    return CircularProgressIndicator();
    }



      ),
    );
  }
}
