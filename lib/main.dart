import 'package:flutter/material.dart';
import 'package:wscube_ui_tasks/about_us.dart';
import 'package:wscube_ui_tasks/animeted_container.dart';
import 'package:wscube_ui_tasks/available_wallpaper_screen.dart';
import 'package:wscube_ui_tasks/bmi_calculator.dart';
import 'package:wscube_ui_tasks/bmi_calculator2.dart';
import 'package:wscube_ui_tasks/contact_us.dart';
import 'package:wscube_ui_tasks/drawer_&_tabs.dart';
import 'package:wscube_ui_tasks/full_wallpaper_screen.dart';
import 'package:wscube_ui_tasks/home.dart';
import 'package:wscube_ui_tasks/lottie_animation.dart';

import 'package:wscube_ui_tasks/mathematics_opration.dart';
import 'package:wscube_ui_tasks/mr_tip_calculator.dart';
import 'package:wscube_ui_tasks/textbtn.dart';
import 'package:wscube_ui_tasks/tip_calculator2.dart';
import 'package:wscube_ui_tasks/tween_animation.dart';
import 'package:wscube_ui_tasks/wallpaper_app.dart';
import 'package:wscube_ui_tasks/whatsapp_ui.dart';
import 'package:wscube_ui_tasks/wheel_scroll_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var selectedTheme = ThemeMode.dark;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Flutter Demo',
      themeMode: ThemeMode.light,
      darkTheme: ThemeData.dark(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeApp(),
    );
  }
}
