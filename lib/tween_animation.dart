import 'package:flutter/material.dart';

class TweenAnim extends StatefulWidget {
  const TweenAnim({super.key});

  @override
  State<TweenAnim> createState() => _TweenAnimState();
}

class _TweenAnimState extends State<TweenAnim>
    with SingleTickerProviderStateMixin {
  late Animation<double> animSize;
  late var animColor;
  late AnimationController animCtrl;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    animCtrl = AnimationController(duration: Duration(seconds: 5), vsync: this);
    animSize = Tween<double>(begin: 0, end: 200).animate(animCtrl)
      ..addListener(() {
        setState(() {});
      });

    animColor =
        ColorTween(begin: Colors.blue, end: Colors.yellow).animate(animCtrl);

    animCtrl.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        height: animSize.value,
        width: animSize.value,
        decoration: BoxDecoration(
            color: animColor.value, borderRadius: BorderRadius.circular(10)),
      )),
    );
  }
}
