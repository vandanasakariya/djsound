import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'my_behavior.dart';
import 'navigation/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: MyBehavior(),
          child: child!,
        );
      },
      initialBinding: AppBidding(),
      initialRoute: Routes.splashscreen,
      getPages: Routes.pages,
    );
  }
}

class AppBidding implements Bindings {
  @override
  void dependencies() {}
}
