import 'package:flutter/material.dart';

class TaskCardWidget extends StatelessWidget {
  final String title;
  final String desc;
  TaskCardWidget({required this.title, required this.desc});
  @override
  Widget build(BuildContext) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title ?? ("unamed task"),
            style: TextStyle(
              color: Color(0xFF211551),
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10.0,
            ),
            child: Text(
              desc ?? ("no description added"),
              style: TextStyle(
                fontSize: 16.0,
                color: Color(0xFF86829D),
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Todowidget extends StatelessWidget {
  final String text;
  final bool isDone;
  @override
  Widget build(BUildContext) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
      child: Row(children: [
        Container(
          height: 20,
          width: 20,
          margin: EdgeInsets.only(right: 16.0),
          decoration: BoxDecoration(
            color: Color(0xFF7349FE),
            borderRadius: BorderRadius.circular(6.0),
          ),
          child: Image(
            image: AssetImage('assets/imsges/check_icon.png'),
          ),
        ),
        Text(
          'Todo ',
          style: TextStyle(
            color: Color(0xFF211551),
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ]),
    );
  }
}
