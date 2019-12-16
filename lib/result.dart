import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function reset;

  Result(this.score, this.reset);

  String get resultPhrase {
    String resultText;
    if(score<=8) {
      resultText='You are so bad!';
    }
    else if(score<=12){
      resultText='You are .... strange!';
    }
    else if(score<= 16){
      resultText='You are likeable';
    }
    else{
      resultText='You are awesome and innocent';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return 
      Center(
        child: Column(
          children: <Widget>[
        Text(resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
      FlatButton(child: Text('Restart Quiz!'), onPressed: reset,color: Colors.blue,)
      ],
      ),
      );
  }
}