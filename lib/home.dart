import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:music_player_demo/audio/audio_from_assets.dart';
import 'package:music_player_demo/audio/audio_from_storage.dart';
import 'package:music_player_demo/audio/music_player_package.dart';
import 'package:music_player_demo/video/video_from_assets.dart';
import 'package:music_player_demo/video/video_from_storage.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Media Player"),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text("Play Video From Assets"),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return VideoFromAssets();
                  }));
                },
              ),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                child: Text("Play Video From Local"),
                onPressed: () {
                  _pickVideoFileFrom(context);
                },
              ),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                child: Text("try music player package"),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => MusicPlayerPackagePage()));
                },
              ),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                child: Text("Play Audio From Assets"),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return AudioFromAssets();
                  }));
                },
              ),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                child: Text("Play Audio From Local"),
                onPressed: () {
                  _pickAudioFileFrom(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  _pickVideoFileFrom(context) async {
    File videoFile = await FilePicker.getFile(type: FileType.video);
    if (videoFile == null) {
      print("Video Picked is null");
    }
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return VideoFromLocalStorage(
        file: videoFile,
      );
    }));
  }

  _pickAudioFileFrom(context) async {
    File audioFile = await FilePicker.getFile(type: FileType.audio);
    if (audioFile == null) {
      print("Audio Picked is null");
    }
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return AudioFromLocalStorage(
        file: audioFile,
      );
    }));
  }
}
