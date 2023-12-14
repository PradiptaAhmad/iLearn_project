import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:ilearn_project/core/themes.dart';
import 'package:ilearn_project/pages/index.dart';

class PaymentOption extends GetView<PaymentPageController> {
  final String image;
  final String title;
  final void Function() onClicked;
  const PaymentOption(
      {Key? key,
      required this.image,
      required this.title,
      required this.onClicked});

  @override
  Widget build(BuildContext context) {
    double screenHeight = Get.height;
    return Obx(() => GestureDetector(
          onTap: onClicked,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
            height: screenHeight * 0.07,
            padding: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10,
                    offset: Offset(0, 2),
                  ),
                ]),
            child: Row(children: [
              SvgPicture.asset(
                image,
                width: 50,
                height: 50,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                title,
                style: descForYou(color: Colors.black),
              ),
              Spacer(),
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(2),
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey, width: 2)),
                child: Container(
                  decoration: BoxDecoration(
                      color: controller.isDebitClicked.value
                          ? primaryColor
                          : Colors.white,
                      shape: BoxShape.circle),
                ),
              ),
            ]),
          ),
        ));
  }
}
