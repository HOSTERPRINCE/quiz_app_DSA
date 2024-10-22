import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData,{super.key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(children:
      summaryData.map((data){
        return  Row(children: [
          Text(((data["answer_index"] as int)+1).toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.greenAccent),),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              children: [
                Text(data["Questions"] as String,style: TextStyle(color: Colors.orangeAccent,fontSize: 18),),
                const SizedBox(
                  height: 10,
                ),
                Text(data["Correct_answer"] as String,style: TextStyle(color: Colors.blueAccent,fontSize: 18),),
                Text(data["User_answer"] as String,style: TextStyle(color: Colors.lightBlueAccent,fontSize: 18),),
                SizedBox(height: 10,)
              ],
            ),
          )
        ]);
    }).toList(),
    );
  }
}
