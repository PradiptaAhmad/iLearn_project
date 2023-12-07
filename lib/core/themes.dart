import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Color
const Color primaryColor = Color(0xFFFF8080);
const Color inActiveColor = Color.fromARGB(255, 93, 93, 93);
const Color peachColor = Color(0xFFFFD1AD);
const Color peachText = Color(0xFFBA5638);
const Color header = Color(0xFFFBECE7);
const Color notifUser = Color(0xFF66D225);
const Color offCategory = Color(0xFFD9D9D9);
const Color isError = Color.fromARGB(255, 255, 0, 0);
const Color black = Color(0xFF1F1D2B);
const Color pinkMuda = Color(0xFFFFECE4);
const Color darkGrey = Color.fromARGB(255, 68, 68, 68);
//Font

figmaFontsize(int fontSize) {
  return fontSize * 0.95;
}

TextStyle onBoardTitle() {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
        color: Color(0xFF1F1D2B),
          fontWeight: FontWeight.w700,
          fontSize: figmaFontsize(23)));
}

TextStyle onBoardDesc() {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: figmaFontsize(16)));
}

//titile buat detail page

TextStyle titlePage() {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: figmaFontsize(20)));
}

TextStyle buttonTxt() {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: figmaFontsize(16)));
}

//Card yg di header home

TextStyle headerCardHome() {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: figmaFontsize(18)));
}

TextStyle subHeaderCardHome() {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: primaryColor,
          fontWeight: FontWeight.w500,
          fontSize: figmaFontsize(14)));
}

TextStyle btnTime() {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: figmaFontsize(16)));
}

//Card yang di home

TextStyle titleCard() {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
        color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: figmaFontsize(14)));
}

TextStyle subTitleCard({required final color}) {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
        color: color,
          fontWeight: FontWeight.w500,
          fontSize: figmaFontsize(12)));
}

//Sub titile ex."For You" yang di home itu, dan deskripsinya

TextStyle subTitle() {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
        color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: figmaFontsize(16)));
}

TextStyle decsSubTitle() {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
        color: Colors.black,
          fontWeight: FontWeight.w400,
          fontSize: figmaFontsize(12)));
}

TextStyle txtCategory() {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: figmaFontsize(10)));
}

TextStyle txtSeeAll() {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: figmaFontsize(12)));
}

//News

TextStyle titleNews() {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: figmaFontsize(23)));
}

TextStyle subTitleNews() {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: figmaFontsize(14)));
}

TextStyle titleNewsCard() {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: figmaFontsize(16)));
}

TextStyle dateNewsCard() {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: figmaFontsize(11)));
}

TextStyle iconBtnNews() {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: figmaFontsize(11)));
}



TextStyle bottomTxtLogin({required final color}) {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: color,
          fontWeight: FontWeight.w400,
          fontSize: figmaFontsize(14)));
}

TextStyle errorText({required final color}) {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: color,
          fontWeight: FontWeight.w400,
          fontSize: figmaFontsize(14)));
}

TextStyle txtprofile({required final color}) {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: color,
          fontWeight: FontWeight.w400,
          fontSize: figmaFontsize(18)));
}

TextStyle titleForYou({required final color}) {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: color,
          fontWeight: FontWeight.w400,
          fontSize: figmaFontsize(23)));
}

TextStyle descForYou({required final color}) {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: color,
          fontWeight: FontWeight.w400,
          fontSize: figmaFontsize(14)));
}

TextStyle txtIconForYouDetail({required final color}) {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: color,
          fontWeight: FontWeight.w500,
          fontSize: figmaFontsize(14)));
}

TextStyle titlePlaylist({required final color}) {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: color,
          fontWeight: FontWeight.w500,
          fontSize: figmaFontsize(16)));
}

TextStyle descPlaylist({required final color}) {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: color,
          fontWeight: FontWeight.w400,
          fontSize: figmaFontsize(12)));
}

TextStyle txtPrice({required final color}) {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: color,
          fontWeight: FontWeight.w500,
          fontSize: figmaFontsize(20)));
}

TextStyle btnBuy({required final color}) {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: color,
          fontWeight: FontWeight.w600,
          fontSize: figmaFontsize(22)));
}

TextStyle txtDetailCourse({required final color}) {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: color,
          fontWeight: FontWeight.w600,
          fontSize: figmaFontsize(16)));
}

TextStyle descMyCourses({required final Color color}) {
  Color semiTransparentColor = color.withOpacity(0.7); // Mengubah warna menjadi 70% lebih transparan
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: semiTransparentColor,
          fontWeight: FontWeight.w400,
          fontSize: figmaFontsize(11),
           height: 1.25,
      ));
}

TextStyle decsCourses({required final Color color}) {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: figmaFontsize(11)));
}

TextStyle priceCourses() {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
    color: darkGrey,
    fontSize: 11,
  ));

}

