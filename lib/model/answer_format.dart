import 'package:flutter/material.dart';

class Answer {
  const Answer({required this.image, required this.title});
  final String title;
  final Image image;
}

class Questionformat {
  const Questionformat({required this.tile, required this.answer});

  final String tile;
  final List<Answer> answer;
}
