import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAnimation extends StatefulWidget {
  LottieAnimation({super.key});

  @override
  State<LottieAnimation> createState() => _LottieAnimationState();
}

class _LottieAnimationState extends State<LottieAnimation> {
  var mAlign = Alignment.topLeft;
  bool isAlign = false;
  var mHeight = 80.0;
  var mWeight = 80.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  isAlign = !isAlign;
                  mAlign = isAlign ? Alignment.topRight : Alignment.topLeft;
                  mHeight = isAlign ? 200 : 80;
                  mWeight = isAlign ? 200 : 80;
                  setState(() {});
                },
                child: AnimatedAlign(
                  alignment: mAlign,
                  duration: Duration(seconds: 2),
                  child: Lottie.network(
                      "https://assets5.lottiefiles.com/packages/lf20_mrg9xhbm.json",
                      height: mHeight,
                      width: mWeight),
                ),
              ),
              InkWell(
                onTap: () {
                  isAlign = !isAlign;
                  mAlign = isAlign ? Alignment.topLeft : Alignment.topLeft;
                  mHeight = isAlign ? 200 : 80;
                  mWeight = isAlign ? 200 : 80;
                  setState(() {});
                },
                child: AnimatedAlign(
                  alignment: mAlign,
                  duration: Duration(seconds: 2),
                  child: Lottie.network(
                      "https://assets6.lottiefiles.com/packages/lf20_iwmd6pyr.json",
                      height: mHeight,
                      width: mWeight),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
