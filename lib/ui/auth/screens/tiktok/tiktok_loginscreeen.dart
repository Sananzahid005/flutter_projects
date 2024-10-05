import 'package:flutter/material.dart';
//import 'package:flutter_application_1/pioneer_awais_sir/signup.dart';
//import 'package:flutter_application_1/ui/auth/sign_in/sign_up/main_tiktok_home_page.dart';
//import 'package:flutter_application_1/ui/screens/main_tiktok_signUp_screen.dart';
import 'package:flutter_projects/ui/auth/screens/tiktok/tiktok_homepage.dart';
import 'package:flutter_projects/ui/auth/screens/tiktok/tiktok_signup.dart';

class tiktok_login_screen_ui extends StatelessWidget {
  const tiktok_login_screen_ui({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
            ),
            backgroundColor: Colors.white,
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const Padding(padding: EdgeInsets.only(left: 5)),
                  const Text(
                    "Login in",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                  //const Padding(padding: EdgeInsets.only(left: 2)),
                  // take text in row to start from start of the page
                  const Row(
                    children: [
                      Text(" Email or Username "),
                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(
                      fillColor: const Color(0xfffe8effd),
                      hintText: "    Enter your email ",
                      prefix: const Icon(Icons.email_sharp),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(3)),
                    ),
                  ),
                  const SizedBox(height: 18),
                  const Row(
                    children: [
                      Text(" Password "),
                    ],
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: const Color(0xfffe8effd),
                      hintText: "    Enter your password  ",
                      prefix: const Icon(Icons.lock_outline_rounded),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Text("Forget Password? ")),
                    ],
                  ),
                  const SizedBox(height: 13),
                  const Padding(padding: EdgeInsets.symmetric(horizontal: 50)),

                  TextButton(
                      onPressed: () {
                        // navigator and rout mean from one page to another
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const tiktok_home_screen(),
                        ));
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(fontWeight: FontWeight.w900),
                      )),
                  const SizedBox(height: 50),
                  const Padding(padding: EdgeInsets.symmetric(horizontal: 50)),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [Text("Don't have an account ")],
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const tiktok_signUp_screen(),
                        ));
                      },
                      child: const Text("SignUp?"))
                ],
              ),
            )));
  }
}