import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/Components/NavBotttom.dart';
import 'package:news_app/Controller/NavBottomController.dart';

class HomepageController extends StatelessWidget {
  const HomepageController({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNavController bottomNavController = Get.put(BottomNavController());
    return  Scaffold(
      floatingActionButton:const MyNavBottom(),
      body:Obx(() => bottomNavController.pages[bottomNavController.index.value]),
    );
  }
}
