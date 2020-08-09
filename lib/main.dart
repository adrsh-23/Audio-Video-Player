import 'package:flutter/material.dart';
import 'UI/UI.dart';

main() => runApp(mainpg());

// ignore: camel_case_types
class mainpg extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homeapp(),
      debugShowCheckedModeBanner: false,
    );
  }
}
