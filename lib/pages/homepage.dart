import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:whetherapp/api/currentlocation.dart';
import 'package:whetherapp/api/weatherdata.dart';
import 'package:whetherapp/widgets/bottombar.dart';
import 'package:whetherapp/widgets/listview.dart';
import 'package:whetherapp/widgets/sidebar.dart';
import 'package:whetherapp/widgets/textwidget.dart';
import 'package:whetherapp/api/themeData.dart';

String? cityName;

class Homepage extends StatefulWidget {
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final DateTime date = DateTime.now();

  Weatherdata weatherdata = Weatherdata();
  // Welcome? welcome;

  Locationsss location = Locationsss();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: Theme.of(context).brightness == Brightness.light
              ? Themeclass.dayGradient
              : Themeclass.nightGradient,
          // color: Color.fromARGB(255, 61, 60, 60),
        ),
        child: SafeArea(
          child: FutureBuilder(
            future: location.datatrans(),
            builder: (context, snapshot) {
              if (datas != null) {
                return Column(
                  children: [
                    Container(
                      height: 280,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        gradient:
                            Theme.of(context).brightness == Brightness.light
                                ? Themeclass.dayGradient
                                : Themeclass.nightGradient,
                        // LinearGradient(
                        //     colors: [
                        //       Color.fromARGB(255, 71, 70, 70),
                        //       const Color.fromARGB(255, 50, 50, 50),
                        //     ],
                        //     begin: Alignment.bottomCenter,
                        //     end: Alignment.topCenter),
                        color: Color.fromARGB(255, 114, 112, 112),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 100,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Textwid(
                                        text:
                                            DateFormat('HH:mm a').format(date),
                                        weight: FontWeight.w500,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Textwid(
                                    text: DateFormat('dd-MMM').format(date),
                                    size: 20,
                                    weight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Center(
                            child: Textwid(
                              text: datas!.locality.toString(),
                              // text: snapshot.data!.locality.toString(),
                              //     datas!.name.toString(),
                              size: 30,
                              weight: FontWeight.w600,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 30, bottom: 20),
                                child: Textwid(
                                    // text: datas!.main.temp.toString(),

                                    //  text: snapshot.data!.temp.toString() ,
                                    text: datas!.temp.toString() + '°C',
                                    size: 20,
                                    weight: FontWeight.w600),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 30, bottom: 20),
                                child: Text(
                                  datas!.description.toString(),
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 70,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 60),
                          child: SizedBox(
                            width: 140,
                            height: 220,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Textwid(
                                  text: "Place",
                                  weight: FontWeight.w500,
                                  size: 20,
                                ),
                                Textwid(
                                  text: 'Temp',
                                  size: 20,
                                  weight: FontWeight.w500,
                                ),
                                Textwid(
                                  text: 'Wind',
                                  size: 20,
                                  weight: FontWeight.w500,
                                ),
                                Textwid(
                                  text: 'Humidity',
                                  size: 20,
                                  weight: FontWeight.w500,
                                ),
                                Textwid(
                                  text: 'Pressure',
                                  size: 20,
                                  weight: FontWeight.w500,
                                ),
                                Textwid(
                                  text: 'Country',
                                  size: 20,
                                  weight: FontWeight.w500,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 220,
                          width: 30,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Textwid(
                                text: ":",
                                weight: FontWeight.w600,
                                size: 24,
                              ),
                              Textwid(
                                text: ':',
                                size: 24,
                                weight: FontWeight.w600,
                              ),
                              Textwid(
                                text: ':',
                                size: 24,
                                weight: FontWeight.w600,
                              ),
                              Textwid(
                                text: ':',
                                size: 24,
                                weight: FontWeight.w600,
                              ),
                              Textwid(
                                text: ':',
                                size: 24,
                                weight: FontWeight.w600,
                              ),
                              Textwid(
                                text: ':',
                                size: 24,
                                weight: FontWeight.w600,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: SizedBox(
                            height: 220,
                            width: 150,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Textwid(
                                  //  text: datas!.name.toString(),
                                  // text: snapshot.data!.locality.toString(),
                                  text: datas!.locality.toString(),
                                  size: 22,
                                  weight: FontWeight.w600,
                                ),
                                Textwid(
                                    // text: datas!.main.temp.toString(),
                                    text: datas!.temp.toString(),
                                    //  text: snapshot.data!.temp.toString() + '°C',
                                    size: 22,
                                    weight: FontWeight.w600),
                                Textwid(
                                  //  text: datas!.wind.speed.toString(),
                                  text: datas!.speed.toString(),
                                  //text:snapshot.data!.speed.toString() + ' km/h',
                                  size: 22,
                                  weight: FontWeight.w600,
                                ),
                                Textwid(
                                    text: datas!.humidity.toString() +
                                        //    text: datas!.humidity.toString() +
                                        // text: snapshot.data!.humidity.toString() +
                                        '%',
                                    size: 22,
                                    weight: FontWeight.w600),
                                Textwid(
                                    text: datas!.pressure.toString() + ' PA',
                                    size: 22,
                                    weight: FontWeight.w600),
                                Textwid(
                                    text: datas!.country.toString(),
                                    size: 22,
                                    weight: FontWeight.w600),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: ElevatedButton(
                    //     onPressed: () {
                    //       Navigator.push(context,
                    //           MaterialPageRoute(builder: (context) => Dat()));
                    //     },
                    //     style: ButtonStyle(
                    //       backgroundColor: MaterialStateProperty.all<Color>(
                    //           Colors.transparent),
                    //       shape: MaterialStateProperty.all(
                    //         RoundedRectangleBorder(
                    //           borderRadius: BorderRadius.circular(18),
                    //           side: BorderSide(
                    //             color: Color.fromARGB(255, 16, 20, 22),
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //     child: Text(
                    //       'View full details',
                    //       style: TextStyle(
                    //           fontSize: 16,
                    //           fontWeight: FontWeight.w400,
                    //           color: Theme.of(context).iconTheme.color),
                    //     ),
                    //   ),
                    // ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'Today',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          color: Colors.orange),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Listcont(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: const Bottombar(),
                    ),
                  ],
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(
                    color: Colors.black,
                  ),
                  // child: Textwid(
                  //     text: 'eerorrr', weight: FontWeight.w900, size: 24),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
