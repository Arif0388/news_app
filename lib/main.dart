import 'package:flutter/material.dart';
import 'package:news_app/Config/Theme.dart';
import 'package:news_app/Pages/HomePage/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'News',
      darkTheme:darkTheme,
      themeMode:ThemeMode.dark,
      home: const Homepage(),
    );
  }
}
