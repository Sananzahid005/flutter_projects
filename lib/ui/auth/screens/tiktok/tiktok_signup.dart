import 'package:flutter/material.dart';
//import 'package:flutter_application_1/core/constants/strings.dart';
//import 'package:flutter_application_1/ui/auth/sign_in/sign_up/main_tiktok_home_page.dart';
import 'package:flutter_projects/core/constants/strings.dart';
import 'package:flutter_projects/ui/auth/screens/tiktok/tiktok_homepage.dart';

class tiktok_signUp_screen extends StatefulWidget {
  const tiktok_signUp_screen({super.key});

  @override
  State<tiktok_signUp_screen> createState() => _tiktok_signUp_screenState();
}

class _tiktok_signUp_screenState extends State<tiktok_signUp_screen> {
  @override
  // box decotation propeties of container
  // input decoration propeties of text field
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            "Login screen",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Container(
                  height: 120,
                ),
                // SizedBox(height: 20),
                Image.asset(
                  height: 80,
                  width: 90,
                  "$staticAssets/login.jpeg",
                  fit: BoxFit.cover,
                ),

                const Text(
                  "login",
                  style: TextStyle(fontWeight: FontWeight.w900),
                ),
                const SizedBox(height: 39),
                Row(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          hintText: "  First name",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Enter your email ",
                      prefixIcon: const Icon(Icons.email),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                const SizedBox(height: 20),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: " enter your password",
                    prefix: const Icon(Icons.lock_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Verify your password",
                      prefix: const Icon(Icons.lock),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {
                    // navigator and rout mean from one page to another
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const tiktok_home_screen(),
                    ));
                  },
                  child: const Text("SignUp", style: TextStyle(fontSize: 12)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}