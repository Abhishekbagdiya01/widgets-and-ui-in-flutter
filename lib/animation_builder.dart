import 'dart:developer';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimBuilder extends StatefulWidget {
  const AnimBuilder({super.key});
  @override
  State<AnimBuilder> createState() => _AnimBuilderState();
}

class _AnimBuilderState extends State<AnimBuilder>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 4))
          ..repeat(reverse: true);
    //_controller.forward();
    _controller.addListener(() {
      print("$_controller");
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedBuilder(
            animation: _controller,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            ),
            builder: (context, child) {
              return Transform.scale(
                scale: _controller.value,
                child: child,
              );
            },
          ),
          SizedBox(
            height: 10,
          ),
          AnimatedBuilder(
            animation: _controller,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.deepPurple,
            ),
            builder: (context, child) {
              return Transform.rotate(
                angle: _controller.value * 2 * pi,
                child: child,
              );
            },
          ),
          SizedBox(
            height: 10,
          ),
          AnimatedBuilder(
            animation: _controller,
            child: AnimatedBuilder(
              animation: _controller,
              child: AnimatedBuilder(
                animation: _controller,
                child: Lottie.network(
                    "https://assets10.lottiefiles.com/packages/lf20_mrg9xhbm.json",
                    height: 200,
                    width: 200),
                builder: (context, child) {
                  return Transform.translate(
                      child: child,
                      offset: Offset(_controller.value * 200, 0.0));
                },
              ),
              builder: (context, child) {
                return Transform.scale(
                  child: child,
                  scale: _controller.value,
                );
              },
            ),
            builder: (context, child) {
              return Transform.rotate(child: child, angle: _controller.value);
            },
          ),
          AnimatedBuilder(
            animation: _controller,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.orange,
            ),
            builder: (context, child) {
              return Transform.translate(
                offset: Offset(
                    _controller.value * (-200), _controller.value * (-200)),
                child: child,
              );
            },
          ),
          SizedBox(
            height: 10,
          ),
          AnimatedBuilder(
            animation: _controller,
            child: Text(
              "Hey,\n   Look at me i'm rotating ! ",
              style: TextStyle(fontSize: 34, color: Colors.orange),
            ),
            builder: (context, child) {
              return Transform.rotate(
                child: child,
                angle: _controller.value * 2 * pi,
              );
            },
          ),
          // MaterialButton(
          //   color: Colors.blue,
          //   onPressed: () {
          //     _controller.forward();
          //   },
          //   child: Text("Press"),
          // ),
        ],
      ),
    );
  }
}
