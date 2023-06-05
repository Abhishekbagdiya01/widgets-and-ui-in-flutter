import 'dart:math';

import 'package:flutter/material.dart';

class Cool3dDrawer extends StatefulWidget {
  const Cool3dDrawer({Key? key}) : super(key: key);

  @override
  _DrawerAnimatedState createState() => _DrawerAnimatedState();
}

class _DrawerAnimatedState extends State<Cool3dDrawer> {
  double value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // ! Here Color Of Page Drawer !
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.pink, Colors.cyan, Colors.blue],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter)),
          ),

          // ! simple navigation menu !
          SafeArea(
              child: Container(
            width: 200,
            // color: Colors.amberAccent,
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                DrawerHeader(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 45,
                        backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmlz_R2G7kg3cX0a4H5Xth0kEmv02R9HUY7A&usqp=CAU"),
                        // child: Image.network(
                        //     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmlz_R2G7kg3cX0a4H5Xth0kEmv02R9HUY7A&usqp=CAU"),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text("Goku"),
                      ),
                    ],
                  ),
                ),
                const ListTile(
                  title: Text("Home"),
                  leading: Icon(Icons.home),
                ),
                const ListTile(
                  title: Text("Settings"),
                  leading: Icon(Icons.settings),
                ),
                const ListTile(
                  title: Text("About"),
                  leading: Icon(Icons.help),
                ),
                const ListTile(
                  title: Text("Exit"),
                  leading: Icon(Icons.exit_to_app),
                ),
              ],
            ),
          )),

          // ! : MainScreen
          TweenAnimationBuilder(
              // ? Here Change Animation
              curve: Curves.easeInOut,
              tween: Tween<double>(begin: 0, end: value),
              // ? and here change
              duration: const Duration(milliseconds: 500),
              builder: (_, double val, __) {
                return (Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.001)
                    ..setEntry(0, 3, 200 * val)
                    ..rotateY((pi / 6) * val),
                  child:
                      // !Scafold For MainScreen Here
                      Scaffold(
                    appBar: AppBar(
                      flexibleSpace: Container(
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                          colors: [Colors.pink, Colors.cyan, Colors.blue],
                          //begin: Alignment.bottomCenter,
                          // end: Alignment.topCenter
                        )),
                      ),
                      leading: IconButton(
                          onPressed: () {
                            setState(() {
                              value == 0 ? value = 1 : value = 0;
                            });
                          },
                          icon: Icon(Icons.menu)),
                      title: Text("3D drawer"),
                    ),
                    body: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("This is a cool 3d animated drawer :-)")
                        ],
                      ),
                    ),
                  ),
                ));
              }),

          //! Gesture For Slide
          GestureDetector(
            onHorizontalDragUpdate: (e) {
              if (e.delta.dx > 0) {
                setState(() {
                  value = 1;
                });
              } else {
                setState(() {
                  value = 0;
                });
              }
            },
          )
        ],
      ),
    );
  }
}
