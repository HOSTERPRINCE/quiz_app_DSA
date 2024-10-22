import 'package:flutter/material.dart';
import 'package:quiz_app2/question_screen.dart';
import 'package:quiz_app2/result_screen.dart';
import 'package:quiz_app2/start_screen.dart';

import 'data/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activescreen="start-screen";
  List<String> selectedanswers=[];
  @override
  void switchScreen(){
    setState(() {
      activescreen="question-screen";
    });
  }
  void choosenanswers(String answers){
    selectedanswers.add(answers);
    if(selectedanswers.length==questions.length){
      setState(() {
        activescreen='result-screen';
      });
    }
  }
  void restartquiz(){
    setState(() {
      selectedanswers=[];
      activescreen="start-screen";
    });
  }
  @override
  Widget build(BuildContext context) {
    Widget screenWidget=StartScreen(switchScreen);
    if(activescreen=="question-screen"){
      screenWidget=question_screen(onSelectAnswer: choosenanswers);
    }
    if(activescreen=="result-screen"){
      screenWidget= ResultScreen(chosenAnswer: selectedanswers, restartquiz);
    }
    return MaterialApp(home: Scaffold(
      body: Container(
          decoration:const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 78, 13, 151),
                  Color.fromARGB(255, 107, 15, 168),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )
          ),
          child: screenWidget),
    ),);
  }
}
