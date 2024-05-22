import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:xylophone/homepage.dart';
import 'IntroPages/Page2.dart';
import 'IntroPages/Page3.dart';
import 'IntroPages/page1.dart';
class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  PageController _controller = PageController();
  bool islastpage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: bgcolor,
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index){
              setState(() {
                islastpage=(index==2);
              });
            },
            children: [
              Page1(),
              Page2(),
              Page3()
            ],
          ),
          Container(
            alignment: Alignment(0,0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                    onTap:(){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
                    },
                    child: Text('Skip',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
                Container(
                  child: SmoothPageIndicator(
                      count: 3,
                      effect: WormEffect(), controller: _controller,  // your preferred effect
                  ),
                ),
                islastpage?
                InkWell(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
                    },
                    child: Text('Done',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),))
                :InkWell(
                    onTap: (){
                      _controller.nextPage(duration: (Duration(seconds: 1)), curve: Curves.easeInCubic);
                    },
                    child: Text('Next',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
