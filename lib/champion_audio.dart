import 'package:flutter/material.dart';
import 'package:leagueapp/button.dart';
import 'models/champions.dart';

class ChampionAudio extends StatefulWidget {

  @override
  _ChampionAudioState createState() => _ChampionAudioState();
}

class _ChampionAudioState extends State<ChampionAudio>  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("Lulu joke",style: TextStyle(
          fontSize: 26,
          fontFamily: 'AmaticSC Bold',
          fontWeight: FontWeight.bold,
          color: Colors.white,
          )
        ),
      ),
      body: new Center(
        child: new AudioButton(Champion('Lulu','https://vignette.wikia.nocookie.net/leagueoflegends/images/1/15/Lulu.laugh2.ogg/revision/latest?cb=20130505145305','https://vignette.wikia.nocookie.net/leagueoflegends/images/e/e4/Lulu_OriginalCircle.png/revision/latest?cb=20171112101526','https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSWyeuH6VDKIVVgpaxVq1ZbnlBK6J_JxGq1SDHoA_o-Akr6FZhr')
        ),
      ),
    );
  }
}