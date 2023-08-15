import 'package:flutter/material.dart';

enum Catagory { c1, c2, c3, c4, c5, c6 }

class CatagortType {
  const CatagortType(
      {required this.catg, required this.colr, required this.title});
  final Catagory catg;
  final Color colr;
  final String title;
}
