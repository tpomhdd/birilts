import 'package:berlitz/Widget_main/MyImg.dart';
import 'package:flutter/material.dart';
class myloading extends StatelessWidget {
  const myloading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyImg(width: 55, height: 55, url: 'assets/load.gif');

  }
}
