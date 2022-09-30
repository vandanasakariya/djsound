import 'package:get/get.dart';

import '../../theme/app_image.dart';

class PlayController extends GetxController {
  RxInt isChange = 0.obs;
  RxBool isLoader = false.obs;
  RxBool isColor = false.obs;
  RxList img = [
    {
      "img": AppImage.flute,
      "audiofile": [
        "asset/audios/a1.mp3",
        "asset/audios/audio2.wav",
        "asset/audios/audio3.wav",
      ]
    },
    {
      "img": AppImage.piano,
      "audiofile": [
        "asset/audios/audio4.wav",
        "asset/audios/audio5.wav",
        "asset/audios/audio6.wav",
      ],
    },
    {
      "img": AppImage.gitar,
      "audiofile": [
        "asset/audios/audio7.wav",
        "asset/audios/audio8.wav",
        "asset/audios/audio9.mp3",
      ],
    },
    {
      "img": AppImage.drumImg,
      "audiofile": [
        "asset/audios/audio10.mp3",
        "asset/audios/audio11.mp3",
        "asset/audios/audio12.mp3",
      ],
    },
  ].obs;
}
