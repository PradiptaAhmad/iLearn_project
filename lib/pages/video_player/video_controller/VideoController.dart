import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoController extends GetxController {
  late YoutubePlayerController youtubeController;

  late String? link;
  VideoController({
    this.link,
  });

  @override
  void onInit() {
    super.onInit();
    // Initialize the YoutubePlayerController with your video URL
    youtubeController = YoutubePlayerController(
      initialVideoId: '${YoutubePlayer.convertUrlToId(link!)}',
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
  }

  @override
  void onClose() {
    // Dispose of the YoutubePlayerController when the controller is closed
    youtubeController.dispose();
    super.onClose();
  }
}
