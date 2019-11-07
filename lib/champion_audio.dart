import 'package:flutter/material.dart';
import 'package:leagueapp/button.dart';
import 'models/champion.dart';

class ChampionAudio extends StatefulWidget {
  final Champion champion;
  ChampionAudio(this.champion);

  @override
  _ChampionAudioState createState() => _ChampionAudioState(this.champion);
}

class _ChampionAudioState extends State<ChampionAudio>  {
  final Champion champion;
  _ChampionAudioState(this.champion);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text(champion.name + " joke",style: TextStyle(
          fontSize: 26,
          fontFamily: 'AmaticSC Bold',
          fontWeight: FontWeight.bold,
          color: Colors.white,
          )
        ),
      ),
      body: new Center(
        child: new AudioButton(champion),
      ),
    );
  }
}