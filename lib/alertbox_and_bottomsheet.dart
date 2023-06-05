import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertBoxNBottomSheet extends StatelessWidget {
  const AlertBoxNBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    void _ShowDialog() {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("This is an Alert Dialog Box"),
            content: Text("Here is some random content and more."),
            actions: [
              MaterialButton(
                onPressed: () {},
                child: Text("Ok"),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Cancel"),
              )
            ],
          );
        },
      );
    }

    void _ShowBottomSheet() {
      showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        context: context,
        builder: (context) {
          return Container(
            height: 400,
            decoration: BoxDecoration(
              color: Colors.deepPurple[100],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            ),
          );
        },
      );
    }

    return Scaffold(
      body: Container(
        color: Colors.deepPurple[200],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: MaterialButton(
                  color: Colors.deepPurple[100],
                  onPressed: () {
                    _ShowDialog();
                  },
                  child: Text("Alert Box")),
            ),
            Center(
              child: MaterialButton(
                  color: Colors.deepPurple[100],
                  onPressed: () {
                    _ShowBottomSheet();
                  },
                  child: Text("Bottom Sheet")),
            ),
          ],
        ),
      ),
    );
  }
}
