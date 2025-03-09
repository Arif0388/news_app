import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/Controller/HomePageController.dart';
import 'package:news_app/Pages/AuthPage/LoginPage.dart';
import 'package:news_app/Pages/AuthPage/Sign_up_Page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceController extends GetxController{


  void login(String email,String password,BuildContext context) async {

   var pref  = await SharedPreferences.getInstance();
   pref.setString('userEmail',email);
   pref.setString('userPassword',email);
   var userEmail = pref.getString('userEmail');
   var userPassword = pref.getString('userPassword');
    // Replace this with real login validation
    if(email=='' && password==''){
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Login Failed'),
            content: const Text('Please Fill All The Field'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    }
    else if  (userEmail == email && userPassword == password) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setBool('isLoggedIn', true);
      Get.offAll(const HomepageController());
    } else {
      // Show error message if login fails
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Login Failed'),
            content: const Text('Invalid email or password.'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

}