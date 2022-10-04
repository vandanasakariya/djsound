import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ad_manager/ad_controller.dart';
import 'ad_manager/app_lifecycle_reactor.dart';
import 'ad_manager/app_open_ad_manager.dart';
import 'my_behavior.dart';
import 'navigation/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  late AppLifecycleReactor _appLifecycleReactor;

  @override
  void initState() {
    super.initState();
    AppOpenAdManager appOpenAdManager = AppOpenAdManager()..loadAd();
    _appLifecycleReactor =
        AppLifecycleReactor(appOpenAdManager: appOpenAdManager);
    _appLifecycleReactor.listenToAppStateChanges();
    print("r");
  }
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
  void dependencies() { Get.put(AdController());}
}
