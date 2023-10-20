import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Color
const Color primaryColor = Color(0xFFFF8080);
const Color peachColor = Color(0xFFFFD1AD);
const Color peachText = Color(0xFFBA5638);
const Color header = Color(0xFFFBECE7);
const Color notifUser = Color(0xFF66D225);
const Color offCategory = Color(0xFFD9D9D9);

//Font

figmaFontsize(int fontSize) {
  return fontSize * 0.95;
}

TextStyle onBoardTitle() {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
        color: Colors.black,
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
          fontSize: figmaFontsize(16)));
}

TextStyle subHeaderCardHome() {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
        color: peachText,
          fontWeight: FontWeight.w500,
          fontSize: figmaFontsize(12)));
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
          fontWeight: FontWeight.w600,
          fontSize: figmaFontsize(14)));
}

TextStyle subTitleCard() {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontWeight: FontWeight.w600,
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

TextStyle bodyNews() {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: figmaFontsize(14)));
}
