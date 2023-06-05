import 'package:flutter/material.dart';
import 'package:wscube_ui_tasks/3d_drawer.dart';
import 'package:wscube_ui_tasks/about_us.dart';
import 'package:wscube_ui_tasks/alertbox_and_bottomsheet.dart';
import 'package:wscube_ui_tasks/animation_builder.dart';
import 'package:wscube_ui_tasks/animeted_container.dart';
import 'package:wscube_ui_tasks/available_wallpaper_screen.dart';
import 'package:wscube_ui_tasks/bmi_calculator.dart';
import 'package:wscube_ui_tasks/bmi_calculator2.dart';
import 'package:wscube_ui_tasks/contact_us.dart';
import 'package:wscube_ui_tasks/custom_alertbox.dart';
import 'package:wscube_ui_tasks/drawer_&_tabs.dart';
import 'package:wscube_ui_tasks/full_wallpaper_screen.dart';
import 'package:wscube_ui_tasks/hero_animation.dart';
import 'package:wscube_ui_tasks/lottie_animation.dart';
import 'package:wscube_ui_tasks/mathematics_opration.dart';
import 'package:wscube_ui_tasks/mr_tip_calculator.dart';
import 'package:wscube_ui_tasks/tip_calculator2.dart';
import 'package:wscube_ui_tasks/tween_animation.dart';
import 'package:wscube_ui_tasks/wallpaper_app.dart';
import 'package:wscube_ui_tasks/whatsapp_ui.dart';
import 'package:wscube_ui_tasks/wheel_scroll_view.dart';

class HomeApp extends StatelessWidget {
  HomeApp({super.key});
  final screens = [
    AboutUsUi(),
    BMICalUi(),
    BMICAL2(),
    ContactUs(),
    MrTipCalculatorUi(),
    WallpaperAppUi(),
    AvailableWallpaperScreen(),
    FullWallpaperScreen(),
    MathematicsOp(),
    SplashScreen(),
    TiPCalV2(),
    AnimeContainer(),
    ListWheel(),
    TweenAnim(),
    LottieAnimation(),
    DrawerNTabs(),
    Cool3dDrawer(),
    AlertBoxNBottomSheet(),
    HeroAnim(),
    AnimBuilder(),
    CustomAlertBox(),
  ];
  final screenTitle = [
    "About Us",
    "BMI Calculator",
    "BMI Calculator with height in Ft & inches",
    "Contact us",
    "Mr Tip Calculator",
    "Wallpaper Home Page",
    "Available Wallpaper Screen",
    "Wallpaper in Full Screen",
    "Basic Arithmetic operations",
    "Whats App UI",
    "Tip CalCulator 2",
    "Animated Container",
    "List wheel scroll view",
    "Tween Animation",
    "Lottie Animation",
    "Drawer & appbar ",
    "Cool 3d drawer",
    "Alert box and Bottom sheet",
    "Hero Animation",
    "Animation builder ",
    "Custom made alertbox"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              "WS CUBE TASKS",
              style: TextStyle(fontSize: 30, color: Colors.cyan),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              child: ListView.builder(
                  itemCount: screens.length,
                  itemBuilder: (context, index) {
                    return TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext Context) {
                          return screens[index];
                        }));
                      },
                      child: Card(
                        color: Colors.cyan,
                        child: ListTile(
                          title: Center(
                            child: Text(
                              screenTitle[index],
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
