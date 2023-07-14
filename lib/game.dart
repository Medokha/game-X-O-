import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xo/playername.dart';
import 'gamebut.dart';

class game extends StatefulWidget {
  static const String routname = 'game';

  @override
  State<game> createState() => _gameState();
}

class _gameState extends State<game> {
  List<String> board = [
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
  ];
  int play1=0;
  int play2=0;

  @override
  Widget build(BuildContext context) {
    playername args=  ModalRoute.of(context)?.settings.arguments as playername;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "X-O",
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        args.name1,
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * .05),
                      Text(
                        "$play1",
                        style: Theme.of(context).textTheme.headline1,
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        args.name2,
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * .05),
                      Text(
                        "$play2",
                        style: Theme.of(context).textTheme.headline1,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                gamebut(board[0], 0, onclick),
                gamebut(board[1], 1, onclick),
                gamebut(board[2], 2, onclick),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                gamebut(board[3], 3, onclick),
                gamebut(board[4], 4, onclick),
                gamebut(board[5], 5, onclick),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                gamebut(board[6], 6, onclick),
                gamebut(board[7], 7, onclick),
                gamebut(board[8], 8, onclick),
              ],
            ),
          ),
        ],
      ),
    );
  }

  int counter = 0;

  void onclick(index) {
    if (board[index].isNotEmpty) {
      return;
    }
    if (counter % 2 == 0) {
      board[index] = "X";
      counter++;
      bool win1 =checkwinner('X');
      if(win1){
        play1++;
        clear();
        counter=0;
      }
    } else {
      board[index] = "O";
      counter++;
      bool win2 =checkwinner('O');
      if(win2){
        play2++;
        clear();
        counter=0;
      }
    }
    if(counter==9){
      clear();
    }
    setState(() {});
  }

  bool checkwinner(String symmbol) {
    for (int i = 0; i < 3; i += 3) {
      if (board[i] == symmbol &&
          board[i + 1] == symmbol &&
          board[i + 2] == symmbol) {
        return true;
      }
    }
    for (int i = 0; i < 3; i ++) {
      if (board[i] == symmbol &&
          board[i + 3] == symmbol &&
          board[i + 6] == symmbol) {
        return true;
      }
    }
    if (board[0] == symmbol &&
        board[4] == symmbol &&
        board[8] == symmbol) {
      return true;
    }
    if (board[2] == symmbol &&
        board[4] == symmbol &&
        board[6] == symmbol) {
      return true;
    }
    return false;
  }
  void clear(){
    board = [
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
    ];
  }
}
