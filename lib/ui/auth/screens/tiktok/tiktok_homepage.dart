import 'dart:math';

import 'package:flutter/material.dart';
//import 'package:flutter_application_1/core/constants/strings.dart';
import 'package:flutter_projects/core/constants/strings.dart';

class tiktok_home_screen extends StatelessWidget {
  const tiktok_home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: const Color(0xffff4f8fb),
            title: const Text(
              "TikTok",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w900),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.more_horiz),
                onPressed: () {},
              )
            ]),

        // background page color

        backgroundColor: Colors.white,

        // container to upload picture then
        body: Column(
            // logo to center of splash screen
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "$staticAssets/tiktok.png",
                scale: 3.0,
              ),

              const Text(
                " @tiktok",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              // change the size of logo box
              const SizedBox(
                height: 20,
              ),

              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.all(50)),
                  Center(
                    child: Text(
                      "Following",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Center(child: Padding(padding: EdgeInsets.all(25))),
                  Center(
                    child: Text(
                      "Followers",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Center(child: Padding(padding: EdgeInsets.all(25))),
                  Center(
                    child: Text(
                      "likes",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(padding: EdgeInsets.only(left: 96)),
                  Container(
                    height: 40,
                    width: 205,
                    color: Colors.red,
                    //margin: EdgeInsets.only(top: 0),
                    // padding: EdgeInsets.only(left: 70),

                    // if we use margin here it will move the whole text container downward vicversa
                    //      margin: EdgeInsets.only(top: 100),

                    child: const Center(
                      child: Text(
                        "Follow",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const Center(
                      child: Padding(padding: EdgeInsets.only(left: 7))),
                  // ask sir to round the corner
                  Center(
                    child: Container(
                      height: 40,
                      width: 40,
                      color: const Color(0xffff4f8fb),
                      child: const Icon(Icons.add_box),
                    ),
                  ),
                  const Center(
                      child: Padding(padding: EdgeInsets.only(left: 7))),
                  Center(
                    child: Container(
                      height: 40,
                      width: 40,
                      color: const Color(0xffff4f8fb),
                      child: const Icon(Icons.arrow_drop_down),
                    ),
                  ),
                ],
                // childern widget // emclosed many widget and child widgets
              ),
              // Padding(padding: EdgeInsets.only(left: 56)),
              // gave some space between follow button and make your day
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Center(
                      child: Padding(padding: EdgeInsets.only(left: 200))),
                  Center(
                    child: Container(
                      child: const Text(
                        "Make Your Day",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black54),
                      ),
                    ),
                  )
                ],
              )
            ]));
  }
}