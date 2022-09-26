import 'package:djapp/play_screen/recod_page.dart';
import 'package:flutter/cupertino.dart';

import 'package:get/get.dart';

import '../play_screen/play_screen.dart';
import '../splash_screen/splash_screen.dart';

mixin Routes {
  static const defaultTransition = Transition.rightToLeft;
  static const splashscreen = "/splashscreen";
  static const playScreen = "/PlayScreen";
  static const recodpage = "/RecodPage";

  static List<GetPage<dynamic>> pages = [
    GetPage<dynamic>(
      name: splashscreen,
      page: () => SplashScreen(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: playScreen,
      page: () => PlayScreen(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: recodpage,
      page: () => RecodPage(),
      transition: defaultTransition,
    ),
  ];
}
