import 'package:flutter/material.dart';

import '../../Client/Client.dart';
import '../../Model/ActiveCourses.dart';
import '../../theme/colors.dart';
import '../Course_Details.dart';
import '../Login_Widget/mytext.dart';
import '../myload.dart';
class Course_Response extends StatefulWidget {
  const Course_Response({Key? key}) : super(key: key);

  @override
  State<Course_Response> createState() => _Course_ResponseState();
}

class _Course_ResponseState extends State<Course_Response> {
  int selected=0;

  String start_dete='';
  String end_dete='';
  String Teacher='';

  String cost_book='';
  String cost_course='';
  String lessons='';

  List<ToOpenCourse>? posts;
  var isLoaded = false;

  getData() async {
    posts = await myClient().getToOpenCourse();
    if (posts != null) {
      print(posts?[0].levelId);
      setState(() {
        isLoaded = true;
      });
    }
    return posts;
  }

  @override
  Widget build(BuildContext context) {
    return     Column(
      children: [
        SizedBox(
            height: 75,
            child:FutureBuilder(
                future:getData(),

                builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                  if (snapshot.hasData) {
                    if(selected==0) {
                      start_dete = snapshot.data[0].startDate.toString();
                      end_dete = snapshot.data[0].endDate.toString();
                      Teacher = snapshot.data[0].teacher.toString();
                      cost_book = snapshot.data[0].teacher.toString();
                      cost_course = snapshot.data[0].courseCost.toString();

                      lessons = snapshot.data[0].lessonsNumber.toString();
                    }
                    else null;               return

                      ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: snapshot.data.length,
                        itemBuilder: (context, index) {
                          return
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: (){
                                  selected=index;


                                  start_dete= snapshot.data[index].startDate.toString();
                                  end_dete= snapshot.data[index].endDate.toString();
                                  Teacher= snapshot.data[index].teacher.toString();
                                  cost_book= snapshot.data[index].teacher.toString();
                                  cost_course= snapshot.data[index].courseCost.toString();

                                  lessons= snapshot.data[index].lessonsNumber.toString();

                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 120,

                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: MyText(text:  snapshot.data[index].cid.toString(),size: 16,color: DesignColors.black,fontWeight: FontWeight.w500,),




                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color:selected==index? DesignColors.yellow2:DesignColors.white,

                                      border: Border.all(color: selected==index? DesignColors.white:DesignColors.yellow3,width: 2)
                                  ),

                                ),
                              ),
                            );


                        },);
                  }
                  else
                    return myloading();
                })),
        ExpansionTile(
          title: MyText(color: DesignColors.primaryColor, text: 'Starter', size: 25,fontWeight: FontWeight.w500,),
          children: <Widget>[
            Course_Details(start_dete: start_dete, end_dete: end_dete, Teacher: Teacher, cost_book: cost_book, cost_course: cost_course, lessons: lessons),
          ],
        ),
      ],
    );
  }
}
