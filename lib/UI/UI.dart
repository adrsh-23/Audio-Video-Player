import 'package:adv_music_player/UI/bug.dart';
import 'package:flutter/material.dart';
import 'audio.dart';
import 'video.dart';

// ignore: camel_case_types
class homeapp extends StatelessWidget {
  Widget build(BuildContext context) {
    // FlutterStatusbarcolor.setStatusBarColor(Colors.ligh[50]);
    return Scaffold(
        appBar: AppBar(
          title: Text("Audio/Video Player"),
          leading: Icon(Icons.music_note),
          backgroundColor: Colors.purpleAccent,
        ),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://fsb.zobj.net/crop.php?r=Vbr94ks65474DQLntJnowIiCMUtsdAzea4nAhwyhqmFv2u7FDrjsrM5YUDAfSjnKx_t5UO6D9Uw66NnbrP4i78HZsKg_29WeDIwMxHjA6tlD2icRdmRMZPQshcffS2As9ZUNaeX8SJCFVoekBPva2302WK1RBIm_GYUocSxzx2drc66dYw0Q4K9FWXY"),
                fit: BoxFit.cover,
              ),
            ),
            // color: Colors.blue[300],
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(
                    height: 200,
                  ),
                  Container(
                    width: 150,
                    height: 80,
                    child: RaisedButton(
                      color: Colors.grey,
                      onPressed: () => Navigator.push(context,
                          new MaterialPageRoute(builder: (context) => audio())),
                      child: Text(
                        "Audio",
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Container(
                    width: 150,
                    height: 80,
                    child: RaisedButton(
                      color: Colors.grey,
                      onPressed: () => Navigator.push(context,
                          new MaterialPageRoute(builder: (context) => video())),
                      child: Text(
                        "Video",
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(height: 130),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      RaisedButton(
                          onPressed: () => Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => bug())),
                          child: Text("Report A Bug")),
                    ],
                  ),
                ],
              ),
            )));
  }
}
