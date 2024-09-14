import 'package:flutter/material.dart';

class my_Theme {
  static Color primaryColor = Color(0xff5D9CEC);
  static Color whiteColor = Color(0xffffffff);
  static Color backgroundColor = Color(0xffDFECDB);
  static Color blackColor = Color(0xff383838);
  static Color greenColor = Color(0xff61E757);
  static Color redColor = Color(0xffEC4B4B);
  static Color lightGrayColor = Color(0xffC8C9CB);
  static Color darkPrimaryColor = Color(0xff060E1E);
  static Color darkColor = Color(0xff141922);
  static Color greyColor = Color(0xff828080);

  static ThemeData lightTheme = ThemeData(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: backgroundColor,
      appBarTheme: AppBarTheme(
        color: primaryColor,
        elevation: 0,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        iconSize: 35,
        shape: StadiumBorder(
          side: BorderSide(
            width: 4,
            color: whiteColor,
          ),
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.transparent,
        elevation: 0,
        selectedIconTheme: IconThemeData(
          color: primaryColor,
        ),
        unselectedIconTheme: IconThemeData(
          color: lightGrayColor,
        ),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      ),
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: 22,
          color: whiteColor,
          fontWeight: FontWeight.bold,
        ),
        titleMedium: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 18, color: blackColor),
        titleSmall: TextStyle(
            fontWeight: FontWeight.w400, fontSize: 14, color: blackColor),
      ));
  static ThemeData darkTheme = ThemeData(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: primaryColor,
      appBarTheme: AppBarTheme(
        color: primaryColor,
        elevation: 0,
      ),
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: 22,
          color: darkPrimaryColor,
          fontWeight: FontWeight.bold,
        ),
        titleMedium: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 18, color: whiteColor),
        titleSmall: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          color: whiteColor,
        ),
      ));
}
