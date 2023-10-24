import 'package:flutter/material.dart';
import 'package:whetherapp/widgets/textwidget.dart';

// ignore: must_be_immutable
class Listcont extends StatelessWidget {
  String titlee;
  String subtitlr;
  Listcont({super.key, required this.titlee, required this.subtitlr});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 100,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 18, 12, 61),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 10),
            child: Column(
              children: [
                Textwid(text: titlee, weight: FontWeight.w600, size: 18),
                const SizedBox(height: 10),
                Textwid(text: subtitlr, weight: FontWeight.w400, size: 18)
              ],
            ),
          ),
          Textwid(text: '30', weight: FontWeight.w600, size: 24),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Textwid(text: 'image', weight: FontWeight.w900, size: 18),
          )
        ],
      ),
    );
  }
}
