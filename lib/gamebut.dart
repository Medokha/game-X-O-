import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class gamebut extends StatelessWidget {
  String text;
  int index;
  Function click;
  gamebut(this.text,this.index,this.click);

  @override
  Widget build(BuildContext context) {
    if(text =='X'){
      return Expanded(
          child: ElevatedButton(
              style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.red)),
              onPressed: () {
                click(index);
              },
              child: Text(
                text,
                style: Theme.of(context).textTheme.headline2,
              )));
    }else if(text =='O'){
      return Expanded(
          child: ElevatedButton(
              style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.yellow)),
              onPressed: () {
                click(index);
              },
              child: Text(
                text,
                style: Theme.of(context).textTheme.headline2,
              )));
    }else{
      return Expanded(
          child: ElevatedButton(
              style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.grey)),
              onPressed: () {
                click(index);
              },
              child: Text(
                text,
                style: Theme.of(context).textTheme.headline2,
              )));

    }

  }
}
