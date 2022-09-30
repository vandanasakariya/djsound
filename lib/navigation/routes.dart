
import 'package:get/get.dart';

import '../home_screen/home_page.dart';
import '../home_screen/play_screen/flute_play_screen.dart';
import '../splash_screen/splash_screen.dart';

mixin Routes {
  static const defaultTransition = Transition.rightToLeft;
  static const splashscreen = "/splashscreen";
  static const playScreen = "/PlayScreen";
  static const homePage = "/HomePage";

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
      name: homePage,
      page: () => HomePage(),
      transition: defaultTransition,
    ),

  ];
}
