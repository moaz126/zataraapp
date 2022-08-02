import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:zataraapp/signup/signup.dart';
import 'package:zataraapp/signup/signuptransition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // AuthController auth = Get.put(AuthController());
  // late VideoPlayerController vidController;

  // loadVideoPlayer(){
  //   vidController = VideoPlayerController.asset('assets/videos/splashImage.mp4');
  //   vidController.setLooping(true);
  //   vidController.initialize();
  //   vidController.play();
  // }

  double value = 0.99;
  String text = "Loading..";

  // @override
  // void dispose(){
  //   vidController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 10), () {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => signuptransition()),
          (Route<dynamic> route) => false);
    });
    return Scaffold(
      body: SizedBox(),
    );
  }
}
