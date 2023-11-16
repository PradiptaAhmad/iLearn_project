import 'package:get/get.dart';

import '../video_controller/VideoController.dart';

class VideoB extends Bindings{
  @override
  void dependencies() {
    Get.put(VideoController());
  }
}