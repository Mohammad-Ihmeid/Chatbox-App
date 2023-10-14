import 'package:chatbox_app/core/global/theme/app_color/app_color_light.dart';
import 'package:chatbox_app/core/global/theme/responsive.dart';
import 'package:flutter/material.dart';

ThemeData getThemeDataLight(context) => ThemeData(
      scaffoldBackgroundColor: AppColorsLight.colorWhite,
      fontFamily: "Caros",
      buttonTheme: const ButtonThemeData(buttonColor: Colors.amber),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColorsLight.colorWhite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
        textStyle: TextStyle(
          fontSize: 18.sF(context),
          color: AppColorsLight.colorWhite,
          fontWeight: FontWeight.w600,
        ),
      )),
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
        color: Colors.greenAccent,
      ),
    );
