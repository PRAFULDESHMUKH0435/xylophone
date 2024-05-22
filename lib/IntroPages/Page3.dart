import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              child:Lottie.asset('assets/animations/anim_1.json'),
            ),
            Text('“Music is the strongest form of magic.”',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}
