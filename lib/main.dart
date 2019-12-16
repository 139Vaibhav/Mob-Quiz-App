import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}
class _MyAppState extends State<MyApp>{

  final _questions = const [
      {'questionText': 'What\'s your favourite color?', 
      'answers': [
        {'text':'Black','score':1},
        {'text':'Red','score':3},
        {'text':'White','score':10}, 
        {'text':'Green','score':5} ],
      },
      {'questionText': 'What\'s your favourite animal?',
      'answers': [ 
        {'text':'Rabbit','score':1},
        {'text':'Snake','score':5},
        {'text':'Elephant','score':3}, 
        {'text':'Lion','score':10}],
      },
      {'questionText': 'Who is your favourite person?',
      'answers': [ 
        {'text':'Vaibhav','score':10}, 
        {'text':'Avi','score':3}, 
        {'text':'Anushka','score':5}, 
        {'text':'Haveen','score':1},
        ],
      },
      ];

  var _i=0;
  var _totalscore=0;

  void _resetQuiz(){
    setState(() {
      _i=-0;
      _totalscore=0;
    });
  }

  void _answerQuestion(int score){ 
    setState(() {
      _i=_i+1;
      _totalscore=_totalscore + score;
    });
    print(_i);
   if( _i < _questions.length ){
      print('we have more questions');
    }
    else{
      print('It\'s over');
    }
  }

  @override
  Widget build(BuildContext context){
    


    return MaterialApp(theme: ThemeData(primaryColor:Colors.blue),
      home: Scaffold(
      appBar: AppBar(
        title: Text('My First App',),
         centerTitle: true,),
      
        body:
        _i < _questions.length ? Quiz(
          answerQuestion:_answerQuestion,
          i: _i,
          questions: _questions
        )
        : Result(_totalscore,_resetQuiz),
        
    )
    );
  }
}