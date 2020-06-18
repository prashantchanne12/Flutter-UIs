import 'package:budgetappui/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Budget UI',
      theme: ThemeData(
        primaryColor: Color(0xffe84393),
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
