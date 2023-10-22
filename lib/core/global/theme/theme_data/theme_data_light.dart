import 'package:chatbox_app/core/global/theme/app_color/app_color_light.dart';
import 'package:chatbox_app/core/global/theme/responsive.dart';
import 'package:flutter/material.dart';

ThemeData getThemeDataLight(context) => ThemeData(
      scaffoldBackgroundColor: AppColorsLight.colorWhite,
      fontFamily: "Caros",
      bottomSheetTheme:
          const BottomSheetThemeData(backgroundColor: Colors.transparent),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColorsLight.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          textStyle: TextStyle(
            fontSize: 20.sF(context),
            color: AppColorsLight.colorWhite,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyle(
            color: AppColorsLight.primaryColor,
            fontFamily: "CircularStd",
            fontSize: 20.sF(context),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: EdgeInsets.zero,
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColorsLight.dividerColor),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColorsLight.primaryColor),
          )),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          textStyle: TextStyle(
            fontSize: 18.sF(context),
            color: AppColorsLight.colorWhite,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      textTheme: TextTheme(
        headlineLarge: TextStyle(
          fontSize: 80.sF(context),
          color: AppColorsLight.colorWhite,
          fontWeight: FontWeight.w600,
        ),
        headlineMedium: TextStyle(
          fontSize: 80.sF(context),
          color: AppColorsLight.colorWhite,
          fontWeight: FontWeight.normal,
        ),
        displayMedium: TextStyle(
          color: AppColorsLight.whiteOpacity,
          fontFamily: "CircularStd",
          fontSize: 18.sF(context),
          height: 1.5,
        ),
        displaySmall: TextStyle(
          color: AppColorsLight.displaySmallColor,
          fontFamily: "CircularStd",
          fontSize: 16.sF(context),
          height: 1.5,
        ),
        titleLarge: TextStyle(
          fontSize: 20.sF(context),
          color: AppColorsLight.textButtonColor,
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          fontSize: 20.sF(context),
          color: AppColorsLight.textButtonColor,
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          fontSize: 20.sF(context),
          color: AppColorsLight.titleSmallColor,
          fontWeight: FontWeight.normal,
        ),
      ),
      appBarTheme: const AppBarTheme(
        color: AppColorsLight.colorWhite,
        elevation: 0,
      ),
    );
