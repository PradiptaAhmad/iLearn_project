import 'package:get/get.dart';
import 'package:ilearn_project/pages/news_page/controller/news_page_controller.dart';

class NewsPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewsPageController>(() => NewsPageController());
  }
}