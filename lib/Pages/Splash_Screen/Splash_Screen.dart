
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/Config/Colors.dart';
import 'package:news_app/Controller/HomePageController.dart';
import 'package:news_app/Pages/AuthPage/LoginPage.dart';
import 'package:news_app/Pages/AuthPage/Sign_up_Page.dart';
import 'package:shared_preferences/shared_preferences.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});
//
//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{
//
// late AnimationController controller;
// late Animation<double> animation;
//   @override
//   void initState()
//   {
//     super.initState();
//   controller = AnimationController(vsync:this,duration:const Duration(seconds:2))..repeat(reverse:true);
//   animation = Tween<double>(begin:0.8,end:1.0).animate(CurvedAnimation(parent: controller, curve:Curves.easeInOut));
//    Timer(const Duration(seconds:3),(){
//      SplashController();
//    });
//   }
//
//  Future<void> SplashController()async{
//   var pref = await SharedPreferences.getInstance();
//    var isLoggedIn = pref.getBool('login');
//    if(isLoggedIn!=null){
//      if(isLoggedIn){
//        Get.offAll(const HomepageController());
//      }else{
//        Get.offAll(LoginPage());
//      }
//    }else{
//      Get.offAll(LoginPage());
//    }
//
//    }
//   @override
//   void dispose(){
//     controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       backgroundColor:dContainerColor,
//       body:Column(
//         children: [
//           const SizedBox(height:250),
//           Center(
//             child:ScaleTransition(
//               alignment:Alignment.center,
//                 scale:animation,
//               child:Image.asset('assets/Images/ic_launcher.png'),
//             ),
//           ),
//           const SizedBox(height:300),
//           Center(child: Text("@Made By Arif",style:Theme.of(context).textTheme.bodySmall)),
//         ],
//       )
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _checkLoginStatus();
  }

  _checkLoginStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;

    // Wait for 3 seconds to simulate splash screen delay
    await Future.delayed(const Duration(seconds: 3));

    if (isLoggedIn) {
   Get.offAll(const HomepageController());
    } else {
     Get.offAll(LoginScreen());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
