import 'package:flutter/material.dart';
import '../../../core/themes.dart';

class HeaderCard extends StatelessWidget {
  const HeaderCard({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return ListView.builder(
        itemCount: 4,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, index) {
          return Container(
            width: screenWidth * 0.8,
            margin: EdgeInsets.only(left: 15),
            decoration: BoxDecoration(
              color: Color(0xFFFFD1AD),
              borderRadius: BorderRadius.circular(
                  20.0), // Atur nilai sesuai kebutuhan Anda
            ),
            child: Container(
              margin: EdgeInsets.only(left: 10, top: 10),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: screenWidth * 0.4,
                        margin: EdgeInsets.only(top: 10, left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dirumah Aja?",
                              style: headerCardHome(),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "walaupun rebahan kamu masih bisa produktif dengan ILearn",
                              style: subHeaderCardHome(),
                            ),
                          ],
                        ),
                      ),
        
                      SizedBox(
                        height: 20,
                  ),
                      // InkWell(
                      //   onTap: () {},
                      //   child: Container(
                      //     width: ,
                      //     height: 30,
                      //     alignment: Alignment.center,
                      //     decoration: BoxDecoration(color: Colors.white),
                      //     child: Text(
                      //       "30 Minutes",
                      //       style: TextStyle(
                      //         color: Colors.black,
                      //         fontWeight: FontWeight.w600,
                      //         fontSize: 11
                      //       ),
                      //     ),
                      //   ),
                      // )
                    ],
                  ),
                  Image.asset(
                    "assets/images/cardheader.png",
                    scale: 0.1,
                  )
                ],
              ),
            ),
          );
        }
    );
  }
}
