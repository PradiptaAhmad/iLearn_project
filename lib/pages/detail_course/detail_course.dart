import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ilearn_project/controllers/detail_controller/detail_controller.dart';
import 'package:ilearn_project/pages/foryou_page/widget/icontxt.dart';
import 'package:ilearn_project/pages/detail_course/widget/playlistcourse.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../core/themes.dart';
import '../foryou_page/widget/button_buy.dart';

class DetailCourse extends StatelessWidget {
  final detailC = Get.find<DetailCourseController>();
  final data = Get.arguments;
  DetailCourse({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    detailC.course = data!;
    detailC.courseId.value = detailC.course.id!;
    print(data!);
    YoutubePlayerController youtubeController = YoutubePlayerController(
      initialVideoId:
          "${YoutubePlayer.convertUrlToId(detailC.course.video_banner!)}",
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: true,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Get.back(),
        ),
        title: Text(
          "Course Detail",
          style: titlePage(),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: EdgeInsets.only(top: 20),
              child: YoutubePlayer(controller: youtubeController)),
          // Ink.image(
          //   image: AssetImage("assets/images/laptop.png"),
          //   width: screenWidth * 0.89,
          //   height: screenHeight * 0.22,
          //   fit: BoxFit.cover,
          //   child: InkWell(
          //     onTap: () {
          //       // Handle navigation when the image is tapped
          //     },
          //     // child: YoutubePlayer (
          //     //   controller: detailC.youtubePlayerController,
          //     //   showVideoProgressIndicator: true,
          //     //   progressIndicatorColor: primaryColor,
          //     //   progressColors: ProgressBarColors(
          //     //     playedColor: primaryColor,
          //     //     handleColor: primaryColor,
          //     //   ),
          //     // ),
          //   ),
          // ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.only(left: 12, right: 12),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("${detailC.course.title}",
                  style: titleForYou(color: Colors.black)),
              Text(
                "${detailC.course.description}",
                style: TextStyle(
                  color: Colors.black
                      .withOpacity(0.7), // Set alpha to 0.7 for 70% opacity
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  IconWithText(
                    iconData: Icons.star,
                    iconColor: primaryColor,
                    labelText: "4.8",
                  ),
                  SizedBox(width: screenWidth * 0.03),
                  IconWithText(
                    iconData: Icons.timer,
                    iconColor: peachColor,
                    labelText: "72 Hours",
                  )
                ],
              ),
            ]),
          ),
          // Align(
          //   alignment: Alignment.centerLeft,
          //   child:
          // ),
          // Align(
          //   alignment: Alignment.centerLeft,
          //   child:
          // ),
          SizedBox(height: 15),

          SizedBox(
            height: 5,
          ),
          Playlist(),
        ],
      ),
      bottomSheet: BottomSheet(
        onClosing: () {},
        backgroundColor: Colors.white,
        enableDrag: false,
        builder: (context) {
          return const SizedBox(
            height: 80,
            child: EnroollBottomSheet(),
          );
        },
      ),
    );
  }
}
