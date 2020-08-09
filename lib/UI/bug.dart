import 'package:adv_music_player/UI/UI.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: camel_case_types
class bug extends StatelessWidget {
  var subject, body;
  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print(' could not launch $command');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Report A Bug"),
          leading: Icon(Icons.email),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://androidexample365.com/content/images/2019/03/Android-BackgroundChart.png"),
                  fit: BoxFit.cover)),
          child: Column(
            children: <Widget>[
              TextField(
                autocorrect: true,
                textAlign: TextAlign.center,
                decoration: InputDecoration(hintText: "Enter the Subject"),
                onChanged: (sub) => {subject = sub},
              ),
              // const SizedBox(height: 20),
              TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(hintText: "Enter the Body"),
                onChanged: (bod) => {body = bod},
              ),
              const SizedBox(height: 40),
              RaisedButton(
                child: Text("Submit"),
                onPressed: () => customLaunch(
                    'mailto:adrshcool200061@gmail.com?subject=$subject&body=$body'),
              ),
              const SizedBox(height: 40),
              Column(
                children: <Widget>[
                  RaisedButton(
                      onPressed: () => Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => homeapp())),
                      child: Text("Go back")),
                ],
              )
            ],
          ),
        ));
  }
}
