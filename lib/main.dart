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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  color: Colors.red,
                  child: TextButton(
                    onPressed: () {
                      playSound(1);
                    },
                    child: const Text(''),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.orange,
                  child: TextButton(
                    onPressed: () {
                      playSound(2);
                    },
                    child: const Text(''),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.yellow,
                  child: TextButton(
                    onPressed: () {
                      playSound(3);
                    },
                    child: const Text(''),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                  child: TextButton(
                    onPressed: () {
                      playSound(4);
                    },
                    child: const Text(''),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.teal,
                  child: TextButton(
                    onPressed: () {
                      playSound(5);
                    },
                    child: const Text(''),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.blue,
                  child: TextButton(
                    onPressed: () {
                      playSound(6);
                    },
                    child: const Text(''),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.purple,
                  child: TextButton(
                    onPressed: () {
                      playSound(7);
                    },
                    child: const Text(''),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
