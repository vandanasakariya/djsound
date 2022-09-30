import 'dart:async';

import 'package:djapp/navigation/navigation.dart';
import 'package:djapp/navigation/routes.dart';
import 'package:djapp/theme/app_image.dart';
import 'package:djapp/utils/size_utils.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimeOut();
  }

  @override
  Widget build(BuildContext context) {
    SizeUtils().init(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(AppImage.splash),
            ),
          ],
        ),
      ),
    );
  }

  void startTimeOut() {
    Timer(Duration(seconds: 3), () {
      Navigation.pushNamed(Routes.homePage);
     // print("playscreen");
    });
  }
}
