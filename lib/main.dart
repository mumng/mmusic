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
        backgroundColor: Colors.purpleAccent,
        elevation: 4.0,
        title: Text(
          "mMusic Player",
          style: TextStyle(fontWeight: FontWeight.bold, color:Colors.white),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple, Colors.purpleAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/mmusic.webp'),
              radius: 100,
            ),
            SizedBox(height: 20),
            Text(
                "Song Title",
                style:TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                ),
            ),
            SizedBox(height:5),
            Text(
                "Artist Name",
                style:TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.white54
                )
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
              child: Column(
                children: [
                  Slider(
                    value: 0.5,
                    onChanged: (value) {},
                    activeColor: Colors.white,
                    inactiveColor: Colors.grey,
                  ),
                  SizedBox(height:10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.fast_rewind), iconSize:35,),
                      IconButton(onPressed: () {}, icon: Icon(Icons.play_arrow), iconSize:35),
                      IconButton(onPressed: () {}, icon: Icon(Icons.skip_next), iconSize:35),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
