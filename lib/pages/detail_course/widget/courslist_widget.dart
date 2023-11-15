import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ilearn_project/controllers/detail_controller/detail_controller.dart';
import 'package:ilearn_project/core/themes.dart';
import 'package:ilearn_project/routes/route_name.dart';

class CourseListDetail extends StatelessWidget {
  final detailC = Get.find<DetailCourseController>();
  final String title;
  final String description;
  final String link;
  CourseListDetail({ Key? key, required this.title, required this.description, required this.link}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    {
      return Row(
        children: [
          Container(
            width: screenWidth * 0.9,
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 12, right: 12, top: 12),
            padding: EdgeInsets.symmetric(
                vertical: screenHeight * 0.01, horizontal: screenWidth * 0.03),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black, // Border color
                width: 1.0, // Border width
              ),
              borderRadius: BorderRadius.circular(
                  8.0), // Adjust the border radius as needed
            ),
            child: SingleChildScrollView(
              child: Row(
                children: [
                  // ClipRRect(
                  //   borderRadius: BorderRadius.circular(
                  //       8.0), // Adjust the border radius as needed
                  //   child: Image.asset(
                  //     "assets/images/playlist1.png",
                  //     width: 70, // Lebar yang diinginkan
                  //     height: 62, // Tinggi yang diinginkan
                  //   ),
                  // ),
                  SizedBox(
                    width: screenWidth * 0.03,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: titlePlaylist(color: Colors.black),
                      ),
                      Text(
                        description,
                        style: descPlaylist(color: Colors.black),
                      ),
                    ],
                  ),
                  Spacer(),
                  Align(
                    alignment:
                        Alignment.centerRight, // Menyusun ke kanan tengah
                    child: Container(
                      width: 36.0,
                      height: 36.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: peachColor,
                      ),
                      child: Center(
                          child: Obx(() => detailC.isBuyed.value == false
                              ? Icon(
                                  Icons.lock,
                                  color: Colors.black,
                                  size: 20.0,
                                )
                              : IconButton(
                                  onPressed: () => Get.toNamed(RouteName.video,
                                      arguments: [link]),
                                  icon: Icon(
                                    Icons.play_arrow,
                                  ),
                                  iconSize: 20,
                                ))),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    }
  }
}
