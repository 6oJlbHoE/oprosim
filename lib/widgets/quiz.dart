import 'package:flutter/material.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final index;
  final questoinData;
  final onChangeAnswer;

  Quiz({
    super.key,
    this.index,
    this.questoinData,
    this.onChangeAnswer
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          child: Text(
            questoinData.questions[index].title,
            //style: Theme.of(context).textTheme.caption,
          ),
        ),
        ...questoinData.questions[index].answers.map(
                (value) => Answer(
              title: value['answer'],
              isCorrect: value.containsKey('isCorrect') ? true : false,
              onChangeAnswer: onChangeAnswer,
            )
        ).toList(),
      ],
    );
  }
}
