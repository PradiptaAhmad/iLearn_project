import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:ilearn_project/core/themes.dart';
import 'package:ilearn_project/pages/index.dart';

class ClickedPaymentTile extends GetView<PaymentPageController> {
  final String image;
  final String title;
  final String description;

  ClickedPaymentTile(
      {Key? key,
      required this.image,
      required this.title,
      required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = Get.width;
    return GestureDetector(
      onTap: () {
        controller.initWidget();
        controller.isPaymentSelected.value = false;
      },
      child: Container(
        width: screenWidth * 0.9,
        margin: EdgeInsets.all(10),
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
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(children: [
            Container(
                height: 50,
                width: 50,
                margin: EdgeInsets.only(left: 20),
                child: SvgPicture.asset(image)),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(
                title,
                style: descForYou(color: Colors.black),
              ),
            ),
            Spacer(),
            Container(
              height: 25,
              width: 25,
              margin: EdgeInsets.all(10),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: primaryColor),
              child: Icon(
                Icons.check,
                color: Colors.white,
                size: 20,
              ),
            )
          ]),
          Container(
            margin: EdgeInsets.only(
              top: 5,
            ),
            decoration: BoxDecoration(
                border:
                    Border.all(color: Colors.grey, style: BorderStyle.solid)),
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: Text(
              description,
              style: descForYou(color: Colors.black),
            ),
          )
        ]),
      ),
    );
  }
}
