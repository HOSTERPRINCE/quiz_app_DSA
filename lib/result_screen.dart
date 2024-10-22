import 'package:flutter/material.dart';
import 'package:quiz_app2/question_summary.dart';
import 'package:quiz_app2/start_screen.dart';
import 'package:quiz_app2/quiz.dart';


import 'data/questions.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.restart,{super.key,required this.chosenAnswer});
  final List<String> chosenAnswer;
  final void Function() restart;

  List<Map<String, Object>> getSummaryData(){
    final List<Map<String,Object>> summary=[];
    for(var i=0;i<chosenAnswer.length;i++) {
      summary.add({
        "answer_index": i,
        "Questions": questions[i].text,
        "Correct_answer": questions[i].answers[0],
        "User_answer": chosenAnswer[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData=getSummaryData();
    final numTotalQuestions=questions.length;
    final numCorrectQuestions=summaryData.where((data){
      return data["Correct_answer"]==data["User_answer"];
    }).length;

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
          width: double.infinity,
          child: Container(
          margin: const EdgeInsets.all(40),
          child:ListView(
            children: [Text("You Answered $numCorrectQuestions Out of $numTotalQuestions Questions Correctly",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.white),),
              const SizedBox(height: 30,),
              QuestionSummary(summaryData),
              const SizedBox(
                height: 30,
          ),
              OutlinedButton.icon(onPressed: restart,style:
              OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
                  icon:const Icon(Icons.restart_alt_sharp),
                  label:  const Text("Restart quiz!"))
            ],),),),
    );
  }
}
