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

  Widget buildKey({required int soundNumber, required Color color}) {
    return Expanded(
      child: Container(
        color: color,
        child: MaterialButton(
          enableFeedback: false,
          onPressed: () {
            playSound(soundNumber);
          },
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
              buildKey(soundNumber: 1, color: Colors.blue.shade300),
              buildKey(soundNumber: 2, color: Colors.blue.shade400),
              buildKey(soundNumber: 3, color: Colors.blue.shade500),
              buildKey(soundNumber: 4, color: Colors.blue.shade600),
              buildKey(soundNumber: 5, color: Colors.blue.shade700),
              buildKey(soundNumber: 6, color: Colors.blue.shade800),
              buildKey(soundNumber: 7, color: Colors.blue.shade900),
            ],
          ),
        ),
      ),
    );
  }
}
