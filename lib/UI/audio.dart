import 'package:adv_music_player/UI/UI.dart';
import 'package:adv_music_player/UI/song/alanwalker.dart';
import 'package:adv_music_player/UI/song/fortminor.dart';
import 'package:adv_music_player/UI/song/linkinpark.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'song/eminem.dart';

// ignore: camel_case_types
class audio extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Audio"),
          leading: Icon(Icons.music_note),
          backgroundColor: Colors.purpleAccent,
        ),
        body: Center(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://us.123rf.com/450wm/getgg/getgg1902/getgg190200264/116692150-abstract-color-gradient-background-for-mobile-app-or-web-.jpg?ver=6"),
                    fit: BoxFit.cover)),
            child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    const SizedBox(height: 30),
                    Container(
                      decoration: BoxDecoration(
                          // color: Colors.amberAccent,
                          border: Border.all(
                              width: 5, color: Colors.deepPurpleAccent),
                          borderRadius: BorderRadius.circular(10)),
                      height: 80,
                      width: 150,
                      child: RaisedButton(
                          color: Colors.purpleAccent[100],
                          onPressed: () => Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => eminem())),
                          child: Text(
                            "Lose Yourself",
                            textAlign: TextAlign.center,
                          )),
                    ),
                    const SizedBox(height: 30),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 5, color: Colors.deepPurpleAccent),
                          borderRadius: BorderRadius.circular(10)),
                      width: 150,
                      height: 80,
                      child: RaisedButton(
                        color: Colors.purpleAccent[100],
                        onPressed: () => Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => fort())),
                        child: Text(
                          "Remember The Name",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Container(
                      width: 150,
                      height: 80,
                      decoration: BoxDecoration(
                          border:
                              Border.all(width: 5, color: Colors.deepPurple),
                          borderRadius: BorderRadius.circular(10)),
                      child: RaisedButton(
                          color: Colors.purpleAccent[100],
                          onPressed: () => Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => newdivide())),
                          child:
                              Text("New Divide", textAlign: TextAlign.center)),
                    ),
                    const SizedBox(height: 30),
                    Container(
                      width: 150,
                      height: 80,
                      decoration: BoxDecoration(
                          border:
                              Border.all(width: 5, color: Colors.deepPurple),
                          borderRadius: BorderRadius.circular(10)),
                      child: RaisedButton(
                          color: Colors.purpleAccent[100],
                          onPressed: () => Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => faded())),
                          child: Text("Faded", textAlign: TextAlign.center)),
                    ),
                    const SizedBox(height: 50),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    RaisedButton(
                        color: Colors.lightBlueAccent,
                        onPressed: () => Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => homeapp())),
                        child: Text("Go back")),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
