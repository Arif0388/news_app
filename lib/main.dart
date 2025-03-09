import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:news_app/Config/Theme.dart';
import 'package:news_app/Controller/NavBottomController.dart';
import 'package:news_app/Controller/NewsController.dart';
import 'package:news_app/Pages/HomePage/HomePage.dart';
import 'package:news_app/Pages/Shimmer/shimmer.dart';
import 'package:news_app/Pages/Splash_Screen/Splash_Screen.dart';

import 'Controller/HomePageController.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'News',
      darkTheme:darkTheme,
      themeMode:ThemeMode.dark,
      home:SplashScreen()
    );
  }
}
