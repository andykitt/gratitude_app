import 'package:flutter/material.dart';
import 'package:liquid_swipe/Constants/Helpers.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main() {
  runApp(
    MyApp(),
  );
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  int page = 0;
  UpdateType updateType;

  final pages = [
    Container(
      padding: EdgeInsets.all(20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hi.',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 100,
                  color: Colors.white),
            ),
            Icon(
              Icons.chevron_left,
              color: Colors.white,
              size: 50,
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.lightBlue, Colors.lightBlueAccent])),
    ),
    Container(
      padding: EdgeInsets.all(50),
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 1.0),
          child: Center(
              child: Column(
            children: <Widget>[
              TextField(
                maxLines: 8,
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                    hintText: "What are you grateful for today?",
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                        color: Colors.white54,
                        fontSize: 50,
                        fontWeight: FontWeight.bold)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.add_circle_outline),
                    iconSize: 30,
                    color: Colors.white70,
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.favorite),
                    iconSize: 30,
                    color: Colors.pink,
                    onPressed: () {},
                  ),
                ],
              )
            ],
          ))),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.deepPurpleAccent])),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: LiquidSwipe(
            initialPage: 0,
            pages: pages,
            fullTransitionValue: 800,
            enableSlideIcon: false,
            enableLoop: false,
            positionSlideIcon: 0.5,
            waveType: WaveType.liquidReveal),
      ),
    );
  }

  pageChangeCallback(int page) {
    print(page);
  }

  updateTypeCallback(UpdateType updateType) {
    print(updateType);
  }
}
