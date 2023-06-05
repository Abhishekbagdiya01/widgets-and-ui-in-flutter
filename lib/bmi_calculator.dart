import 'dart:math';

import 'package:flutter/material.dart';

class BMICalUi extends StatefulWidget {
  const BMICalUi({super.key});

  @override
  State<BMICalUi> createState() => _BMICalUiState();
}

class _BMICalUiState extends State<BMICalUi> {
  final ageController = TextEditingController();
  final heightController = TextEditingController();
  final weightController = TextEditingController();
  var cmTom = 0.0;
  var bmi = 0.0;
  String headline = "HEALTH APP";
  String title = "CALCULATE YOUR \nBMI";
  String outputText = "";
  var bgColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: bgColor,
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SizedBox(
                //   height: 30,
                // ),
                Text(
                  headline,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade400,
                      fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  outputText,
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 150,
                ),
                Container(
                  // color: Colors.red,
                  height: 200,
                  width: 400,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 70,
                              width: 100,
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Gender",
                                  label: Text(
                                    "Gender",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 70,
                              width: 100,
                              child: TextField(
                                controller: ageController,
                                decoration: InputDecoration(
                                  hintText: "22",
                                  label: Text(
                                    "Age",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 70,
                              width: 100,
                              child: TextField(
                                controller: heightController,
                                decoration: InputDecoration(
                                  hintText: "170",
                                  label: Text(
                                    "Height",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 70,
                              width: 100,
                              child: TextField(
                                controller: weightController,
                                decoration: InputDecoration(
                                  hintText: "50",
                                  label: Text(
                                    "Weight",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      cmTom = double.parse(heightController.text) / 100;
                      bmi = double.parse(weightController.text) / pow(cmTom, 2);

                      //  bmi.toStringAsFixed(4);

                      if (bmi > 18.5 && bmi < 25) {
                        outputText = "YOUR ARE NORMAL";
                        bgColor = Colors.greenAccent;
                      } else if (bmi > 25 && bmi < 30) {
                        outputText = "YOUR ARE OVERWEIGHT";
                        bgColor = Colors.yellow;
                      } else if (bmi > 30) {
                        outputText = "YOUR ARE OBESITY";
                        bgColor = Colors.amber;
                      } else if (bmi < 30) {
                        outputText = "YOUR ARE UNDERWEIGHT";
                        bgColor = Colors.cyan;
                      }
                      print("your bmi is :$bmi");
                      setState(() {
                        headline = "YOUR RESULT ";
                        title = "${bmi.toStringAsFixed(4)}";
                      });
                    },
                    child: SizedBox(
                      height: 40,
                      width: 200,
                      child: Center(
                        child: Text(
                          "CALCULATE",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
