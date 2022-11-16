import 'dart:ui';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSouncd(int soundNumber) {
    final player = AudioPlayer();

    DartPluginRegistrant.ensureInitialized();

    player.play(
      AssetSource('note$soundNumber.wav'),
    );
  }

  Expanded buildXylophoneKey(
      {required note, required int sound, required Color color}) {
    return Expanded(
      child: TextButton(
        onPressed: () => playSouncd(sound),
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        child: Text(
          note,
          style: const TextStyle(
            color: Colors.white,
          ),
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildXylophoneKey(note: "C", sound: 1, color: Colors.red),
              buildXylophoneKey(note: "D", sound: 2, color: Colors.orange),
              buildXylophoneKey(note: "E", sound: 3, color: Colors.yellow),
              buildXylophoneKey(note: "F", sound: 4, color: Colors.green),
              buildXylophoneKey(note: "G", sound: 5, color: Colors.teal),
              buildXylophoneKey(note: "A", sound: 6, color: Colors.blue),
              buildXylophoneKey(note: "B", sound: 7, color: Colors.purple)
            ],
          ),
        ),
      ),
    );
  }
}
