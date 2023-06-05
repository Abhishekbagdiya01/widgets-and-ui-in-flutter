import 'package:flutter/material.dart';

class MathematicsOp extends StatefulWidget {
  MathematicsOp({super.key});

  @override
  State<MathematicsOp> createState() => _MathematicsOpState();
}

class _MathematicsOpState extends State<MathematicsOp> {
  var num1 = TextEditingController();

  var num2 = TextEditingController();

  dynamic res = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(45.0),
                child: Text(
                  "$res",
                  style: TextStyle(fontSize: 35),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: TextField(
                          controller: num1,
                          decoration: InputDecoration(
                            hintText: "Enter Value",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: TextField(
                          controller: num2,
                          decoration: InputDecoration(hintText: "Enter Value"),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextButton(
                            onPressed: () {
                              res = double.parse(num1.text) +
                                  double.parse(num2.text);

                              setState(() {});
                            },
                            child: Text(
                              "+",
                              style: TextStyle(fontSize: 40),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              res = res = double.parse(num1.text) -
                                  double.parse(num2.text);
                              setState(() {});
                            },
                            child: Text(
                              "-",
                              style: TextStyle(fontSize: 40),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              res = double.parse(num1.text) *
                                  double.parse(num2.text);
                              setState(() {});
                            },
                            child: Text(
                              "x",
                              style: TextStyle(fontSize: 40),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              res = double.parse(num1.text) /
                                  double.parse(num2.text);
                              setState(() {});
                            },
                            child: Text(
                              "/",
                              style: TextStyle(fontSize: 40),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
