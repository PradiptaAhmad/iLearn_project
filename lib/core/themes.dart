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

//Font

figmaFontsize(int fontSize) {
  return fontSize * 0.95;
}

//OnBoarding

TextStyle onBoardTitle({required final color}) {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w700,
          fontSize: figmaFontsize(23)));
}

TextStyle onBoardDesc({required final color}) {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w400,
          fontSize: figmaFontsize(16)));
}

//titile buat detail page

TextStyle titlePage({required final color}) {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: figmaFontsize(20)));
}

TextStyle buttonTxt({required final color}) {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: figmaFontsize(16)));
}

//Card yg di header home

TextStyle headerCardHome({required final color}) {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: figmaFontsize(16)));
}

TextStyle subHeaderCardHome({required final color}) {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: figmaFontsize(12)));
}

TextStyle btnTime({required final color}) {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: figmaFontsize(16)));
}

//Card yang di home

TextStyle titleCard({required final color}) {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: figmaFontsize(14)));
}

TextStyle subTitleCard({required final color}) {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: color.mainColor,
          fontWeight: FontWeight.w600,
          fontSize: figmaFontsize(12)));
}

//Sub titile ex."For You" yang di home itu, dan deskripsinya

TextStyle subTitle({required final color}) {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: color,
          fontWeight: FontWeight.w600,
          fontSize: figmaFontsize(16)));
}

TextStyle decsSubTitle({required final color}) {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: color,
          fontWeight: FontWeight.w400,
          fontSize: figmaFontsize(12)));
}

TextStyle txtCategory({required final color}) {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: color,
          fontWeight: FontWeight.w500,
          fontSize: figmaFontsize(10)));
}

TextStyle txtSeeAll({required final color}) {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: color,
          fontWeight: FontWeight.w400,
          fontSize: figmaFontsize(12)));
}

//News

TextStyle titleNews({required final color}) {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: color,
          fontWeight: FontWeight.w600,
          fontSize: figmaFontsize(23)));
}

TextStyle subTitleNews({required final color}) {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: color,
          fontWeight: FontWeight.w500,
          fontSize: figmaFontsize(14)));
}

TextStyle bottomTxtLogin({required final color}) {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: color,
          fontWeight: FontWeight.w400,
          fontSize: figmaFontsize(14)));
}

TextStyle bodyNews({required final color}) {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: color,
          fontWeight: FontWeight.w400,
          fontSize: figmaFontsize(14)));
}





