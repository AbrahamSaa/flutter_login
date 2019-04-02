import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

class App extends StatelessWidget{
  Widget build(context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Log in',
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}