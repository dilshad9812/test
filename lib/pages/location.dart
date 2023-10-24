import 'package:flutter/material.dart';
import 'package:whetherapp/api/currentlocation.dart';
import 'package:whetherapp/api/weatherdata.dart';
import 'package:whetherapp/pages/homepage.dart';
import 'package:whetherapp/widgets/textwidget.dart';
import 'package:whetherapp/widgets/widgets.dart';

class Locationsearch extends StatelessWidget {
  Locationsearch({super.key});

  Locationsss location = Locationsss();
  Weather weather = Weather();
  TextEditingController _cityname = TextEditingController();

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
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Textwid(
                      text: "Pick Location", weight: FontWeight.w600, size: 24),
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
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              fillColor: const Color.fromARGB(255, 43, 39, 69),
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide:
                                      const BorderSide(color: Colors.white)),
                              labelText: 'Search',
                              labelStyle: const TextStyle(color: Colors.white),
                              prefixIcon: const Icon(
                                Icons.search,
                                color: Colors.white,
                              )),
                        ),
                      ),
                      Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 43, 39, 69),
                              border: Border.all(color: Colors.white)),
                          child: IconButton(
                            icon: Icon(Icons.near_me, color: Colors.white),
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Homepage()));
                    },
                    child: Text('find weather'))
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const Bottombar(),
    );
  }
}
