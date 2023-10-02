import 'package:flutter/material.dart';
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
                BuildXylo(Colors.purpleAccent),
                BuildXylo(Colors.indigo),
                BuildXylo(Colors.blue),
                BuildXylo(Colors.green),
                BuildXylo(Colors.yellow),
                BuildXylo(Colors.orange),
                BuildXylo(Colors.red),
                BuildXylo(Colors.purpleAccent),
                BuildXylo(Colors.indigo),
                BuildXylo(Colors.blue),
                BuildXylo(Colors.green),
                BuildXylo(Colors.yellow),
                BuildXylo(Colors.orange),
                BuildXylo(Colors.red),
              ],
          ),
        ),
    );
  }

  Widget BuildXylo(Color xycolor){
    return Expanded(
      child: InkWell(
        onTap: (){
          SnackBar(content: Text('Hi'),);
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
