import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
// import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:whetherapp/api/weatherdata.dart';
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

  // Weather? datas;
  Future<Weather> getCityWeather() async {
    latitude == null ? await getCurrentLocation() : null;

    http.Response response = await http.get(Uri.parse(cityName == null
        ? 'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=bfff37f4f9c1360f60fd7b2344947ce7&units=metric'
        : 'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=bfff37f4f9c1360f60fd7b2344947ce7&units=metric'));
    notifyListeners();
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      print(cityName);
      print(latitude);
      print(longitude);
      String data = response.body;
      // datas = Weather.fromJson(jsonDecode(data));

      // notifyListeners();
      return Weather.fromJson(jsonDecode(data));
    } else {
      print(response.body);
      print(response.statusCode);
    }
    throw Exception('Failed to load album');
  }
}
