import 'package:berlitz/Model/ActiveCourses.dart';
import 'package:berlitz/Model/Notifications.dart';
import 'package:berlitz/Screen/Login.dart';
import 'package:berlitz/theme/colors.dart';

//import 'package:fluttertoast/fluttertoast.dart';
import 'dart:convert';

import 'package:flutter/material.dart';

//import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

import '../Model/Couress.dart';

import '../Model/Lessons.dart';
import '../Screen/HomeScreen.dart';
import '../test.dart';
import '../test2.dart';

class myClient {
  static  saveperf(String username)async  {

    SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
    sharedPreferences.setString("username", username);
    print(sharedPreferences.get("username"));

  }

  static Future LogOut() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.remove('username');
Get.to(Login_Screen());

    //print(sharedPreferences.get(sharedname));
  }

  static Future Save_Preferences(String val, String sharedname) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
   String username= sharedPreferences.setString(sharedname, val).toString() ;
   print('USER='+username);
   return username;

    //print(sharedPreferences.get(sharedname));
  }

  Future getperf<String>(String sharedname) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var username = preferences.getString(sharedname.toString());

    print('username'+username.toString());

    return username;
  }


  Future<List<myNotifications>?> getmyNotifications() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String token = preferences.getString('token').toString();
    var headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${token}'
    };
    Uri uri = Uri.parse("https://berlitz.8byteslab.com/api/getNotifications");
    var client = http.Client();

    var response = await client.get(uri, headers: headers);
    String jsonsDataString = response.body;
    var data = jsonDecode(jsonsDataString);

    List<myNotifications> listmyNotifications = [];
    for (var index = -1; index < data['data'].length - 1;) {
      index++;

      var da = data['data'];

      listmyNotifications.add(myNotifications.fromJson(da[index]));

    }


    return listmyNotifications;
  }

  static Future Listlessons() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String token = preferences.getString('token').toString();
    var headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${token}'
    };
    Uri uri = Uri.parse("https://berlitz.8byteslab.com/api/userInfo");
    var client = http.Client();

    var response = await client.get(uri, headers: headers);
    String jsonsDataString = response.body;
    var data = jsonDecode(jsonsDataString);
    //Course.fromJson(jsonDecode(data));
    return data['data']['active_courses'][0]['lessons'];
  }



  Future<List<Course>?> getPast_Course() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String token = preferences.getString('token').toString();
    var headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${token}'
    };
    Uri uri = Uri.parse("https://berlitz.8byteslab.com/api/userInfo");
    var client = http.Client();

    var response = await client.get(uri, headers: headers);
    String jsonsDataString = response.body;
    var data = jsonDecode(jsonsDataString);

    List<Course> listCourse = [];
    for (var index = 0; index < data['data']['past_courses'].length;) {
      index++;

      var da = data['data']['past_courses'][index - 1];
      listCourse.add(Course.fromJson(da));

  }

    return listCourse;
  }

  Future<List<Course>?> getCourse() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String token = preferences.getString('token').toString();
    var headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${token}'
    };
    Uri uri = Uri.parse("https://berlitz.8byteslab.com/api/userInfo");
    var client = http.Client();

    var response = await client.get(uri, headers: headers);
    String jsonsDataString = response.body;
    var data = jsonDecode(jsonsDataString);

    List<Course> listCourse = [];
    for (var index = -1; index < data['data']['active_courses'].length-1;    index++) {

    //  print("objectxxxxx="+(data['data']['active_courses'].length).toString());

  //    print('index='+index.toString());
      //print('data.length='+data['data']['active_courses'].length.toString());

      var da = data['data']['active_courses'][index];
//      print(da.toString());
      listCourse.add(Course.fromJson(da));
//  //print("MYDART=" + da.toString());
    }

    return listCourse;
  }

  Future<List<ToOpenCourse>?> getToOpenCourse() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String token = preferences.getString('token').toString();
    var headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${token}'
    };
    Uri uri = Uri.parse("https://berlitz.8byteslab.com/api/courses/newCourses");
    var client = http.Client();

    List<ToOpenCourse> list = [];

    var response = await client.get(uri, headers: headers);
    if (response.statusCode == 200) {
      String jsonsDataString = response.body;

      var data = jsonDecode(jsonsDataString)['data'];
      //print("---------="+response.body.toString());
/////print(data.toString());
      for (var index = -1; index
          < data[index]['levels'][index]['to_open_courses'].length; ) {

 index++;
 print(index.toString());

print(":"+data[index]['levels'][index]['to_open_courses'].length.toString());
        var da = data[index]['levels'][index]['to_open_courses'][0];
      print("OP="+da['id'].toString());
        list.add(ToOpenCourse.fromJson(da));
        return list;
      }

 //     print("MYDART l=" + list.length.toString());
    }
  }



 static Future getToOpenCourse2() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String token = preferences.getString('token').toString();
    var headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${token}'
    };
    Uri uri = Uri.parse("https://berlitz.8byteslab.com/api/courses/newCourses");
    var client = http.Client();

    List<ToOpenCourse> list = [];

    var response = await client.get(uri, headers: headers);
    if (response.statusCode == 200) {
      String jsonsDataString = response.body;

      var data = jsonDecode(jsonsDataString)['data'];

      return data;
    }
  }

  static Future getuser() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String token = preferences.getString('token').toString();
    var headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${token}'
    };
    Uri uri = Uri.parse("https://berlitz.8byteslab.com/api/userInfo");
    var client = http.Client();

    var response = await client.get(uri, headers: headers);
    String jsonsDataString = response.body;
    var data = jsonDecode(jsonsDataString);

//print(data);
    return data['data'];
  }


  static   Cheak_Login(String prefname) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String token = preferences.getString(prefname).toString();
print("object="+token);
    if (token!='null') {


      Get.to((HomeScreen()));
      print("nullok");
    } else {
    }
  }
  Future<List<Lessons>?> getLessons() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String token = preferences.getString('token').toString();
    var headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${token}'
    };
    Uri uri = Uri.parse("https://berlitz.8byteslab.com/api/userInfo");
    var client = http.Client();

    var response = await client.get(uri, headers: headers);
    String jsonsDataString = response.body;
    var data = jsonDecode(jsonsDataString);

    List<Lessons> listCourse = [];
    for (var index = 0; index < data.length;) {
      index++;
      //print('index='+index.toString());

      var da = data['data']['active_courses'][0]['lessons'];
      print(da['id'].toString());
      listCourse.add(Lessons.fromJson(da));
      //print("MYDART=" + da.toString());
    }

    return listCourse;
  }


  static Login(String username, String password,BuildContext context) async {
    var response;
    var result;

    var data = {"email": username, "password": password};
    // url = "https://tpowep.com/storepanal/storepanal/loginmhd.php";
    Uri uri = Uri.parse("https://berlitz.8byteslab.com/api/login");

    var reesponse = await http.post(uri, body: data);
    result = jsonDecode(reesponse.body);
    //ed=responsebody;
    //print(result['status']);
//    //print(result['data']['user']["active_courses"]);

    if (result['status'] == true) {
      Save_Preferences(result['data']['token'], "token");
      Save_Preferences(result['data']['user']['first_name']+" "+result['data']['user']['last_name'], "user");
saveperf(username);
      Get.to(HomeScreen());

      //      Get.to(HomePage());
    } else {
      final snackBar = SnackBar(
        backgroundColor: Colors.red,
        content: const Text('التسجيل خاطئ'),

      );

      // Find the ScaffoldMessenger in the widget tree
      // and use it to show a SnackBar.
      ScaffoldMessenger.of(context).showSnackBar(snackBar);

    }


  }

  static void mytoast(String text) {
    // Fluttertoast.showToast(msg:text,
    //
    //     toastLength:
    //     Toast.LENGTH_SHORT,
    //     //gravity: ToastGravity.CENTER,
    //     timeInSecForIosWeb: 1,
    //
    //     backgroundColor: DesignColors.primaryColor,
    //     textColor: DesignColors.white,
    //
    //     fontSize: 16.0
    // );
  }
}
