import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class MemainkanMusik extends StatefulWidget {
  const MemainkanMusik({key}) : super(key: key);

  @override
  State<MemainkanMusik> createState() => _MemainkanMusikState();
}

class _MemainkanMusikState extends State<MemainkanMusik> {
  AudioPlayer audioPlayer;
  String durasi = "00:00:00";

  _MemainkanMusikState() {
    audioPlayer = AudioPlayer();
    audioPlayer.onAudioPositionChanged.listen((event) {
      setState(() {
        durasi = event.toString();
      });
    });
    audioPlayer.setReleaseMode(ReleaseMode.LOOP);
  }

  void playSound(String url) async {
    await audioPlayer.seek(const Duration(seconds: 30));
    await audioPlayer.play(url);
  }

  void pauseSound() async {
    await audioPlayer.pause();
  }

  void stopSound() async {
    await audioPlayer.stop();
  }

  void resumeSound() async {
    await audioPlayer.resume();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Playing Music'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RaisedButton(
              onPressed: () {
                playSound(
                  'http://commondatastorage.googleapis.com/codeskulptor-demos/DDR_assets/Kangaroo_MusiQue_-_The_Neverwritten_Role_Playing_Game.mp3'
                );
              },
              child: const Text('Play'),
            ),
            RaisedButton(
              onPressed: () {
                pauseSound();
              },
              child: const Text('Pause'),
            ),
            RaisedButton(
              onPressed: () {
                stopSound();
              },
              child: const Text('Stop'),
            ),
            RaisedButton(
              onPressed: () {
                resumeSound();
              },
              child: const Text('Resume'),
            ),
            Text(
              durasi,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
