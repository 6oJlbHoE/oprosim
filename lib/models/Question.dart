import 'package:flutter/foundation.dart';

class Question{
  late final String title;
  late final List<Map> answers;

  Question({
    required this.title,
    required this.answers
  });
}

class QuestionData{
  final _data = [
    Question(
      title: 'Какая самая сильная геройка доты второй?',
      answers: [
        {'answer' : 'BARA', 'isCorrect' : 1},
        {'answer' : 'Инбосик',},
        {'answer' : 'Динозавр',},
        {'answer' : 'Wraith King',},
      ]
    ),
    Question(
        title: 'Твое любимое аниме?',
        answers: [
          {'answer' : 'Наруто',},
          {'answer' : 'Токийский гуль', 'isCorrect' : 1},
          {'answer' : '50 оттенков светлого',},
          {'answer' : 'Необъятный океан',},
        ]
    ),
    Question(
        title: 'Как ты относишься к коричневым людям?',
        answers: [
          {'answer' : 'Положительно',},
          {'answer' : 'Люблю их',},
          {'answer' : 'Отрицаю', 'isCorrect' : 1},
          {'answer' : 'Уважаю',},
        ]
    ),
    Question(
        title: 'Какой из этих видов цикра ты бы хотел посетить со своим парнем?',
        answers: [
          {'answer' : 'Современный',},
          {'answer' : 'Ледовый', 'isCorrect' : 1},
          {'answer' : 'Ночной',},
          {'answer' : 'Детский',},
        ]
    ),
    Question(
        title: 'Какой ты тор?',
        answers: [
          {'answer' : 'Медовик',},
          {'answer' : 'Наполеон',},
          {'answer' : 'Тирамису',},
          {'answer' : 'Сырный', 'isCorrect' : 1},
        ]
    ),
    Question(
        title: 'Сколько дуэлей ты выиграл за свою карьеру?',
        answers: [
          {'answer' : '0',},
          {'answer' : '4',},
          {'answer' : '19',},
          {'answer' : '0.5', 'isCorrect' : 1},
        ]
    ),
    Question(
        title: 'Сколько друзей у тебя было в школе?',
        answers: [
          {'answer' : 'Не было',},
          {'answer' : 'Сто симнадцать',},
          {'answer' : '2', 'isCorrect' : 1},
          {'answer' : '117',},
        ]
    ),
    Question(
        title: 'Как часто ты навещаешь свою мать?',
        answers: [
          {'answer' : 'Каждый день', 'isCorrect' : 1},
          {'answer' : 'Никогда',},
          {'answer' : 'Раз в сутки',},
          {'answer' : 'Раз в неделю',},
        ]
    ),
    Question(
        title: 'Какое у тебя политическое убеждение?',
        answers: [
          {'answer' : 'Анархистское',},
          {'answer' : 'Капиталистическое',},
          {'answer' : 'Ханди',},
          {'answer' : 'Монархистское', 'isCorrect' : 1},
        ]
    )
  ];

  List<Question> get questions => [..._data];
}