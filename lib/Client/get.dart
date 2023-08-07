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
import '../Model/User.dart';
import '../Screen/HomeScreen.dart';
import '../test.dart';
import '../test2.dart';


class myget{
  Future<List<MyUser>?> getUser() async {
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
var da=data['data'];
print(da.toString());
    List<MyUser> listMyUser = [];
    listMyUser.add(MyUser.fromJson(da));


    return listMyUser;
  }

}