import 'package:get/get.dart';
import 'package:ilearn_project/pages/payment_page/controller/payment_page_controller.dart';

class PaymentPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PaymentPageController>(() => PaymentPageController());
  }
}