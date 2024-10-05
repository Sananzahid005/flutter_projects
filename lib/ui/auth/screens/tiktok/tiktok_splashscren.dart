import 'package:flutter/material.dart';
import 'package:flutter_projects/core/constants/strings.dart';

//import 'package:flutter_application_1/core/constants/strings.dart';
//import 'package:flutter_application_1/ui/screens/main_tiktok_login_screen.dart';
import 'package:flutter_projects/ui/auth/screens/tiktok/tiktok_loginscreeen.dart';

class tiktoksplashscreen_task extends StatefulWidget {
  const tiktoksplashscreen_task({super.key});

  @override
  State<tiktoksplashscreen_task> createState() =>
      _tiktoksplashscreen_taskState();
}

// ignore: camel_case_types
class _tiktoksplashscreen_taskState extends State<tiktoksplashscreen_task> {
  init() async {
    await Future.delayed(const Duration(seconds: 3), () {
      // navigator and rout mean from one page to another
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const tiktok_login_screen_ui(),
      ));
    });
  }

  @override
  void initState() {
    init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 90),
                      child: SizedBox(
                        height: 150,
                        width: 150,
                        child: Image.asset("$staticAssets/tiktok.png",
                            fit: BoxFit.cover
                            // scale: 3.0,
                            ),
                      )),
                  //  SizedBox(height: 10),
                  const Text(
                    "Tik Tok",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                        height: 5,
                        color: Colors.white),
                  )
                ],
              ),
            ),
          )),
    );
  }
}