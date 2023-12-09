import 'package:get/get.dart';
import 'package:ilearn_project/pages/loading_page/controller/loading_page_controller.dart';

class LoadingPageBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<LoadingPageController>(() => LoadingPageController());
  }


}