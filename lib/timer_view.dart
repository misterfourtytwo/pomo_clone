import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TimerView extends StatefulWidget {
  TimerView({Key? key}) : super(key: key);

  @override
  _TimerViewState createState() => _TimerViewState();
}

class _TimerViewState extends State<TimerView> {
  // Duration get timeLeft => Duration(minutes: 25);
  Duration timeLeft = Duration(minutes: 25);
  bool isRunning = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 42),

        TimeLeftWidget(
          timeLeft: timeLeft,
          currentRound: 1,
          roundsCount: 4,
        ),
        // TimeLeftProgressBar(),
        isRunning ? StopButton() : RunButton(),
      ],
    );
  }
}

class StopButton extends StatelessWidget {
  const StopButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 20),
            spreadRadius: 10,
            blurRadius: 20,
          )
        ],
        color: Colors.red,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: TextButton(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Text('Give Up'.toUpperCase()),
          ),
          onPressed: () {}),
    );
  }
}

class RunButton extends StatelessWidget {
  const RunButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class TimeLeftWidget extends StatelessWidget {
  const TimeLeftWidget({
    Key? key,
    required this.timeLeft,
    required this.currentRound,
    required this.roundsCount,
  }) : super(key: key);

  final Duration timeLeft;
  final int roundsCount;
  final int currentRound;

  @override
  Widget build(BuildContext context) {
    int secondsLeft = timeLeft.inSeconds % 60;
    return Row(
      children: [
        SizedBox(width: 6),
        Icon(
          Icons.timer,
          color: Colors.red,
        ),
        SizedBox(width: 6),
        Text(
          '${timeLeft.inMinutes}:${secondsLeft < 10 ? '0' + secondsLeft.toString() : secondsLeft}',
          style: TextStyle(
            fontFeatures: [FontFeature.tabularFigures()],
            color: Colors.red,
            fontSize: 22,
          ),
        ),
        SizedBox(width: 6),
        Spacer(),
        Text(
          '$currentRound of $roundsCount',
          style: TextStyle(
            fontFeatures: [FontFeature.tabularFigures()],
            color: Colors.red,
            fontSize: 22,
          ),
        ),
        SizedBox(width: 6),
      ],
    );
  }
}

// [1, 2,3] ;
// <int>{1, 2, 3,};
// <int, String>{
//   1: 'a',
// };
// ...movies.map((movie) => MovieWidget(movie)) => [Text, MovieWidget(movies[0]),  MovieWidget(movies[1]),]