import 'package:flutter/material.dart';
import 'package:quizapp/answer.dart';
import 'package:quizapp/question.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
  }

  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      {
        'questionText': 'What is the capital of France?',
        'options': ['Paris', 'London', 'Berlin', 'Rome'],
        'answerIndex': 0,
      },
      {
        'questionText': 'Who wrote "Romeo and Juliet"?',
        'options': [
          'Charles Dickens',
          'Jane Austen',
          'William Shakespeare',
          'Mark Twain'
        ],
        'answerIndex': 2,
      },
      {
        'questionText': 'What is the powerhouse of the cell?',
        'options': [
          'Nucleus',
          'Ribosome',
          'Mitochondria',
          'Endoplasmic reticulum'
        ],
        'answerIndex': 2,
      },
      {
        'questionText': 'What is the chemical symbol for water?',
        'options': ['H', 'O2', 'H2O', 'CO2'],
        'answerIndex': 2,
      },
      {
        'questionText': 'Who painted the Mona Lisa?',
        'options': [
          'Vincent van Gogh',
          'Leonardo da Vinci',
          'Pablo Picasso',
          'Michelangelo'
        ],
        'answerIndex': 1,
      },
      {
        'questionText': 'What is the largest planet in our solar system?',
        'options': ['Venus', 'Saturn', 'Jupiter', 'Neptune'],
        'answerIndex': 2,
      },
      {
        'questionText': 'Which continent is the largest by land area?',
        'options': ['Africa', 'Asia', 'North America', 'Antarctica'],
        'answerIndex': 1,
      },
      {
        'questionText': 'What is the capital of Japan?',
        'options': ['Beijing', 'Seoul', 'Tokyo', 'Bangkok'],
        'answerIndex': 2,
      },
      {
        'questionText': 'Who discovered penicillin?',
        'options': [
          'Alexander Fleming',
          'Marie Curie',
          'Albert Einstein',
          'Isaac Newton'
        ],
        'answerIndex': 0,
      },
      {
        'questionText': 'What is the tallest mountain in the world?',
        'options': ['Mount Everest', 'K2', 'Kangchenjunga', 'Lhotse'],
        'answerIndex': 0,
      },
      {
        'questionText': 'Which gas is most abundant in the Earth’s atmosphere?',
        'options': ['Oxygen', 'Carbon dioxide', 'Nitrogen', 'Methane'],
        'answerIndex': 2,
      },
      {
        'questionText': 'Who wrote "To Kill a Mockingbird"?',
        'options': [
          'J.K. Rowling',
          'Harper Lee',
          'Stephen King',
          'George Orwell'
        ],
        'answerIndex': 1,
      },
      {
        'questionText': 'What is the chemical symbol for gold?',
        'options': ['Au', 'Ag', 'Fe', 'Cu'],
        'answerIndex': 0,
      },
      {
        'questionText': 'Which planet is known as the Red Planet?',
        'options': ['Mars', 'Venus', 'Jupiter', 'Mercury'],
        'answerIndex': 0,
      },
      {
        'questionText': 'Who is known as the father of modern physics?',
        'options': [
          'Isaac Newton',
          'Galileo Galilei',
          'Albert Einstein',
          'Stephen Hawking'
        ],
        'answerIndex': 2,
      },
      {
        'questionText': 'Which country is famous for the Great Barrier Reef?',
        'options': ['Australia', 'Brazil', 'Canada', 'India'],
        'answerIndex': 0,
      },
      {
        'questionText': 'What is the chemical formula for table salt?',
        'options': ['NaCl', 'H2O', 'CO2', 'HCl'],
        'answerIndex': 0,
      },
      {
        'questionText': 'Who wrote "The Great Gatsby"?',
        'options': [
          'F. Scott Fitzgerald',
          'Ernest Hemingway',
          'Mark Twain',
          'Charles Dickens'
        ],
        'answerIndex': 0,
      },
      {
        'questionText': 'Which language is spoken in Brazil?',
        'options': ['Portuguese', 'Spanish', 'Italian', 'French'],
        'answerIndex': 0,
      },
      {
        'questionText': 'What is the smallest bone in the human body?',
        'options': ['Femur', 'Patella', 'Stapes', 'Tibia'],
        'answerIndex': 2,
      },
    ];
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Center(
          child: _questionIndex < question.length
              ? Column(
                  children: [
                    Question(
                      question[_questionIndex]['questionText'].toString(),
                    ),
                    ...(question[_questionIndex]['options'] as List)
                        .map((ans) => Answer(_answerQuestion, ans))
                        .toList()
                  ],
                )
              : Center(
                  child: ElevatedButton(
                    onPressed: resetQuiz,
                    child: const Text("Reset"),
                  ),
                ),
        ),
      ),
    );
  }
}
