import 'package:flutter/material.dart';
import 'package:personality_guess/model/answer_format.dart';

var questions = [
  Questionformat(
    tile: 'Who is the person who knows all your secrets ? ',
    answer: [
      Answer(
          image: Image.asset('assets/images/friends.jpg'), title: 'My friend'),
      Answer(
          image: Image.asset('assets/images/momson.jpg'), title: 'My mother'),
      Answer(
          image: Image.asset('assets/images/siblingss.jpg'),
          title: 'My siblings'),
      Answer(
        image: Image.asset('assets/images/silent.jpg'),
        title: 'No one',
      ),
    ],
  ),
];
