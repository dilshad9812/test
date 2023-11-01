import 'dart:convert';

import 'package:flutter/material.dart';
// import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:whetherapp/api/forecast.dart';
import 'package:whetherapp/api/weatherdata.dart';
import 'package:whetherapp/pages/forecastpage.dart';
import 'package:whetherapp/pages/homepage.dart';

class Locationsss extends ChangeNotifier {
  double? latitude;
  double? longitude;
  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }

 // Welcome? datas;
  Future<dynamic> getCityWeather() async {
    latitude == null ? await getCurrentLocation() : null;

    http.Response response = await http.get(Uri.parse(cityName == null
        ? 'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=bfff37f4f9c1360f60fd7b2344947ce7&units=metric'
        : 'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=bfff37f4f9c1360f60fd7b2344947ce7&units=metric'));
    notifyListeners();
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      // print(cityName);
      // print(latitude);
      // print(longitude);
      String data = response.body;
       datas = Weatherdata.fromJson(jsonDecode(data));
    //  datas = Welcome.fromJson(jsonDecode(data));

      //  print(data);
      // notifyListeners();
        return Weatherdata.fromJson(jsonDecode(data));
     // return Welcome.fromJson(jsonDecode(data));
    } else {
      print(response.body);
      print(response.statusCode);
    }
    throw Exception('Failed to load album');
  }

  Future<dynamic> forecast() async {
    http.Response response = await http.get(Uri.parse(cityName == null
        ? 'https://api.openweathermap.org/data/2.5/forecast?lat=$latitude&lon=$longitude&appid=bfff37f4f9c1360f60fd7b2344947ce7&units=metric'
        : 'https://api.openweathermap.org/data/2.5/forecast?q=$cityName&appid=bfff37f4f9c1360f60fd7b2344947ce7&units=metric'));
    notifyListeners();

    if (response.statusCode == 200) {
      print(cityName);
      print(latitude);
      print(longitude);
      // datas = Weather.fromJson(jsonDecode(data));
      print(response.body);
      // notifyListeners();
      return ForecastDatas.fromJson(jsonDecode(response.body));
    } else {
      print(response.statusCode);
    }
    throw Exception('Failed to load album');
  }

  Future<void> datatrans() async {
    await getCityWeather();
    forecastDatas = await forecast();
  }
}
