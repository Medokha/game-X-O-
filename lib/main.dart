import 'package:flutter/material.dart';
import 'package:xo/game.dart';
import 'package:xo/login.dart';

void main() {
  runApp(MaterialApp(
    initialRoute:login.routname,
    routes: {
      game.routname: (c) => game(),
      login.routname: (c) => login(),

    },
    theme: ThemeData(textTheme: TextTheme(
      headline1: TextStyle(fontSize: 33,fontWeight: FontWeight.bold,color: Colors.black),
      headline2: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),

    )),
  )
  );
}


