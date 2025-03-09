
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/Controller/SharedPreference_Controller.dart';
import 'package:news_app/Pages/AuthPage/LoginPage.dart';

class SignUpPage extends StatelessWidget {
  final _fullNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  SignUpPage({super.key});


  @override
  Widget build(BuildContext context) {
    SharedPreferenceController sharedPreferenceController = Get.put(SharedPreferenceController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Create Account",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            const SizedBox(height: 40),
            TextField(
              controller: _fullNameController,
              decoration: InputDecoration(
                labelText: 'Full Name',
                prefixIcon: const Icon(Icons.email),
                border:  OutlineInputBorder(borderRadius:BorderRadius.circular(10)),
                filled: true,
                fillColor:Theme.of(context).colorScheme.primaryContainer,
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                prefixIcon: const Icon(Icons.email),
                border:OutlineInputBorder(borderRadius:BorderRadius.circular(10)),
                filled: true,
                fillColor:Theme.of(context).colorScheme.primaryContainer,
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: const Icon(Icons.lock),
                border: OutlineInputBorder(borderRadius:BorderRadius.circular(10)),
                filled: true,
                fillColor:Theme.of(context).colorScheme.primaryContainer,
              ),
            ),
            const SizedBox(height: 20),
            // TextField(
            //   controller: _confirmPasswordController,
            //   obscureText: true,
            //   decoration: InputDecoration(
            //     labelText: 'Confirm Password',
            //     prefixIcon: const Icon(Icons.lock),
            //     border: OutlineInputBorder(borderRadius:BorderRadius.circular(10)),
            //     filled: true,
            //     fillColor:Theme.of(context).colorScheme.primaryContainer,
            //   ),
            // ),
            const SizedBox(height: 30),
            Obx(() =>
                ElevatedButton(
                  onPressed: () {
                 if(_fullNameController.text.isNotEmpty && _emailController.text.isNotEmpty && _passwordController.text.isNotEmpty){
                   // sharedPreferenceController.signup(_fullNameController.text.trim(),_emailController.text.trim(),_passwordController.text.trim());
                 }else{
                   Get.snackbar('Error','Please fill all field',
                   snackPosition:SnackPosition.BOTTOM,
                     colorText:Colors.white,
                     borderRadius:10,
                     snackStyle:SnackStyle.FLOATING,
                   );
                 }
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15), backgroundColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child:const Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
               // Get.offAll(LoginPage());
              },
              child: const Text(
                "Already have an account? Login",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
