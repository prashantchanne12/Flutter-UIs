import 'package:flutter/material.dart';
import 'package:socialmediaui/screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Social Media',
      theme: ThemeData(
        primaryColor: Color(0xff0984e3),
      ),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
