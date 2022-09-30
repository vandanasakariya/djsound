import 'dart:developer';
import 'dart:io';

import 'package:djapp/home_screen/play_screen/flute_play_screen.dart';
import 'package:djapp/home_screen/play_screen/play_controller.dart';
import 'package:djapp/navigation/navigation.dart';
import 'package:djapp/navigation/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

late final List<String> listArts;

class _HomePageState extends State<HomePage> {
  final PlayController playController = Get.put(PlayController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: () {
          exit(0);
        },
        child: Scaffold(
          body: PageView.builder(
            itemCount: playController.img.length,
            scrollDirection: Axis.horizontal,
            reverse: false,
            itemBuilder: (BuildContext context, int index) {
              playController.img.value[index];
              return GestureDetector(
                onTap: () {
                  Navigation.pushNamed(Routes.playScreen, arg: {
                    "audio": playController.img.value[index]["audiofile"],
                  });
                  print("play${playController.img.value[index]["audiofile"]}");
                },
                child: Container(
                  child: Image.asset(playController.img.value[index]["img"],
                      fit: BoxFit.fill),
                ),
              );
              /* Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.0),
                child: Container(
                  child: Image.asset(AppImage.flute),
                ),
              );*/
            },
          ),
        ),
      ),
    );
  }
}
