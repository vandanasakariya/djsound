import 'package:get/get.dart';

import '../../theme/app_image.dart';

class PlayController extends GetxController {
  RxInt isChange = 0.obs;
  RxBool isLoader = false.obs;
  RxBool isColor = false.obs;
  RxList  img = [AppImage.flute, AppImage.piano, AppImage.gitar,AppImage.drumImg].obs;

}
