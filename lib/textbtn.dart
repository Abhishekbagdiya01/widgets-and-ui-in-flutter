import 'package:flutter/material.dart';

class TextBtn extends StatefulWidget {
  const TextBtn({super.key});

  @override
  State<TextBtn> createState() => TextBtnState();
}

class TextBtnState extends State<TextBtn> {
  // bool isClicked = false;
  Color mColor = Colors.cyan;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: TextButton(
              onPressed: () {
                // isClicked = !isClicked;
                // print(isClicked);

                mColor = Colors.green;
                setState(() {});
              },
              child: Text(
                "Click here",
                style: TextStyle(color: Colors.red),
              )),
          //color: isClicked ? Colors.green : Colors.cyan,
          color: mColor,
        ),
      ),
    );
  }
}
