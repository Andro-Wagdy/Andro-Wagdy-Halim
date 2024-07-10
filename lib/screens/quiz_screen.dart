import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/answer_card.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});
  final List answers = const ['USA', 'Qatar', 'France', 'Egypt'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        title: const Text(
          'quiz app',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('1st Question :'),
            const Text('What is the last country to host the world cup ?'),
            for (int i = 0; i < answers.length; i++)
              AnswerCard(
                answer: answers[i],
              ),
          ],
        ),
      ),
    );
  }
}
