import 'package:flutter/material.dart';

class DrawerApp extends StatelessWidget {
  DrawerApp();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.cyan, Colors.pink],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 200,
                  child: Image.network(
                    "https://m.media-amazon.com/images/I/51H--lU9YGL.jpg",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Darth vader",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Divider(
                  thickness: 4,
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Contact(),
                        ));
                  },
                  leading: Icon(
                    Icons.contact_mail,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Contact us",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AppInfo(),
                        ));
                  },
                  leading: Icon(
                    Icons.info,
                    color: Colors.white,
                  ),
                  title: Text("App info",
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Review(),
                        ));
                  },
                  leading: Icon(
                    Icons.star,
                    color: Colors.white,
                  ),
                  title: Text("Review us on your app store",
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ReportAndFeedback(),
                        ));
                  },
                  leading: Icon(
                    Icons.report,
                    color: Colors.white,
                  ),
                  title: Text("Report and feedback",
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ),
                SizedBox(
                  height: 40,
                ),
                Text("Made with ❤️ by Abhishek")
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("Contect us"),
      ),
    );
  }
}

class AppInfo extends StatelessWidget {
  const AppInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("App Info"),
      ),
    );
  }
}

class Review extends StatelessWidget {
  const Review({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("Review us "),
      ),
    );
  }
}

class ReportAndFeedback extends StatelessWidget {
  const ReportAndFeedback({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("Report and Feedback"),
      ),
    );
  }
}
