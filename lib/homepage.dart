import 'dart:async';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop:() async{
        bool? exitapp = await showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context){
              return AlertDialog(
                title: Text('Exit? '),
                content: Text('Are You Sure You Want To Exit ?'),
                actions: [
                  TextButton(onPressed: (){
                    Navigator.of(context).pop(true);
                  }, child: Text('Yes')),
                  TextButton(onPressed: (){
                    Navigator.of(context).pop(false);
                  }, child: Text('No')),
                ],
              );
            });
        return exitapp??false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text('Xylophone',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),

        ),
          body: Center(
            child: ListView(
                children: [
                  BuildXylo(Colors.purpleAccent,'sounds/sound_1.mp3'),
                  BuildXylo(Colors.indigo,'sounds/sound_2.mp3'),
                  BuildXylo(Colors.blue,'sounds/sound_3.mp3'),
                  BuildXylo(Colors.green,'sounds/sound_4.mp3'),
                  BuildXylo(Colors.yellow,'sounds/sound_5.mp3'),
                  BuildXylo(Colors.orange,'sounds/sound_6.mp3'),
                  BuildXylo(Colors.red,'sounds/sound_7.mp3'),
                  BuildXylo(Colors.purpleAccent,'sounds/sound_1.mp3'),
                  BuildXylo(Colors.indigo,'sounds/sound_2.mp3'),
                  BuildXylo(Colors.blue,'sounds/sound_3.mp3'),
                  BuildXylo(Colors.green,'sounds/sound_4.mp3'),
                  BuildXylo(Colors.yellow,'sounds/sound_5.mp3'),
                  BuildXylo(Colors.orange,'sounds/sound_6.mp3'),
                  BuildXylo(Colors.red,'sounds/sound_7.mp3'),
                ],
            ),
          ),
      ),
    );
  }


  Widget BuildXylo(Color xycolor,String sound){
    return Expanded(
      child: InkWell(
        onTap: (){
         final player = AudioPlayer();
         player.play(AssetSource(sound));
         Timer(Duration(seconds: 5), () {
           player.stop();
         });
        },
        child: Container(
          margin: EdgeInsets.all( 10.0),
          height: 50,
          color: xycolor,
        ),
      ),
    );
  }


}
