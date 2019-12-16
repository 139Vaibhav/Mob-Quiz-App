import 'package:flutter/cupertino.dart';

class Question extends StatelessWidget{
  final String questionText;

  Question(this.questionText);


  @override
  Widget build(BuildContext context)
  {
    return Container
    ( width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text
      ( questionText, 
        style: TextStyle(
          fontSize: 28,
          color:Color.fromRGBO(250, 20, 20, 0.5),),
        textAlign: TextAlign.center,
      )
    );
  }
}