import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Xylophone extends StatefulWidget {
  const Xylophone({super.key});

  @override
  State<Xylophone> createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  void playSound(int soundNum) async {
    final audioPlayer = AudioPlayer();
    await audioPlayer.play(AssetSource("note$soundNum.wav"));
  }

  Widget buildKey(int soundNum, Color color) {
    return Expanded(
        child: TextButton(
      style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(color),
          shape: const MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.zero))),
      onPressed: () {
        playSound(soundNum);
      },
      child: const Text(''),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
