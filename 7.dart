import 'dart:io';

class Question{
  String question;
  List<String>options;
  int correctAns;

  Question(this.question,this.options,this.correctAns);
}

class Quiz {
  List<Question>questions;
  int score = 0;

  Quiz(this.questions);

  void startQuiz() {
    print('Lets start the Quiz!\n');
    for (int i=0;i<questions.length;i++)
    {
      var q = questions[i];
      print('Question ${i+1}: ${q.question}');

      for (int j=0;j< q.options.length; j++)
      {
        print('${j+1}.${q.options[j]}');
      }

      int? userAnswer;
      while (userAnswer== null)
      {
        stdout.write('Your answer(1-${q.options.length}): ');
        var input= stdin.readLineSync();
        
        if (input==null ||input.isEmpty)
        {
          print('Please enter a number.\n');
          continue;
        }
        
        userAnswer=int.tryParse(input);
        if(userAnswer == null||userAnswer<1 ||userAnswer>q.options.length)
        {
          print('Invalid choice!Please pick 1-${q.options.length}.\n');
          userAnswer=null;
        }
      }

      if (userAnswer== q.correctAns+ 1)
      {
        print('Correct!\n');
        score++;
      }
      else
      {
        print('Wrong! The correct answer was:${q.options[q.correctAns]}\n');
      }
    }
    print('Final score:$score/${questions.length}');
  }
}
void main()
{
  var quizQuestions=[
    Question(
      'What is the capital of France?',
      ['Berlin','Madrid','Paris','Rome'],
      2,
    ),
    Question(
      'Which planet is known as the Red Planet?',
      ['Earth','Mars','Jupiter','Venus'],
      1,
    ),
    Question(
      'What is 2 + 2?',
      ['3','4','5','6'],
      1,
    ),
  ];

  var quiz= Quiz(quizQuestions);
  quiz.startQuiz();
}