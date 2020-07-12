import 'dart:async';

import 'package:flutter/material.dart';
import 'package:music_player/music_player.dart';
import 'package:music_player_demo/home.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MusicDemo",
      home: MyHomePage(),
    ));

/*
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
                onPressed: () {},
                child: Text("MusicPlayerPackage"),
              ),
              RaisedButton(
                onPressed: () {},
                child: Text("MusicPlayerPackage"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

 */
