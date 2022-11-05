import 'package:flutter/material.dart';
import 'FirstScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  //test change in vscode
  static const _title = 'First Page';
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: _title, home: FirstScreen());
  }
}
