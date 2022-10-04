import 'dart:developer';
import 'dart:ffi';
import 'dart:io';

import 'package:djapp/ad_manager/banner_ad.dart';
import 'package:djapp/home_screen/play_screen/flute_play_screen.dart';
import 'package:djapp/home_screen/play_screen/play_controller.dart';
import 'package:djapp/navigation/navigation.dart';
import 'package:djapp/navigation/routes.dart';
import 'package:djapp/theme/app_string.dart';
import 'package:djapp/utils/size_utils.dart';
import 'package:djapp/widget/App_Text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../ad_manager/ad_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

late final List<String> listArts;

class _HomePageState extends State<HomePage> {
  final PlayController playController = Get.put(PlayController());
  final AdController adController = Get.find();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: () {
          exit(0);
        },
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Obx(
            () => PageView.builder(
              controller: playController.pageController,
              itemCount: playController.img.length,
              scrollDirection: Axis.horizontal,
              onPageChanged: (value) {
                playController.pageSelect.value = value;
              },
              itemBuilder: (BuildContext context, int index) {
                playController.img.value[index];
                return GestureDetector(
                  onTap: () {
                    Navigation.pushNamed(
                      Routes.playScreen,
                      arg: {
                        "audio": playController.img.value[index]["audiofile"],
                      },
                    );
                    print(
                        "play${playController.img.value[index]["audiofile"]}");
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: SizeUtils.verticalBlockSize * 6),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                              playController.img.value[index]["img"],
                              height: SizeUtils.verticalBlockSize * 34,
                              fit: BoxFit.fill),
                        ),
                      ),
                      SizedBox(
                        height: SizeUtils.horizontalBlockSize * 5,
                      ),
                      _buildStepIndicator(),
                      SizedBox(
                        height: SizeUtils.horizontalBlockSize * 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              alignment: Alignment.center,
                              width: SizeUtils.verticalBlockSize * 10,
                              height: SizeUtils.horizontalBlockSize * 8,
                              child: AppText(
                                text: AppString.share,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              alignment: Alignment.center,
                              width: SizeUtils.verticalBlockSize * 10,
                              height: SizeUtils.horizontalBlockSize * 8,
                              child: AppText(
                                text: AppString.rate,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: SizeUtils.horizontalBlockSize * 5,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildStepIndicator() {
    return SmoothPageIndicator(
      controller: playController.pageController,
      count: 3,
      axisDirection: Axis.horizontal,
      effect: SlideEffect(
          spacing: 3,
          dotHeight: SizeUtils.horizontalBlockSize * 1.6,
          paintStyle: PaintingStyle.fill,
          dotColor: Colors.grey,
          activeDotColor: Colors.green),
    );
  }
}
