import 'dart:io';

import 'package:djapp/navigation/navigation.dart';
import 'package:djapp/navigation/routes.dart';
import 'package:djapp/play_screen/play_controller.dart';
import 'package:djapp/theme/app_color.dart';
import 'package:djapp/theme/app_image.dart';
import 'package:djapp/theme/app_string.dart';
import 'package:djapp/utils/size_utils.dart';
import 'package:djapp/widget/App_Text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PlayScreen extends StatefulWidget {
  const PlayScreen({Key? key}) : super(key: key);

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  final PlayController playController = Get.put(PlayController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: () {
          exit(0);
        },
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(
                vertical: SizeUtils.verticalBlockSize * 1,
                horizontal: SizeUtils.horizontalBlockSize * 1),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AppText(
                      text: AppString.dubstepClub,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      /* horizontal: SizeUtils.horizontalBlockSize * 2,*/
                      vertical: SizeUtils.verticalBlockSize * 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Image.asset(AppImage.loading,
                              height: SizeUtils.horizontalBlockSize * 5),
                          AppText(
                            text: AppString.bpm,
                            fontSize: SizeUtils.fSize_10(),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigation.pushNamed(Routes.recodpage);
                          print("tap");
                        },
                        child: Column(
                          children: [
                            Image.asset(AppImage.recoding,
                                height: SizeUtils.horizontalBlockSize * 5),
                            AppText(
                              text: AppString.record,
                              fontSize: SizeUtils.fSize_10(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      audioButton(
                        onTap: (a) {
                          print("c1");
                        },
                        border: playController.isChange.value == 1
                            ? Border.all(color: Colors.white)
                            : Border.all(color: Colors.transparent),
                        color: playController.isChange.value == 1
                            ? Colors.white54
                            : AppColor.inButton,
                      ),
                      audioButton(
                        onTap: (a) {
                          print("c2");
                        },
                        border: playController.isChange.value == 2
                            ? Border.all(color: Colors.white)
                            : Border.all(color: Colors.transparent),
                        color: playController.isChange.value == 2
                            ? Colors.white54
                            : AppColor.inButton,
                      ),
                      audioButton(
                        onTap: (a) {
                          print("c3");
                        },
                        border: playController.isChange.value == 3
                            ? Border.all(color: Colors.white)
                            : Border.all(color: Colors.transparent),
                        color: playController.isChange.value == 3
                            ? Colors.white54
                            : AppColor.inButton,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: SizeUtils.verticalBlockSize * 1,
                ),
                Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      audioButton(
                        onTap: (a) {
                          print("c4");
                        },
                        // border: ,
                        border: playController.isChange.value == 4
                            ? Border.all(color: Colors.white)
                            : Border.all(color: Colors.transparent),
                        color: playController.isChange.value == 4
                            ? Colors.white54
                            : AppColor.bsButton,
                      ),
                      audioButton(
                        onTap: (a) {
                          print("c5");
                        },
                        border: playController.isChange.value == 5
                            ? Border.all(color: Colors.white)
                            : Border.all(color: Colors.transparent),
                        color: playController.isChange.value == 5
                            ? Colors.white54
                            : AppColor.bsButton,
                      ),
                      audioButton(
                        onTap: (a) {
                          print("c6");
                        },
                        border: playController.isChange.value == 6
                            ? Border.all(color: Colors.white)
                            : Border.all(color: Colors.transparent),
                        color: playController.isChange.value == 6
                            ? Colors.white54
                            : AppColor.bsButton,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: SizeUtils.verticalBlockSize * 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    audioButton(
                      onTap: (a) {
                        print("c7");
                      },
                      border: playController.isChange.value == 7
                          ? Border.all(color: Colors.white)
                          : Border.all(color: Colors.transparent),
                      color: playController.isChange.value == 7
                          ? Colors.white54
                          : AppColor.drButton,
                    ),
                    audioButton(
                      onTap: (a) {
                        print("c8");
                      },
                      border: playController.isChange.value == 8
                          ? Border.all(color: Colors.white)
                          : Border.all(color: Colors.transparent),
                      color: playController.isChange.value == 8
                          ? Colors.white54
                          : AppColor.drButton,
                    ),
                    audioButton(
                      onTap: (a) {
                        print("c9");
                      },
                      border: playController.isChange.value == 9
                          ? Border.all(color: Colors.white)
                          : Border.all(color: Colors.transparent),
                      color: playController.isChange.value == 9
                          ? Colors.white54
                          : AppColor.drButton,
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeUtils.verticalBlockSize * 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    audioButton(
                      onTap: (a) {
                        print("c10");
                      },
                      border: playController.isChange.value == 10
                          ? Border.all(color: Colors.white)
                          : Border.all(color: Colors.transparent),
                      color: playController.isChange.value == 10
                          ? Colors.white54
                          : AppColor.inButton,
                    ),
                    audioButton(
                      onTap: (a) {
                        print("c11");
                      },
                      border: playController.isChange.value == 11
                          ? Border.all(color: Colors.white)
                          : Border.all(color: Colors.transparent),
                      color: playController.isChange.value == 11
                          ? Colors.white54
                          : AppColor.inButton,
                    ),
                    audioButton(
                      onTap: (a) {
                        print("c12");
                      },
                      border: playController.isChange.value == 12
                          ? Border.all(color: Colors.white)
                          : Border.all(color: Colors.transparent),
                      color: playController.isChange.value == 12
                          ? Colors.white54
                          : AppColor.inButton,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  audioButton({
    GestureTapDownCallback? onTap,
    final Color? color,
    final BoxBorder? border,
  }) {
    return GestureDetector(
      onTapDown: onTap,
      child: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: color,
              border: border,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: SizeUtils.verticalBlockSize * 5.3,
                horizontal: SizeUtils.horizontalBlockSize * 15,
              ),
              child: Text(""),
            ),
          ),
          Positioned(
            top: SizeUtils.verticalBlockSize * 5.3,
            bottom: SizeUtils.horizontalBlockSize * 13,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 45,
                    spreadRadius: 13,
                    color: Colors.white,
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeUtils.horizontalBlockSize * 2),
                child: Text(""),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
