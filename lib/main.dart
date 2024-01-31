import 'package:dodam/screens/Home.dart';
import 'package:dodam/screens/Tabs.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Solution Challenge Dodam',
      themeMode: ThemeMode.light,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Color(0xffffb2a5),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
        ),
        textTheme: TextTheme(
          bodyText1: TextStyle(
            fontSize: 15,
            color: Colors.black,
          ),
        ),
      ),
      home: TabScreen(),
    );
  }
}
