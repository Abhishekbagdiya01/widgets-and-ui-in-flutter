import 'package:flutter/material.dart';
import 'package:wscube_ui_tasks/drawer.dart';

class DrawerNTabs extends StatefulWidget {
  DrawerNTabs({super.key});

  @override
  State<DrawerNTabs> createState() => _DrawerNTabsState();
}

class _DrawerNTabsState extends State<DrawerNTabs> {
  var popupmenu = ["Profile", "Setting", "Report", "Exit"];

  var popUpMenuOptions = [
    SettingPage(),
  ];

  int crntIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.cyan, Colors.pink])),
          ),
          title: Text(
            "Pocket Shop",
            // style: TextStyle(fontSize: 15),
          ),
          bottom: TabBar(tabs: [
            Tab(
              child: Text("Men"),
            ),
            Tab(
              child: Text("Women"),
            ),
            Tab(
              child: Text("Kids"),
            ),
            Tab(
              child: Text("Sports"),
            )
          ]),
          actions: [
            PopupMenuButton(
              itemBuilder: (context) => popupmenu
                  .map(
                    (e) => PopupMenuItem(
                      child: InkWell(
                        onTap: () {
                          popUpMenuOptions
                              .map(
                                (e) => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => e,
                                  ),
                                ),
                              )
                              .toList();
                        },
                        child: Text(e),
                      ),
                    ),
                  )
                  .toList(),
            )
          ],
        ),
        drawer: Drawer(child: DrawerApp()),
        body: TabBarView(children: [
          Center(
            child: Text("Men"),
          ),
          Center(
            child: Text("Women"),
          ),
          Center(
            child: Text("Kids"),
          ),
          Center(
            child: Text("Sports"),
          ),
        ]),
        bottomNavigationBar: BottomNavigationBar(
            onTap: (value) {
              crntIndex = value;
              setState(() {});
            },
            currentIndex: crntIndex,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.catching_pokemon), label: "Categories"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.gamepad), label: "Explore"),
            ],
            backgroundColor: Colors.cyan),
      ),
    );
  }
}

class SettingPage extends StatefulWidget {
  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.cyan, Colors.pink])),
        ),
        title: Text(
          "SETTING",
          // style: TextStyle(fontSize: 15),
        ),
      ),
      body: ListView(children: [
        ListTile(
          title: Text("Dark mode"),
          trailing: Switch(
              value: isSwitched,
              onChanged: (value) {
                isSwitched = !isSwitched;
                setState(() {});
              }),
        )
      ]),
    );
  }
}
