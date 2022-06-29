import 'package:class_8_assn/pages/languages.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'bottomNavBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Languages(),
      locale: Locale('en', 'US'), //default language
      fallbackLocale: Locale('en', 'US'), //will work when default will fail
      title: 'ImportMe',
      theme: ThemeData(
        brightness: Brightness.dark,
        textTheme: TextTheme(
            headline6: TextStyle(fontSize: 30, color: Colors.amber),
            bodyText2: TextStyle(fontSize: 30, color: Colors.amber)),
        scaffoldBackgroundColor: Colors.white,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.amber,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10)))),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(primary: Colors.amber)),
      ),

      home: BottomNavBar(),
    );
  }
}
