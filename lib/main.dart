import 'package:chatbox_app/core/global/routes/app_pages.dart';
import 'package:chatbox_app/core/global/theme/theme_data/theme_data_light.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chatbox App',
      debugShowCheckedModeBanner: false,
      theme: getThemeDataLight(context),
      initialRoute: AppPages.initial,
      routes: AppPages.routes,
    );
  }
}
