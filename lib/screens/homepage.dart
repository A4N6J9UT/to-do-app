import 'dart:html';

import 'package:flutter/material.dart';
import 'package:new_to_do/screens/taskpage.dart';
import 'package:new_to_do/widgets.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(0xFFF6F6F6),
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: 22.0,
          ),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 32.0, bottom: 20.0),
                    child: const Image(
                      image: AssetImage('assets/images/lodo1.png'),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        TaskCardWidget(
                          title: "Get Started!!",
                          desc:
                              "HELLO THIS THE BASIC DEMO TO_DO_APP where you can add and delete your daily to do's",
                        ),
                        TaskCardWidget(
                          title: "Get Started!!",
                          desc:
                              "HELLO THIS THE BASIC DEMO TO_DO_APP where you can add and delete your daily to do's",
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 24.0,
                right: 0.0,
                child: GestureDetector(
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Taskpage()),
                    ),
                  },
                  child: Container(
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                      color: Color(0xFF7349FE),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: const Image(
                      image: AssetImage('assets/images/add_.png'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
