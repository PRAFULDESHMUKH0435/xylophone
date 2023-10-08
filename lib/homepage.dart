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
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Text('Xylophone',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: CircleAvatar(
              radius: 18,
              child: Image.network('https://cdn-icons-png.flaticon.com/512/25/25231.png'),
            ),
          )
        ],
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
    );
  }

  Widget BuildXylo(Color xycolor,String sound){
    return Expanded(
      child: InkWell(
        onTap: (){
          int sec =5;
          while(sec>0){
            final player = AudioPlayer();
            player.play(AssetSource(sound));
            sec--;
          }

        },
        child: Container(
          margin: EdgeInsets.all( 10.0),
          height: 50,
          color: xycolor,
        ),
      ),
    );
  }

  Widget ShowSnackBar(){
    return const SnackBar(
      duration: Duration(seconds: 5),
      backgroundColor: Colors.red,
      content: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Icon(Icons.surround_sound,color: Colors.white),
          Text('Simple SnackBar',style: TextStyle(color: Colors.white),)
        ],
      ),
    );
  }
}
