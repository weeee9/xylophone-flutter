import 'dart:ui';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: TextButton(
              onPressed: () async {
                final player = AudioPlayer();
                DartPluginRegistrant.ensureInitialized();
                player.play(
                  AssetSource('note1.wav'),
                );
              },
              child: const Text("click me"),
            ),
          ),
        ),
      ),
    );
  }
}
