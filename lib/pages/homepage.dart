import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:whetherapp/api/currentlocation.dart';
import 'package:whetherapp/api/weatherdata.dart';
import 'package:whetherapp/widgets/textwidget.dart';
import 'package:whetherapp/widgets/widgets.dart';

String? cityName;

class Homepage extends StatefulWidget {
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final DateTime date = DateTime.now();

  // Weather weather = Weather();

  Locationsss location = Locationsss();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 7, 4, 29),
        ),
        child: SafeArea(
          child: FutureBuilder<Weather>(
            future: location.getCityWeather(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                  children: [
                    Padding(
                      
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Textwid(
                              text: DateFormat('HH:mm a').format(date),
                              weight: FontWeight.w500,
                              size: 20,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Textwid(
                              text: DateFormat('dd/MM/yy').format(date),
                              size: 20,
                              weight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Textwid(
                        text: snapshot.data!.locality.toString(),
                        size: 30,
                        weight: FontWeight.w600,
                      ),
                    ),

                    // const Padding(
                    //   padding: EdgeInsets.all(8.0),
                    //   child: Tabbar(),
                    // ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/cloud2.webp',
                        scale: 5,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Textwid(
                          text: 'Report',
                          size: 22,
                          weight: FontWeight.w700,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              'View full repport',
                              style: TextStyle(fontSize: 18),
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: SizedBox(
                            width: 170,
                            height: 190,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Textwid(
                                  text: "Place",
                                  weight: FontWeight.w400,
                                  size: 20,
                                ),
                                Textwid(
                                  text: 'Temp',
                                  size: 20,
                                  weight: FontWeight.w400,
                                ),
                                Textwid(
                                  text: 'Wind',
                                  size: 20,
                                  weight: FontWeight.w400,
                                ),
                                Textwid(
                                  text: 'Humidity',
                                  size: 20,
                                  weight: FontWeight.w400,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: SizedBox(
                            height: 190,
                            width: 170,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Textwid(
                                  text: snapshot.data!.locality.toString(),
                                  size: 20,
                                  weight: FontWeight.w600,
                                ),
                                Textwid(
                                    text: snapshot.data!.temp.toString() + '°C',
                                    size: 20,
                                    weight: FontWeight.w600),
                                Textwid(
                                  text:
                                      snapshot.data!.speed.toString() + ' km/h',
                                  size: 20,
                                  weight: FontWeight.w600,
                                ),
                                Textwid(
                                    text: snapshot.data!.humidity.toString() +
                                        '%',
                                    size: 20,
                                    weight: FontWeight.w600),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                );
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
      ),
      bottomNavigationBar: const Bottombar(),
    );
  }
}
