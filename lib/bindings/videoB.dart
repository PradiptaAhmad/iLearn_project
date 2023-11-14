import 'package:get/get.dart';
import 'package:ilearn_project/controllers/video_controller/VideoController.dart';

class VideoB extends Bindings{
  @override
  void dependencies() {
    Get.put(VideoController());
  }
}