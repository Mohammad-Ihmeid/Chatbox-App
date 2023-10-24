import 'package:chatbox_app/core/global/routes/app_pages.dart';
import 'package:chatbox_app/core/global/theme/theme_data/theme_data_light.dart';
import 'package:chatbox_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

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
