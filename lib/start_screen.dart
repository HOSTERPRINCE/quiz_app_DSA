import 'package:flutter/material.dart';


class StartScreen extends StatelessWidget {
  const StartScreen(this.startquiz,{super.key});
  final void Function() startquiz;

  @override
  Widget build(BuildContext context) {
    return Center(child:Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/quiz-logo.png',width: 300,
        color: const Color.fromARGB(150, 255, 255, 255)),
        const SizedBox(height: 80,),
        const Text("learn about DSA the fun way!",
        style: TextStyle(color: Colors.white,fontSize: 24)),
        const SizedBox(height: 30),
        OutlinedButton.icon(onPressed: startquiz,style:
            OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon:const Icon(Icons.start),
            label:  const Text("Start quize"))
      ],
    ));
  }
}
