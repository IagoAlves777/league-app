import 'package:flutter/material.dart';
import 'package:leagueapp/ChampionAudio.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          "IMAGEM AQUI",
          style: TextStyle(fontFamily: 'AmaticSC Bold', fontSize: 35.0),
        ),
      ),
    );
  }

  Widget buildListView(BuildContext context) {
    return Expanded(
          child: ListView(
                children: <Widget>[
                  ListTile(
                    title: Text('Lulu',style: TextStyle(
                      fontSize: 26,
                      fontFamily: 'AmaticSC Bold',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    ),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ChampionAudio())
                    ),
                  )
                ],
              ),
    );
  }

  TextField buildTextField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
                
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
}
