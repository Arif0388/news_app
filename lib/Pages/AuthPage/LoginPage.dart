import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/Controller/HomePageController.dart';
import 'package:news_app/Controller/SharedPreference_Controller.dart';

import 'Sign_up_Page.dart';

// class LoginPage extends StatelessWidget {
//   final _emailController = TextEditingController();
//
//   final _passwordController = TextEditingController();
//   final _nameController = TextEditingController();
//
//   LoginPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     SharedPreferenceController sharedPreferenceController = Get.put(SharedPreferenceController());
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(32.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//            //  const Text(
//            //    "Welcome Back!",
//            //    style: TextStyle(
//            //      fontSize: 32,
//            //      fontWeight: FontWeight.bold,
//            //      color: Colors.blueAccent,
//            //    ),
//            //  ),
//            //  const SizedBox(height: 40),
//            //  TextField(
//            //    controller: _nameController,
//            //    decoration: InputDecoration(
//            //      labelText: 'Name',
//            //      prefixIcon: const Icon(Icons.email),
//            //      border: OutlineInputBorder(borderRadius:BorderRadius.circular(10)),
//            //      filled: true,
//            //      fillColor: Theme.of(context).colorScheme.primaryContainer,
//            //    ),
//            //  ),
//            //  const SizedBox(height: 20),
//            //  TextField(
//            //    controller: _emailController,
//            //    decoration: InputDecoration(
//            //      labelText: 'Email',
//            //      prefixIcon: const Icon(Icons.email),
//            //      border: OutlineInputBorder(borderRadius:BorderRadius.circular(10)),
//            //      filled: true,
//            //      fillColor: Theme.of(context).colorScheme.primaryContainer,
//            //    ),
//            //  ),
//            //  const SizedBox(height: 20),
//            //  TextField(
//            //    controller: _passwordController,
//            //    obscureText: true,
//            //    decoration: InputDecoration(
//            //      labelText: 'Password',
//            //      prefixIcon: const Icon(Icons.lock),
//            //      border:  OutlineInputBorder(borderRadius:BorderRadius.circular(10)),
//            //      filled: true,
//            //      fillColor:Theme.of(context).colorScheme.primaryContainer,
//            //    ),
//            //  ),
//            //  const SizedBox(height: 30),
//            // Obx(() =>
//            //     ElevatedButton(
//            //       onPressed: () {
//            //       if(_emailController.text.isNotEmpty && _passwordController.text.isNotEmpty){
//            //         sharedPreferenceController.login(_emailController.text.trim(), _passwordController.text.trim(),_nameController.text.trim());
//            //       }else{
//            //         Get.snackbar('Error','Please fill all field',
//            //           snackPosition:SnackPosition.BOTTOM,
//            //           colorText:Colors.white,
//            //           borderRadius:10,
//            //           snackStyle:SnackStyle.FLOATING,
//            //         );
//            //       }
//            //       },
//            //       style: ElevatedButton.styleFrom(
//            //         padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15), backgroundColor: Colors.blueAccent,
//            //         shape: RoundedRectangleBorder(
//            //           borderRadius: BorderRadius.circular(12),
//            //         ),
//            //       ),
//            //       child: sharedPreferenceController.isLoading.value? const CupertinoActivityIndicator() : const Text(
//            //         'Login',
//            //         style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
//            //       ),
//            //     ),
//            // ),
//            //  const SizedBox(height: 20),
//            //  GestureDetector(
//            //    onTap: () {
//            //          Get.offAll(SignUpPage());
//            //    },
//            //    child: const Text(
//            //      "Don't have an account? Sign Up",
//            //      style: TextStyle(
//            //        fontSize: 16,
//            //        color: Colors.blueAccent,
//            //        fontWeight: FontWeight.w600,
//            //      ),
//            //    ),
//            //  ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  SharedPreferenceController sharedPreferenceController = Get.put(SharedPreferenceController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            const SizedBox(height: 20),
            const Text(
              "Welcome Back!",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            const SizedBox(height: 40),
            const SizedBox(height: 20),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                prefixIcon: const Icon(Icons.email),
                border: OutlineInputBorder(borderRadius:BorderRadius.circular(10)),
                filled: true,
                fillColor: Theme.of(context).colorScheme.primaryContainer,
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: const Icon(Icons.lock),
                border:  OutlineInputBorder(borderRadius:BorderRadius.circular(10)),
                filled: true,
                fillColor:Theme.of(context).colorScheme.primaryContainer,
              ),
            ),
            const SizedBox(height: 30),
                ElevatedButton(
                  onPressed:(){
                    sharedPreferenceController.login(_emailController.text.trim(), _passwordController.text.trim(), context);
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15), backgroundColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child:const Text(
                    'Login',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
