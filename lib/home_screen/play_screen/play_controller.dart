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
        "asset/audios/flute1.mp3",
        "asset/audios/flute2.wav",
        "asset/audios/flute3.wav",
        "asset/audios/flute4.wav",
        "asset/audios/flute5.wav",
        "asset/audios/flute6.mp3",
        "asset/audios/flute7.mp3",
        "asset/audios/flute8.wav",
        "asset/audios/flute9.wav",
        "asset/audios/flute10.wav",
        "asset/audios/flute11.wav",
        "asset/audios/flute12.wav",
      ]
    },
    {
      "img": AppImage.piano,
      "audiofile": [
        "asset/audios/piano1.wav",
        "asset/audios/piano2.wav",
        "asset/audios/piano3.wav",
        "asset/audios/piano4.mp3",
        "asset/audios/piano5.mp3",
        "asset/audios/piano6.mp3",
        "asset/audios/piano7.mp3",
        "asset/audios/piano8.mp3",
        "asset/audios/piano9.mp3",
        "asset/audios/piano10.wav",
        "asset/audios/piano11.wav",
        "asset/audios/piano12.wav",
      ],
    },
    {
      "img": AppImage.gitar,
      "audiofile": [
        "asset/audios/gitar1.mp3",
        "asset/audios/gitar2.mp3",
        "asset/audios/gitar3.mp3",
        "asset/audios/gitar4.mp3",
        "asset/audios/gitar5.mp3",
        "asset/audios/gitar6.mp3",
        "asset/audios/gitar7.mp3",
        "asset/audios/gitar8.mp3",
        "asset/audios/gitar9.mp3",
        "asset/audios/gitar10.mp3",
        "asset/audios/gitar11.mp3",
        "asset/audios/gitar12.mp3",
      ],
    },
    {
      "img": AppImage.drumImg,
      "audiofile": [
       "asset/audios/drum1.wav",
       "asset/audios/drum2.wav",
       "asset/audios/drum3.wav",
       "asset/audios/drum4.mp3",
       "asset/audios/drum5.mp3",
       "asset/audios/drum6.mp3",
       "asset/audios/drum7.mp3",
       "asset/audios/drum8.mp3",
       "asset/audios/drum9.mp3",
       "asset/audios/drum10.mp3",
       "asset/audios/drum11.mp3",
       "asset/audios/drum12.mp3",
      ],
    },
  ].obs;
}
