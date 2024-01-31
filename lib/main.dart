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
    return const MaterialApp(
      home: TabScreen(),
    );
  }
}
