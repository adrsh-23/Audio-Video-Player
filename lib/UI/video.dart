import 'package:adv_music_player/UI/videoPlayer.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class video extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Video"),
          leading: Icon(Icons.videocam),
          backgroundColor: Colors.purpleAccent,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://swall.teahub.io/photos/small/276-2761196_background-image-for-weather-app.jpg"),
                  fit: BoxFit.cover)),
          child: Column(
            children: <Widget>[
              Column(
                children: <Widget>[],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Center(
                    child: Container(
                      padding: const EdgeInsets.only(
                        left: 29,
                        right: 29,
                        top: 40,
                        bottom: 40,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: new SamplePlayer(),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  RaisedButton(
                    child: Text("Go back"),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
