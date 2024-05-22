import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'constants.dart';
import 'intropage.dart';
class SplashScreen extends StatefulWidget {

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>IntroPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              child:Lottie.asset('assets/animations/anim_1.json'),
            ),
            Text('Xylophone ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)
          ],
        ),
      ),
    );
  }
}
