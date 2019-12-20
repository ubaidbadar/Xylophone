import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final player = AudioCache();
  Expanded playMusic(int soundIndex, Color color) {
    return Expanded(
      child: FlatButton(
        child: Text(''),
        color: color,
        onPressed: () {
          player.play('note$soundIndex.wav');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            playMusic(1, Colors.red),
            playMusic(2, Colors.green),
            playMusic(3, Colors.blue),
            playMusic(4, Colors.yellow),
            playMusic(5, Colors.purple),
            playMusic(6, Colors.pink),
            playMusic(7, Colors.teal[400]),
          ],
        ),
      ),
    );
  }
}
