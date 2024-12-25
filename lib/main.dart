import "package:flutter/material.dart";

void main() {
  runApp(const MyMusicApp());
}

class MyMusicApp extends StatelessWidget {
  const MyMusicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MusicPlayScreen(),
    );
  }
}

class MusicPlayScreen extends StatelessWidget {
  const MusicPlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        elevation: 4.0,
        title: Text(
          "mMusic Player",
          style: TextStyle(fontWeight: FontWeight.bold, color:Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 200,
                    width:200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('assets/images/mmusic.webp'),
                        fit: BoxFit.cover,),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text("Song Title", style:TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height:5),
                  Text("Artist Name", style:TextStyle(fontSize: 15, fontStyle: FontStyle.italic))
                ]
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
            child: Column(
              children: [
                Slider(
                  value: 0.5,
                  onChanged: (value) {},
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.skip_previous)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.play_arrow)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.skip_next)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
