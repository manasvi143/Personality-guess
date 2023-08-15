import 'package:flutter/material.dart';
import 'package:personality_guess/data/questions.dart';
import 'package:personality_guess/widgets/answer_item.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 150,
          ),
          Text(
            questions[0].tile,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 25,
                color: Theme.of(context).colorScheme.onSecondaryContainer),
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: GridView(
              padding: const EdgeInsets.all(25),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 4 / 4,
              ),
              children: [
                for (final temp in questions[0].answer) AnswerItem(anss: temp),
              ],
            ),
          )
        ],
      ),
    );
  }
}
