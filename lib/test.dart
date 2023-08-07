

import 'package:berlitz/Client/Client.dart';
import 'package:berlitz/Model/ActiveCourses.dart';
import 'package:berlitz/Model/Notifications.dart';
import 'package:berlitz/Widget_main/Login_Widget/mytext.dart';
import 'package:berlitz/data.dart';
import 'package:flutter/material.dart';

import 'Model/Couress.dart';

import 'Widget_main/Home_Widget/Container_Course_Open.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  List<ToOpenCourse>? Course_Past_List;
  var isLoaded = false;

  getData() async {
    Course_Past_List = await myClient().getToOpenCourse();


    return Course_Past_List;

  }

  @override
  void initState(){

    super.initState();



  }





  @override
  Widget build(BuildContext context) {

   // Lessons course=new Lessons();
 //Lessons(from: )
    return Scaffold(
      body: FutureBuilder(
          future:getData(),

          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.hasData) {
              return

                ListView.builder(
                  itemCount: snapshot.data.length.compareTo(0),


                  itemBuilder: (context, index) {
                    return
                        MyText(color: Colors.black, text: snapshot.data[index].id.toString(), size: 20);
                  },);
            }
            else
              return CircularProgressIndicator();
          })

      ,
    );
  }
}