// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Textwid extends StatelessWidget {
  String text;
  FontWeight weight;
  double size;
  Textwid({required this.text,required this.weight,required this.size});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontWeight:weight,
        fontSize: size,
      ),
    );
  }
}
