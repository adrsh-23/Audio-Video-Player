import 'package:adv_music_player/UI/audio.dart';
import 'package:adv_music_player/UI/song/alanwalker.dart';
import 'package:adv_music_player/UI/song/fortminor.dart';
import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

// ignore: camel_case_types
class eminem extends StatelessWidget {
  Widget build(BuildContext context) {
    final assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(
      Audio("assets/audio/lose.mp3"),
    );
    play() {
      print("Play the song");
      assetsAudioPlayer.play();
    }

    pause() {
      print("Pause the song");
      assetsAudioPlayer.pause();
    }

    stop() {
      print("song stopped");
      assetsAudioPlayer.stop();
    }

    return Scaffold(
        appBar: AppBar(
          title: Text("Lose Yourself"),
          backgroundColor: Colors.purpleAccent,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/v774-tang-58_2.jpg?bg=transparent&con=3&cs=srgb&dpr=1&fm=jpg&ixlib=php-3.1.0&q=80&usm=15&vib=3&w=1300&s=82601eddfc790c9d1d1c71ca4c0094fe"),
                  fit: BoxFit.cover)),
          // color: Colors.blueAccent,
          child: Column(
            children: <Widget>[
              // const SizedBox(
              //   height: 40,
              // ),
              Center(
                child: Container(
                    // width: 300,
                    // height: 200,
                    decoration: BoxDecoration(
                        border: Border.all(width: 5, color: Colors.black)),
                    child: Image.asset(
                      "assets/images/8mile1.jpg",
                      fit: BoxFit.cover,
                    )),
              ),
              const SizedBox(
                height: 40,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.navigate_before),
                      iconSize: 50,
                      onPressed: () => Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => faded())), // change
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_right),
                      onPressed: play,
                      iconSize: 50,
                    ),
                    IconButton(
                      icon: Icon(Icons.pause),
                      onPressed: pause,
                      iconSize: 50,
                    ),
                    IconButton(
                      icon: Icon(Icons.stop),
                      onPressed: stop,
                      iconSize: 50,
                    ),
                    IconButton(
                        icon: Icon(Icons.navigate_next),
                        iconSize: 50,
                        onPressed: () => {
                              // assetsAudioPlayer.stop(),
                              Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) => fort())),
                            })
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  RaisedButton(
                    child: Text("Home"),
                    onPressed: () => Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => audio())), // change
                  )
                ],
              )
            ],
          ),
        ));
  }
}
