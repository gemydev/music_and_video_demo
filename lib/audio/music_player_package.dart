import 'package:flutter/material.dart';
import 'package:music_player/music_player.dart';

class MusicPlayerPackagePage extends StatefulWidget {
  @override
  _MusicPlayerPackagePageState createState() => _MusicPlayerPackagePageState();
}

class _MusicPlayerPackagePageState extends State<MusicPlayerPackagePage> {
  MusicPlayer musicPlayer;

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Initializing the Music Player and adding a single [PlaylistItem]
  Future<void> initPlatformState() async {
    musicPlayer = MusicPlayer();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Music Player example app'),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              musicPlayer.play(MusicItem(
                trackName: 'TestDemo',
                albumName: 'Album name',
                artistName: 'Artist name',
                url: 'https://goo.gl/5RQjTQ',
                coverUrl: 'https://goo.gl/Wd1yPP',
                duration: Duration(seconds: 255),
              ));
            } ,
            child: Icon(
                Icons.play_arrow
            ),
          ),
        ),
      ),
    );
  }
}