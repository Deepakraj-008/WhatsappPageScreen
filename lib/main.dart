import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Home/HomePage/Widgets/HomePage.dart';

void main() {
  Get.put(ThemeController()); // Register controller
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<ThemeController>();

    return Obx(() {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: themeController.themeMode.value,
        home: HomeScreen(),
      );
    });
  }
}


// class MyApp extends StatefulWidget {
//   const MyApp({super.key});
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   ThemeMode _themeMode = ThemeMode.system;
//
//   void _updateTheme(ThemeMode mode) {
//     setState(() => _themeMode = mode);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData.light(),
//       darkTheme: ThemeData.dark(),
//       themeMode: _themeMode,
//       home: HomeScreen(currentMode: _themeMode, onThemeChanged: _updateTheme)
//     );
//   }
// }



class ThemeController extends GetxController {
  Rx<ThemeMode> themeMode = ThemeMode.system.obs;

  void changeTheme(ThemeMode mode) {
    themeMode.value = mode;
    Get.changeThemeMode(mode); // Applies it globally
  }
}

