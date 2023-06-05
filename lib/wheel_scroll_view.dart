import 'dart:math';

import 'package:flutter/material.dart';

class ListWheel extends StatelessWidget {
  ListWheel({super.key});
  var colors = [
    Colors.amber,
    Colors.red,
    Colors.cyan,
    Colors.green,
    Colors.grey,
    Colors.pink,
    Colors.purple,
    Colors.orange,
    Colors.yellow,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: ListWheelScrollView(
            itemExtent: 80,
            // magnification: 20,

            //mainAxisAlignment: MainAxisAlignment.center,
            children: colors
                .map((e) => Center(
                      child: Container(
                        //height: 80,
                        width: MediaQuery.of(context).size.width * 0.6,
                        color: e,
                      ),
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
