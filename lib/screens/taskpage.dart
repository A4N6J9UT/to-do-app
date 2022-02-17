import 'package:flutter/material.dart';
import '../widgets.dart';

class Taskpage extends StatefulWidget {
  @override
  _TaskpageState createState() => _TaskpageState();
}

class _TaskpageState extends State<Taskpage> {
  @override
  Widget build(BuildContext) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(children: [
            Padding(
              padding: EdgeInsets.only(top: 24.0, bottom: 6.0),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: EdgeInsets.all(24.0),
                      child: Image(
                        image: AssetImage('assets/images/back_arrow.png'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter task title...',
                        border: InputBorder.none,
                      ),
                      style: TextStyle(
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF211551),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter the description...',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 24.0),
                ),
              ),
            ),
            Todowidget(),
            Todowidget(),
          ]),
        ),
      ),
    );
  }
}
