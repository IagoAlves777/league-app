import 'package:flutter/material.dart';
import 'package:leagueapp/button.dart';
import 'package:leagueapp/champion_audio.dart';
import 'package:leagueapp/list_champions.dart';

import 'dictionary_champions.dart';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'dart:async';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {
  var items = List<String>();
  var text = "IMAGEM AQUI";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("League of joke",
            style: TextStyle(
              fontSize: 26,
              fontFamily: 'AmaticSC Bold',
              fontWeight: FontWeight.bold,
              color: Colors.white,
            )),
        backgroundColor: Colors.black87,
        //titleSpacing: 20,
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.black87,
          child: Column(
            children: <Widget>[
              buildTextField(),
              buildListView(context),
            ],
          ),
        ),
      ),
      body: Center(
        child: Text(
          text,
          style: TextStyle(fontFamily: 'AmaticSC Bold', fontSize: 35.0),
        ),
      ),
    );
  }

  Widget buildListView(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical:8),
              child: ListTile(
                 leading: CircleAvatar(
                 backgroundImage: NetworkImage("https://ddragon.leagueoflegends.com/cdn/9.21.1/img/champion/Kaisa.pngw"),
                ),
                 onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChampionAudio(myDictcionaryOfChamphinons['aatrox']))
                ),
                  title: Text(items[index],
                  style: TextStyle(
                    fontSize: 26,
                    fontFamily: 'AmaticSC Bold',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),),
              ),
            );
          }
      ),
    );
  }

  Widget buildTextField() {
    return Padding(
      padding: const EdgeInsets.only(top:16),
      child: TextField(
        onChanged: (value) {
          filterSearchResults(value);
        },
        style: (TextStyle(
          fontSize: 26,
          fontFamily: 'AmaticSC Bold',
          fontWeight: FontWeight.bold,
          color: Colors.white,
        )),
        decoration: InputDecoration(
            hintStyle: TextStyle(
              fontSize: 26,
              fontFamily: 'AmaticSC Bold',
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            hintText: 'Champions',
            border: InputBorder.none,
            enabled: true,
            icon: Icon(
              Icons.search,
              size: 26,
              color: Colors.white,
            )),
      ),
    );
  }

  void filterSearchResults(String query) {
    List<String> dummySearchList = List<String>();
    dummySearchList.addAll(duplicateItems);

    if (query.isNotEmpty) {
      List<String> dummyListData = List<String>();
      dummySearchList.forEach((item) {
        if ( item.toLowerCase().contains(query.toLowerCase())) {
          dummyListData.add(item);
        }
      });
      setState(() {
        items.clear();
        items.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        items.clear();
        items.addAll(duplicateItems);
      });
    }
  }
}
