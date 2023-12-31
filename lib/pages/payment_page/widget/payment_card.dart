import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ilearn_project/core/themes.dart';
import 'package:ilearn_project/pages/index.dart';

class PaymentCard extends GetView<PaymentPageController> {
  final String image;
  final String title;
  PaymentCard({Key? key, required this.image, required this.title,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            controller.initWidget();
            controller.isDebitClicked.value = false;
            controller.isPaymentSelected.value = true;
            controller.updateWidget(title);
          },
          child: Container(
              height: 50,
              width: 50,
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.only(left: 18, bottom: 5),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0, 4),
                        blurRadius: 10)
                  ]),
              child: SvgPicture.asset(
                image,
              )),
        ),
        Container(
          margin: EdgeInsets.only(left: 15, bottom: 10),
          alignment: Alignment.center,
          child: Text(
            title,
            style: subTitleCard(color: Colors.black),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
