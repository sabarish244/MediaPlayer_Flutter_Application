import 'chewie_list_item.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('Video & Audio Player'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                  width: double.infinity,
                  height: 50,
                  child: Card(
                      color: Colors.green,
                      //shape: Border(right: BorderSide(color: Colors.amber, width: 5)),
                      shape: BeveledRectangleBorder(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Wanna Laugh here comes Tom and Jerry !!',
                              style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ]))),
              ChewieListItem(
                videoPlayerController: VideoPlayerController.asset(
                  'assets/videos/tomandjerry.mp4',
                ),
                looping: true,
              ),
              Container(
                  width: double.infinity,
                  height: 50,
                  child: Card(
                      color: Colors.amberAccent,
                      //shape: Border(right: BorderSide(color: Colors.amber, width: 5)),
                      shape: BeveledRectangleBorder(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              ' A Treat For Your Eyes !!',
                              style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ]))),
              ChewieListItem(
                // This URL doesn't exist - will display an error
                videoPlayerController: VideoPlayerController.network(
                  'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
                ),
              ),
              Container(
                  width: double.infinity,
                  height: 50,
                  child: Card(
                      color: Colors.redAccent,
                      //shape: Border(right: BorderSide(color: Colors.amber, width: 5)),
                      shape: BeveledRectangleBorder(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Some Best Music For Your Motivation !!',
                              style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ]))),
              Container(
                width: double.infinity,
                height: 205,
                child: Card(
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(),
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'assets/images/mot3.jpg',
                          fit: BoxFit.cover,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RaisedButton(
                                child: Text("Play"),
                                onPressed: () {
                                  print('Click!');
                                  var audio = AudioCache();
                                  audio.play('audios/apnatimeaayega.mp3');
                                }),
                          ],
                        ),
                      ],
                    ),
                  ),
                  elevation: 7,
                ),
              ),
            ],
          ),
        ));
  }
}
