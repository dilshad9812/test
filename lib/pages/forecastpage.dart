import 'package:flutter/material.dart';
import 'package:whetherapp/api/forecast.dart';
import 'package:whetherapp/widgets/bottombar.dart';
import 'package:whetherapp/widgets/textwidget.dart';

ForecastDatas? forecastDatas;

class Forecast extends StatelessWidget {
  const Forecast({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          // decoration: BoxDecoration(
          //   // color: Color.fromARGB(255, 7, 4, 29),
          //   gradient: Theme.of(context).brightness == Brightness.light
          //       ? Themeclass.dayGradient
          //       : Themeclass.nightGradient,
          // ),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child:
                //  Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Textwid(text: 'Today', weight: FontWeight.w400, size: 20),
                //     Padding(
                //         padding: const EdgeInsets.all(8.0),
                //         child: Textwid(
                //             text: '28 may 23',
                //             weight: FontWeight.w500,
                //             size: 18)),
                //   ],
                // ),
            //  ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Textwid(
                    text: 'Forecast report',
                    weight: FontWeight.w800,
                    size: 30),
              ),

              
             
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Bottombar(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
