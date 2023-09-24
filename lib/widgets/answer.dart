import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String title;
  final isCorrect;
  final Function onChangeAnswer;

  Answer({
    super.key,
    required this.title,
    this.isCorrect,
    required this.onChangeAnswer
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChangeAnswer(isCorrect),
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 50,
          vertical: 5,
        ),
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 10,
              offset: Offset(1, 1),
            ),
          ],
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(colors: <Color>[
              Color(0xffa07fec),
              Color(0xff870160),
              Color(0xffe16b5c),],
          ),
        ),
        child: Text(
            title,
          textAlign: TextAlign.center,
          //style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}
