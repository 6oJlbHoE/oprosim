import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final count;
  final total;
  final onClearState;

  Result(
      {super.key,
      required this.count,
      required this.total,
      required this.onClearState});

  @override
  Widget build(BuildContext context) {
    String msg = '';
    Widget img;

    if (0 <= count && count <= 3) {
      msg = 'Ты плох, тренируйся';
      img = Image.asset('assets/images/bad.png');
    } else if (4 <= count && count <= 7) {
      msg = 'Неплохо, но надо лучше, тренируйся';
      img = Image.asset('assets/images/norm.png');
    } else {
      msg = 'Отлично, лучше не получится, но тренируйся';
      img = Image.asset('assets/images/good.png');
    }

    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              blurRadius: 15,
              spreadRadius: 0,
              offset: Offset(
                2,
                5,
              ),
            ),
          ],
          borderRadius: BorderRadius.circular(30),
          gradient: const LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
            Color(0xffffffff),
            Color(0xc10027c2),
            Color(0xfffc0000),
          ])),
      child: Column(
        children: [
          SizedBox(
            width: 120,
            height: 120,
            child: FittedBox(
              fit: BoxFit.contain,
              child: img,
            ),
          ),
          Text(
            msg,
            //style: Theme.of(context).textTheme.caption,
            textAlign: TextAlign.center,
          ),
          const Divider(
            color: Colors.white,
            thickness: 2,
          ),
          Text('Верно ответил на $count из $total вопросов!'),
          const Divider(
            color: Colors.white,
            thickness: 2,
          ),
          ElevatedButton(
              child: const Text(
                  'Пройти еще раз',
                style: TextStyle(fontSize: 22),
              ),
              onPressed: onClearState
          ),
        ],
      ),
    );
  }
}
