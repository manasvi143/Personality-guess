import 'package:flutter/material.dart';

import 'package:personality_guess/model/answer_format.dart';

class AnswerItem extends StatelessWidget {
  const AnswerItem({super.key, required this.anss});
  final Answer anss;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(16),
      splashColor: Theme.of(context).colorScheme.onPrimaryContainer,
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
        child: Stack(children: [
          FadeInImage(
            placeholder: anss.image.image,
            image: (anss.image).image,
            fit: BoxFit.cover,
            height: 200,
            width: 200,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: const Color.fromARGB(137, 255, 255, 255),
              padding: const EdgeInsets.symmetric(
                vertical: 6,
              ),
              child: Text(
                anss.title,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onSecondary,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ]),
      ),
    );
  }
}
