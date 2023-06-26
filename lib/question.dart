import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;

  Question({Key? key, required this.question}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.red,
      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
      padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
      child: Text(
        question,
        style: TextStyle(
          fontSize: 18,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
