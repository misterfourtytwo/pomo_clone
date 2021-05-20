import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pomodoro_clone/timer_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          title: Text(
            'Pomodoro',
            style: TextStyle(
              color: Color(0xFF03B5AC),
              fontWeight: FontWeight.w500,
              fontSize: 42.0,
              fontFeatures: [FontFeature.tabularFigures()],
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            ),
          ],
        ),
        body: TimerView());
  }
}
