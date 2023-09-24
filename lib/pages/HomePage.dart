import 'package:flutter/material.dart';
import 'package:quiz/models/Question.dart';
import 'package:quiz/widgets/answer.dart';
import 'package:quiz/widgets/progressBar.dart';
import 'package:quiz/widgets/quiz.dart';
import 'package:quiz/widgets/result.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final QuestionData data = QuestionData();
  int _countResult = 0;
  int _questionIndex = 0;

  List<Icon> _icons = [];

  void _clearState() => setState((){
    _questionIndex = 0;
    _countResult = 0;
    _icons = [];
  });

  void _onChangeAnswer(bool isCorrect) => setState(() {
    if(isCorrect){
      _icons.add(Icon(Icons.brightness_1, color: Color(0xffb65eba)));
      _countResult++;
    }else{
      _icons.add(Icon(Icons.brightness_1, color: Color(0xff122e57)));
    }
    _questionIndex++;
  });

  final whiteTextStyle = const TextStyle(
    color: Colors.white,
    fontSize: 24,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      //  title: Text('Тестирование'),
      //),
      body: SafeArea(
        child: DefaultTextStyle.merge(
          style: whiteTextStyle,
          child: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              color: const Color(0xFF670163),
              image: DecorationImage(
                image: AssetImage('assets/images/bkb.jpg'),
                fit: BoxFit.cover,
              )
            ),
            child: Column(
              children: [
                ProgressBar(icons: _icons, count: _questionIndex, total: data.questions.length,),
                _questionIndex < data.questions.length
                ?Quiz(
                  index: _questionIndex,
                  questoinData: data,
                  onChangeAnswer: _onChangeAnswer,
                )
                :Result(count: _countResult, total: data.questions.length, onClearState: _clearState),


                //ElevatedButton(onPressed: () => setState(() => _questionIndex++), child: Text('Continue'),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}