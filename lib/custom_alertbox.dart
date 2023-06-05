import 'package:flutter/material.dart';

class CustomAlertBox extends StatefulWidget {
  CustomAlertBox({super.key});

  @override
  State<CustomAlertBox> createState() => _CustomAlertBoxState();
}

class _CustomAlertBoxState extends State<CustomAlertBox> {
  bool isVisible = false;
  var bgColor = Colors.deepPurple[200];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: bgColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Visibility(
              //   visible: isVisible,
              //   child: Container(
              //     height: 300,
              //     width: 300,
              //     child: Card(
              //         elevation: 1,
              //         child: Padding(
              //           padding: const EdgeInsets.all(15.0),
              //           child: Column(
              //             children: [
              //               TextFormField(
              //                   decoration:
              //                       InputDecoration(labelText: "Title")),
              //               SizedBox(
              //                 height: 10,
              //               ),
              //               TextFormField(
              //                   maxLines: 3,
              //                   decoration:
              //                       InputDecoration(labelText: "Content")),
              //               SizedBox(
              //                 height: 10,
              //               ),
              //               Row(
              //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //                 children: [
              //                   MaterialButton(
              //                     onPressed: () {},
              //                     child: Text("Ok"),
              //                   ),
              //                   MaterialButton(
              //                     onPressed: () {
              //                       isVisible = !isVisible;
              //                       setState(() {});
              //                     },
              //                     child: Text("Cancel"),
              //                   ),
              //                 ],
              //               )
              //             ],
              //           ),
              //         )),
              //   ),
              // ),
              isVisible
                  ? Container(
                      height: 300,
                      width: 300,
                      child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          elevation: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                TextFormField(
                                    decoration:
                                        InputDecoration(labelText: "Title")),
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                    maxLines: 3,
                                    decoration:
                                        InputDecoration(labelText: "Content")),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    MaterialButton(
                                      onPressed: () {},
                                      child: Text("Ok"),
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        isVisible = !isVisible;
                                        bgColor = Colors.deepPurple[200];
                                        setState(() {});
                                      },
                                      child: Text("Cancel"),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )),
                    )
                  : MaterialButton(
                      color: Colors.deepPurple[100],
                      onPressed: () {
                        isVisible = !isVisible;
                        bgColor = Color.fromARGB(255, 34, 30, 48);
                        setState(() {});
                      },
                      child: Text("Click"),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
