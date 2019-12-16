import 'package:flutter/cupertino.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int i;
  final Function answerQuestion;

  Quiz({
    @required this.questions, 
    @required this.answerQuestion, 
    @required this.i
  });

  @override
  Widget build(BuildContext context){
    return Column(
          children: [
             Question(
               questions[i]['questionText']
               ),
            ...(questions[i]['answers'] as List<Map<String, Object>>).map((answers) {
              return Answer(() => answerQuestion(answers['score']), answers['text']);
            }).toList()

          ],
        );
  }
}