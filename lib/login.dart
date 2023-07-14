import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xo/game.dart';
import 'package:xo/playername.dart';

class login extends StatelessWidget {
  static const String routname = 'login';
  String playeronename = '';
  String playertwoname = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Login',
          style: Theme.of(context)
              .textTheme
              .headline1
              ?.copyWith(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height*.02,
          ),
          TextField(
            decoration: InputDecoration(label: Text('Player 1 ')),
            onChanged: (value) {
              playeronename = value;
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*.03,
          ),
          TextField(
            decoration: InputDecoration(label: Text('Player 1 ')),
            onChanged: (value) {
              playertwoname = value;
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*.1,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, game.routname,
                    arguments: playername(playeronename,playertwoname));
              },
              child: Text(
                "Go",
                style: Theme.of(context)
                    .textTheme
                    .headline1
                    ?.copyWith(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
