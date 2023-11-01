import 'package:flutter/material.dart';
import 'package:whetherapp/api/currentlocation.dart';
import 'package:whetherapp/api/weatherdata.dart';
import 'package:whetherapp/widgets/textwidget.dart';
import 'package:whetherapp/widgets/themeData.dart';

class Dat extends StatelessWidget {
  Dat({super.key});

  Locationsss location = Locationsss();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: Theme.of(context).brightness == Brightness.light
              ? Themeclass.dayGradient
              : Themeclass.nightGradient,
        ),
        child: SizedBox(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: SizedBox(
                  width: 150,
                  height: 220,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Textwid(
                        text: "Place",
                        weight: FontWeight.w600,
                        size: 22,
                      ),
                      Textwid(
                        text: 'Temp',
                        size: 22,
                        weight: FontWeight.w600,
                      ),
                      Textwid(
                        text: 'Wind',
                        size: 22,
                        weight: FontWeight.w600,
                      ),
                      Textwid(
                        text: 'Humidity',
                        size: 22,
                        weight: FontWeight.w600,
                      ),
                     
                    ],
                  ),
                ),
              ),
           
              SizedBox(
                height: 220,
                width: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Textwid(
                      text: datas!.locality.toString(),
                      size: 20,
                      weight: FontWeight.w500,
                    ),
                    Textwid(
                        text: datas!.temp.toString() + ' °C',
                        size: 20,
                        weight: FontWeight.w500),
                    Textwid(
                      text: datas!.speed.toString() + ' km/h',
                      size: 20,
                      weight: FontWeight.w500,
                    ),
                    Textwid(
                        text: datas!.humidity.toString() + ' %',
                        size: 20,
                        weight: FontWeight.w500),
                   
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
