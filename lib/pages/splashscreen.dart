import 'package:flutter/material.dart';
import 'package:whetherapp/api/currentlocation.dart';
import 'package:whetherapp/pages/homepage.dart';

class Splashscreen extends StatefulWidget {
  Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  Locationsss locationsss = Locationsss();

  @override
  void initState() {
    gotoslidescreen();
    super.initState();
  }

  Future<void> gotoslidescreen() async {
    locationsss.getCityWeather();
   // Themepro().autothemechange();

    await Future.delayed(Duration(seconds: 2));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Homepage()));
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator());
  }
}
