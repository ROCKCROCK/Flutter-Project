import 'package:flutter/widgets.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> ques;
  final int questionIndex;
  final Function answerQues;
  Quiz({
    required this.ques,
    required this.questionIndex,
    required this.answerQues,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          ques[questionIndex]['quesText'] as String,
        ),
        ...(ques[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answers) {
          return Answer(() => answerQues(answers['score'] as int),
              answers['text'] as String);
        }).toList()
      ],
    );
  }
}
