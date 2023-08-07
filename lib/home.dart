// import 'package:berlitz/Client/Client.dart';
// import 'package:berlitz/Widget_main/Login_Widget/mytext.dart';
// import 'package:berlitz/data.dart';
// import 'package:flutter/material.dart';
//
//
//
// class HomePage2 extends StatefulWidget {
//   const HomePage2({Key? key}) : super(key: key);
//
//   @override
//   _HomePage2State createState() => _HomePage2State();
// }
//
// class _HomePage2State extends State<HomePage2> {
//   List<ToOpenCourses>? posts;
//
//   var isLoaded = false;
//
//   @override
//   void initState() {
//     super.initState();
//
//     //fetch data from API
//     getData();
//   }
//
//   getData() async {
//     posts = await myClient().getToOpenCourse() as List<ToOpenCourses>?;
//     if (posts != null) {
//       setState(() {
//         isLoaded = true;
//       });
//     }
//     return posts;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Posts'),
//       ),
//       body: Visibility(
//         visible: isLoaded,
//         child: ListView.builder(
//           itemCount: posts?.length,
//           itemBuilder: (context, index) {
//             return Container(
//                 padding: const EdgeInsets.all(16),
//                 child: MyText(
//                     color: Colors.black,
//                     text: posts![index].courseName.toString(),
//                     size: 33));
//           },
//         ),
//         replacement: const Center(
//           child: CircularProgressIndicator(),
//         ),
//       ),
//     );
//   }
// }
