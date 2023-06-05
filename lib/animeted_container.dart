import 'dart:math';

import 'package:flutter/material.dart';

class AnimeContainer extends StatefulWidget {
  const AnimeContainer({super.key});

  @override
  State<AnimeContainer> createState() => _AnimeContainerState();
}

class _AnimeContainerState extends State<AnimeContainer> {
  var mWidth = 100.0;
  var mHeight = 100.0;
  var mColor = Colors.green;
  bool isBig = false;
  var radius = 11.0;
  var randomColor = 1;
  var colors = [
    Colors.amber,
    Colors.red,
    Colors.blue,
    Colors.cyan,
    Colors.green,
    Colors.grey,
    Colors.teal,
    Colors.orange,
    Colors.lime,
    Colors.blueGrey,
    Colors.pink,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 1),
              height: mHeight,
              width: mHeight,
              decoration: BoxDecoration(
                  color: mColor, borderRadius: BorderRadius.circular(radius)),
            ),
            ElevatedButton(
                onPressed: () {
                  if (isBig) {
                    change();
                    isBig = false;
                    // print(randomColor);
                    // print(mHeight);
                    // print(mWidth);
                    // print(radius);
                  } else {
                    // change();
                    isBig = true;
                    mHeight = 100;
                    mWidth = 100;
                    radius = 11;
                    mColor = Colors.blueGrey;
                    print(randomColor);
                    print(mHeight);
                    print(mWidth);
                    print(radius);
                  }
                  setState(() {});
                },
                child: Text("Click"))
          ],
        ),
      ),
    );
  }

  void change() {
    mHeight = Random().nextDouble() * 300;
    mWidth = Random().nextDouble() * 300;
    radius = Random().nextDouble() * 100;
    randomColor = Random().nextInt(10);
    mColor = colors[randomColor];
    print(randomColor);
    print(mHeight);
    print(mWidth);
    print(radius);
  }
}
