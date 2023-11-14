import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ilearn_project/controllers/video_controller/VideoController.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoView extends StatelessWidget {
  // final videoController = Get.find<VideoController>();
  final String? link;
  VideoView({Key? key, this.link}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Player'),
      ),
      body: Center(
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: GetBuilder<VideoController>(
            builder: (controller) {
              return YoutubePlayer(
                controller: controller.youtubeController,
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.blueAccent,
              );
            },
          ),
        ),
      ),
    );
  }
}

// class _FullScreenVideoPlayer extends StatelessWidget {
//   final VideoController videoController = Get.find();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: RotatedBox(
//           quarterTurns: 1, // Rotate the player for landscape mode
//           child: YoutubePlayer(
//             controller: videoController.youtubeController,
//             showVideoProgressIndicator: true,
//             progressIndicatorColor: Colors.blueAccent,
//           ),
//         ),
//       ),
//     );
//   }
// }
