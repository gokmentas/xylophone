import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Widget buildKey(int sound, Color color) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: () {
            playSound(sound);
          },
          child: const Text(''),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(1, Colors.red),
              buildKey(2, Colors.orange),
              buildKey(3, Colors.yellow),
              buildKey(4, Colors.green),
              buildKey(5, Colors.teal),
              buildKey(6, Colors.blue),
              buildKey(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
