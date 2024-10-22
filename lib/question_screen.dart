import 'package:flutter/material.dart';

import 'data/questions.dart';
import 'models/answer_button.dart';

class question_screen extends StatefulWidget {
  const question_screen({super.key,required this.onSelectAnswer});
  final void Function(String answer) onSelectAnswer;

  @override
  State<question_screen> createState() => _question_screenState();
}

class _question_screenState extends State<question_screen> {
  var currentquestionindex=0;
  void answerQuestion(String selectedAnswer){
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentquestionindex++;
    });

  }
  @override
  Widget build(BuildContext context) {
    final currentQuestion=questions[currentquestionindex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:[
            Text(currentQuestion.text,style:const TextStyle(
              color: Color.fromARGB(255, 201, 153, 251),fontSize: 24,fontWeight: FontWeight.bold,
            ),textAlign: TextAlign.center,),
            const SizedBox(height: 30,),
            ...currentQuestion.getShuffledAnswers().map((answer){
              return Padding(
                padding: const EdgeInsets.all(1.0),
                child: AnswerButton(answerText: answer, onTap: (){
                  answerQuestion(answer);
                },),
              );
            }),
          ],
        ),
      ),
    );
  }
}
