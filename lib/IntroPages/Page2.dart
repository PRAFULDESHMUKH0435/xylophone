import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              child:Lottie.asset('assets/animations/anim_2.json'),
            ),
            Text('“Where words leave off, music begins.”',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}
