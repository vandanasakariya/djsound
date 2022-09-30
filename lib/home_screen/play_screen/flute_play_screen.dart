import 'dart:io';

import 'package:djapp/home_screen/play_screen/play_controller.dart';
import 'package:djapp/navigation/navigation.dart';
import 'package:djapp/navigation/routes.dart';
import 'package:djapp/theme/app_color.dart';
import 'package:djapp/theme/app_image.dart';
import 'package:djapp/theme/app_string.dart';
import 'package:djapp/utils/size_utils.dart';
import 'package:djapp/widget/App_Text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';

class PlayScreen extends StatefulWidget {
  const PlayScreen({Key? key}) : super(key: key);

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> with WidgetsBindingObserver {
  final PlayController playController = Get.put(PlayController());

  final firstAudio = AudioPlayer();
  final secondAudio = AudioPlayer();
  final thirdAudio = AudioPlayer();
  final fourAudio = AudioPlayer();
  final fiveAudio = AudioPlayer();
  final sixAudio = AudioPlayer();
  final sevenAudio = AudioPlayer();
  final eightAudio = AudioPlayer();
  final nineAudio = AudioPlayer();
  final tenAudio = AudioPlayer();
  final elevenAudio = AudioPlayer();
  final twelveAudio = AudioPlayer();

  @override
  void initState() {
    super.initState();
    first();
    second();
    third();
    four();
    five();
    six();
    seven();
    eight();
    nine();
    ten();
    eleven();
    twelve();
  }

  @override
  void dispose() {
    // audioplayer
    // player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
              vertical: SizeUtils.verticalBlockSize * 1,
              horizontal: SizeUtils.horizontalBlockSize * 1),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeUtils.verticalBlockSize * 2,
                    vertical: SizeUtils.horizontalBlockSize * 5),
                child: Row(
                  //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {Navigation.pop();},
                      icon: Icon(Icons.arrow_back),
                    ),
                    SizedBox(width: SizeUtils.horizontalBlockSize*17,),
                    AppText(
                      text: AppString.dubstepClub,
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
                        firstAudio.play();
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
                        secondAudio.play();
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
                        thirdAudio.play();
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
                        fourAudio.play();
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
                        fiveAudio.play();
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
                        sixAudio.play();
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
                      sevenAudio.play();
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
                      eightAudio.play();
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
                      nineAudio.play();
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
                      tenAudio.play();
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
                      elevenAudio.play();
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
                      twelveAudio.play();
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

  void first() {
    firstAudio.playerStateStream.listen((state) {
      switch (state.processingState) {
        case ProcessingState.completed:
          firstAudio.seek(Duration.zero);
          firstAudio.stop();
      }
    });
    firstAudio.setAsset("asset/audios/a1.mp3");
  }

  void second() {
    secondAudio.playerStateStream.listen((state) {
      switch (state.processingState) {
        case ProcessingState.completed:
          secondAudio.seek(Duration.zero);
          secondAudio.stop();
      }
    });
    secondAudio.setAsset("asset/audios/audio2.wav");
  }

  void third() {
    thirdAudio.playerStateStream.listen((state) {
      switch (state.processingState) {
        case ProcessingState.completed:
          thirdAudio.seek(Duration.zero);
          thirdAudio.stop();
      }
    });
    thirdAudio.setAsset("asset/audios/audio3.wav");
  }

  void four() {
    fourAudio.playerStateStream.listen((state) {
      switch (state.processingState) {
        case ProcessingState.completed:
          fourAudio.seek(Duration.zero);
          fourAudio.stop();
      }
    });
    fourAudio.setAsset("asset/audios/audio4.wav");
  }

  void five() {
    fiveAudio.playerStateStream.listen((state) {
      switch (state.processingState) {
        case ProcessingState.completed:
          fiveAudio.seek(Duration.zero);
          fiveAudio.stop();
          print("cfdtf");
      }
    });
    fiveAudio.setAsset("asset/audios/audio5.wav");
  }

  void six() {
    sixAudio.playerStateStream.listen((state) {
      switch (state.processingState) {
        case ProcessingState.completed:
          sixAudio.seek(Duration.zero);
          sixAudio.stop();
      }
    });
    sixAudio.setAsset("asset/audios/audio6.wav");
  }

  void seven() {
    sevenAudio.playerStateStream.listen((state) {
      switch (state.processingState) {
        case ProcessingState.completed:
          sevenAudio.seek(Duration.zero);
          sevenAudio.stop();
      }
    });
    sevenAudio.setAsset("asset/audios/audio7.wav");
  }

  void eight() {
    eightAudio.playerStateStream.listen((state) {
      switch (state.processingState) {
        case ProcessingState.completed:
          eightAudio.seek(Duration.zero);
          eightAudio.stop();
      }
    });
    eightAudio.setAsset("asset/audios/audio8.wav");
  }

  void nine() {
    nineAudio.playerStateStream.listen((state) {
      switch (state.processingState) {
        case ProcessingState.completed:
          nineAudio.seek(Duration.zero);
          nineAudio.stop();
      }
    });
    nineAudio.setAsset("asset/audios/audio9.mp3");
  }

  void ten() {
    tenAudio.playerStateStream.listen((state) {
      switch (state.processingState) {
        case ProcessingState.completed:
          tenAudio.seek(Duration.zero);
          tenAudio.stop();
      }
    });
    tenAudio.setAsset("asset/audios/audio10.mp3");
  }

  void eleven() {
    elevenAudio.playerStateStream.listen((state) {
      switch (state.processingState) {
        case ProcessingState.completed:
          elevenAudio.seek(Duration.zero);
          elevenAudio.stop();
      }
    });
    elevenAudio.setAsset("asset/audios/audio11.mp3");
  }

  void twelve() {
    twelveAudio.playerStateStream.listen((state) {
      switch (state.processingState) {
        case ProcessingState.completed:
          twelveAudio.seek(Duration.zero);
          twelveAudio.stop();
      }
    });
    twelveAudio.setAsset("asset/audios/audio12.mp3");
  }
}