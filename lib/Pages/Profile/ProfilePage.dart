import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:news_app/Pages/AuthPage/LoginPage.dart';
import 'package:news_app/Pages/AuthPage/Sign_up_Page.dart';
import 'package:shared_preferences/shared_preferences.dart';
class UserProfilePage extends StatelessWidget {
  final String username = "John Doe";
  final String email = "johndoe@example.com";
  final String profileImage =
      "https://www.w3schools.com/w3images/avatar2.png";

  const UserProfilePage({super.key}); // Example profile image

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Profile'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Profile Picture Section
            Center(
              child: CircleAvatar(
                radius: 80,
                backgroundImage: NetworkImage(profileImage),
              ),
            ),
            const SizedBox(height: 20),

            // User Info Section
            Text(
              username,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              email,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 30),

            // Edit Profile Button
            ElevatedButton.icon(
              onPressed: () {
                // Action for editing profile
                print("Edit Profile");
              },
              icon: const Icon(Icons.edit),
              label: const Text("Edit Profile"),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15), backgroundColor: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Logout Button
            ElevatedButton.icon(
              onPressed: () async{
                SharedPreferences prefs = await SharedPreferences.getInstance();
                await prefs.setBool('isLoggedIn',false);
                await prefs.remove('userEmail');
                await prefs.remove('userPassword');
              },
              icon: const Icon(Icons.logout),
              label: const Text("Log Out"),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15), backgroundColor: Colors.redAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
