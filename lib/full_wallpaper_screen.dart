import 'package:flutter/material.dart';

class FullWallpaperScreen extends StatelessWidget {
  const FullWallpaperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5GFQBPDkpIRHoHJlTKxjxxcB_MEZz6dfGlw&usqp=CAU",
            fit: BoxFit.fill,
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            height: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: Icon(
                        Icons.info_outline_rounded,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Info",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: Icon(
                        Icons.download,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Save",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: Icon(
                        Icons.brush,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Apply",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
