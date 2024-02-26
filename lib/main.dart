import 'package:flutter/material.dart';
import 'package:my_todo_app/My_ToDo_list/homeScreen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My ToDo',
      home: homeScreenState(),
      debugShowCheckedModeBanner: false,
    );
  }
}