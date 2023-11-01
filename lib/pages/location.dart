import 'package:flutter/material.dart';
import 'package:whetherapp/api/currentlocation.dart';
import 'package:whetherapp/pages/homepage.dart';
import 'package:whetherapp/widgets/textwidget.dart';
import 'package:whetherapp/widgets/themeData.dart';
import 'package:whetherapp/widgets/widgets.dart';

class Locationsearch extends StatelessWidget {
  Locationsearch({super.key});

  Locationsss location = Locationsss();
  // Weatherdata weather = Weatherdata();
  TextEditingController _cityname = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 61, 60, 60),
            gradient: Theme.of(context).brightness == Brightness.light
                ? Themeclass.dayGradient
                : Themeclass.nightGradient,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                    child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Textwid(
                        text: "Pick Location",
                        weight: FontWeight.w600,
                        size: 24),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Textwid(
                      text:
                          "Find the area or city that you want to know \n     the detailed weather info at this time",
                      weight: FontWeight.w300,
                      size: 18,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 300,
                          child: TextFormField(
                            controller: _cityname,
                            style: TextStyle(
                                color: Theme.of(context).iconTheme.color),
                            decoration: InputDecoration(
                                fillColor: Theme.of(context).colorScheme.secondary,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                labelText: 'Search',
                                labelStyle: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .color,
                                ),
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Theme.of(context).iconTheme.color,
                                )),
                          ),
                        ),
                        Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Theme.of(context).colorScheme.secondary,
                                border: Border.all(color: Colors.white)),
                            child: IconButton(
                              icon: Icon(
                                Icons.near_me,
                                color: Theme.of(context).iconTheme.color,
                              ),
                              onPressed: () {
                                cityName = _cityname.text;
                                // location.getCityWeather();
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Homepage()));
                              },
                            ))
                      ],
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        // location.getCityWeather(_cityname.text);
                        cityName = _cityname.text;
                        print(cityName.toString());
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Homepage()));
                      },
                      child: Textwid(
                        text: 'find weather',
                        size: 18,
                        weight: FontWeight.w400,
                      ))
                ])),
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
