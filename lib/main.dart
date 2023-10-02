import 'package:flutter/material.dart';
import 'package:xylophone/constants.dart';
import 'package:xylophone/splashScreen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: bgcolor,
        primarySwatch: Colors.purple
      ),
      home: SplashScreen(),
    );
  }
}
