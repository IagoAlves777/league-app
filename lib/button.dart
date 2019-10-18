import 'package:flutter/material.dart';
import 'package:leagueapp/Homepage.dart';
import 'package:audioplayers/audioplayers.dart';
import 'ChampionAudio.dart';
import 'models/champions.dart';

class AudioButton extends StatelessWidget {
  final Champion champion;
  AudioButton(this.champion);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: (false),
      home: Scaffold(
        backgroundColor: Colors.white70,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: play,
                child: Center(
                    child: Image.network(champion.imageURL)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void play(){
    playAudio(champion.audio);
  }
}

Future<void> playAudio(String audioPath) async {
  int result = await AudioPlayer().play(audioPath);
  if (result == 1) {
    // success
  }
}