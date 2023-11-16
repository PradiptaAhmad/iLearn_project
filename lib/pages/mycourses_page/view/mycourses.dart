import 'package:flutter/material.dart';

import '../../../core/appBar/appbarcustom.dart';
import '../widget/playlistmycourses.dart';

class MyCoursesPage extends StatelessWidget {
  const MyCoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            AppBarCustom(
              textColor: Colors.black,
              showSearchBar: true,
              appBarText: 'My Courses',
              showProfileImage: false,
            ),
            PlaylistCourses()
          ],
        ),
      ),
    );
  }
}
