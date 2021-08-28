import 'package:flutter/material.dart';
import 'package:flutter_project/LoginScreen.dart';
import 'package:flutter_project/home_screen.dart';
import 'package:flutter_project/messenger_screen.dart';

void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MessengerScreen(),
    );
  }
}


