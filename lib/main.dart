import 'package:alubank/screens/home.dart';
import 'package:alubank/themes/my_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ItBank());
}

class ItBank extends StatelessWidget {
  const ItBank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ItBank',
      theme: MyTheme,
      home: const Home(),
    );
  }
}
