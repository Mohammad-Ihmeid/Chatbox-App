import 'package:chatbox_app/core/global/theme/app_color/app_color_light.dart';
import 'package:flutter/material.dart';

ThemeData getThemeDataLight() => ThemeData(
      scaffoldBackgroundColor: AppColorsLight.scaffoldBackgroundColor,
      primaryColor: Colors.amber,
      appBarTheme: const AppBarTheme(
        color: Colors.greenAccent,
      ),
    );
