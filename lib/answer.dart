import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function? selectedAnswer;
  final String? answer;

  const Answer({Key? key, this.selectedAnswer,this.answer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(

        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
        ),
        child: Text(answer!),
        onPressed: () {
          selectedAnswer!();
        },
      ),
    );
  }
}
