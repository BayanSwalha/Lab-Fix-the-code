import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../component/question.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black87,
            bottom: TabBar(tabs: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.question_answer),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.question_answer),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.question_answer),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.question_mark_rounded),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.question_mark_outlined),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.question_mark),
              ),
            ]),
            title: Text(
              "Quiz App",
              style: GoogleFonts.lato(),
            ),
          ),
          body: TabBarView(children: [
            //Q1
            Qus(
                answer_1: "painful",
                answer_2: "likely",
                answer_3: "favorable",
                answer_4: "slippery",
                qus_text: "Which is a synonym of propitious?",
                correctanswer: "favorable"),

            //Q2
            Qus(
                answer_1: "warlike",
                answer_2: "skilful",
                answer_3: "bloody",
                answer_4: "deadly",
                qus_text: "Which is a synonym of pernicious?",
                correctanswer: "deadly"),
            //Q3
            Qus(
                answer_1: "custody",
                answer_2: "betrayal",
                answer_3: "quality",
                answer_4: "information",
                qus_text: "Which is a synonym of perfidy?",
                correctanswer: "betrayal"),
            //Q4
            Qus(
                answer_1: "Embrrassing",
                answer_2: "Emberrassing",
                answer_3: "Embarrassing",
                answer_4: "Embarassing",
                qus_text: "CORRECT way of spelling this word IS?",
                correctanswer: "Embarrassing"),
            //Q5
            Qus(
                answer_1: "usually",
                answer_2: "always",
                answer_3: "never",
                answer_4: "occasionally",
                qus_text:
                    "I play soccer every Monday. So, I ____ play soccer on Monday.",
                correctanswer: "always"),
            //Q6
            Qus(
                answer_1: "Hold/Keep",
                answer_2: "fall/drop",
                answer_3: "stop/end",
                answer_4: "claims/demands",
                qus_text: "____ the door,he shouted",
                correctanswer: "Hold/Keep"),
          ]),
        ));
  }
}
