import 'dart:async';

import 'package:flutter/material.dart';

class WhatsAppUI extends StatefulWidget {
  WhatsAppUI({
    super.key,
  });

  @override
  State<WhatsAppUI> createState() => _WhatsAppUIState();
}

class _WhatsAppUIState extends State<WhatsAppUI> {
  //final name = ["Rick sanchez", "Thanos", "Prince vegeta", "Son Goku"];
  // final msg = [];
  // final img = [];
  // final time = [];
  // final unread = [];

  var dummyList = [
    {
      "name": "Rick sanchez",
      "message": "Wubba Lubba Dub Dub",
      "time": "10:15 A.M",
      "unreadMsg": "30",
      "image":
          "https://images.cinemaexpress.com/uploads/user/imagelibrary/2022/10/10/original/Rick_and_morty.jpg?w=400&dpr=2.6"
    },
    {
      "name": "Thanos",
      "message": "A Small Price to Pay for Salvation",
      "time": "10:16 A.M",
      "unreadMsg": "20",
      "image": "https://i.postimg.cc/JhymJJy4/75390440.jpg",
    },
    {
      "name": "Prince vegeta",
      "message": "I wanna be a super saiyan 😭😭",
      "time": "10:17 A.M",
      "unreadMsg": "4",
      "image":
          "https://i.pinimg.com/originals/3e/d9/05/3ed905e4838c775065c9b22d9752c4c6.jpg"
    },
    {
      "name": "Son Goku",
      "message": "KAA-ME-HAAAAA-MEEE-HAAAAAAAA",
      "time": "12:30 P.M",
      "unreadMsg": "67",
      "image":
          "https://i.pinimg.com/originals/25/32/82/253282dfc3789b21078bf31982e39b4e.jpg",
    },
    {
      "name": "Darth Vadar",
      "message": "You turned her against me 😡😡 ",
      "time": "12:34 P.M",
      "unreadMsg": "1",
      "image": "https://m.media-amazon.com/images/I/51H--lU9YGL.jpg",
    },
    {
      "name": "Thor",
      "message": "Im Thor Son of odin",
      "time": "01:15 P.M",
      "unreadMsg": "7",
      "image": "https://i.postimg.cc/J45F2tBp/chris-hemsworth-thor-4-1200.jpg",
    },
    {
      "name": "Spider Man",
      "message": "I'm your friendly neighbourhood spiderman",
      "time": "01:45 P.M",
      "unreadMsg": "1",
      "image":
          "https://i.postimg.cc/nL4TCPY0/spider-man-no-way-home-header.jpg",
    },
    {
      "name": "Frieza",
      "message": "Dance for us monkey :)",
      "time": "02:09",
      "unreadMsg": "3",
      "image":
          "https://i.pinimg.com/originals/c2/49/e6/c249e6a3d2a4344ab666a9fb2eefe163.jpg"
    },
    {
      "name": "Hulk",
      "message": "HULK SMASH !",
      "time": "02:33",
      "unreadMsg": "3",
      "image": "https://i.postimg.cc/dQrNhnw7/maxresdefault-5.jpg"
    },
    {
      "name": "Black Panther",
      "message": "WAKANDA FOREVER",
      "time": "02:49 P.M",
      "unreadMsg": "2",
      "image":
          "https://i.postimg.cc/pL03q7f2/977e57043787edecc39eeb55fee3d040.jpg",
    },
    {
      "name": "Tony Stark",
      "message": "Iam Iron Man!",
      "time": "3:00 P.M",
      "unreadMsg": "3",
      "image": "https://i.postimg.cc/HkmS0mZb/Iron-Man-Endgame-Profile.jpg",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "WhatsApp",
          style: TextStyle(fontSize: 20),
        ),
        backgroundColor: Color(0xff075e54),
        elevation: 0,
        actions: [Icon(Icons.camera_alt), Icon(Icons.search), Icon(Icons.menu)],
      ),
      body: Column(
        children: [
          Container(
            color: Color(0xff075e54),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.group,
                    size: 35,
                    color: Colors.white54,
                  ),
                  SizedBox(
                    width: 110,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "CHATS",
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 50, 247, 155),
                                fontWeight: FontWeight.bold),
                          ),
                          CircleAvatar(
                            radius: 12,
                            backgroundColor: Color.fromARGB(255, 50, 247, 155),
                            child: Text(
                              "11",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          )
                        ]),
                  ),
                  Text(
                    "STATUS",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white54,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "CALLS",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white54,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
            // color: Colors.red,
            child: ListView(
                scrollDirection: Axis.vertical,
                children: dummyList
                    .map(
                      (e) => Card(
                        elevation: 1,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return WhatsAppChatPage(
                                      username: e["name"].toString());
                                },
                              ),
                            );
                          },
                          child: ListTile(
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  NetworkImage(e["image"].toString()),
                            ),
                            title: Text(
                              e["name"].toString(),
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              e["message"].toString(),
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            trailing: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  e["time"].toString(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                CircleAvatar(
                                  radius: 15,
                                  backgroundColor:
                                      Color.fromARGB(255, 50, 247, 155),
                                  child: Center(
                                    child: Text(
                                      e["unreadMsg"].toString(),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList()
                //   Card(
                //   elevation: 1,
                //   child: ListTile(
                //     leading: CircleAvatar(
                //       radius: 30,
                //       backgroundImage: NetworkImage(""),
                //     ),
                //     title: Text(
                //       "",
                //       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                //     ),
                //     subtitle: Text(
                //       "WUBBA LUBBA DUB DUB",
                //       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                //     ),
                //     trailing: Column(
                //       mainAxisAlignment: MainAxisAlignment.spaceAround,
                //       children: [
                //         Text(
                //           "9:00 A.M",
                //           style: TextStyle(
                //             fontWeight: FontWeight.bold,
                //           ),
                //         ),
                //         CircleAvatar(
                //           radius: 12,
                //           backgroundColor: Color.fromARGB(255, 50, 247, 155),
                //           child: Text(
                //             "33",
                //           ),
                //         )
                //       ],
                //     ),
                //   ),
                // ),

                ),
          )
        ],
      ),
    );
  }
}

class WhatsAppChatPage extends StatelessWidget {
  // WhatsAppChatPage({super.key});
  var username;

  WhatsAppChatPage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff075e54),
        title: Text("$username"),
      ),
      //backgroundColor: Colors.cyanAccent,
      body: SafeArea(
        child: Center(
            child: Text(
          "Chat with $username",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState;
    // TODO: implement initState
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return WhatsAppUI();
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: Icon(
                Icons.whatsapp,
                size: 100,
                color: Color(0xff075e54),
              ),
            ),
            Center(
              child: Text(
                "From META",
                style: TextStyle(
                  color: Color(0xff075e54),
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
