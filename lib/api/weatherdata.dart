import 'dart:convert';

Weatherdata? datas;

class Weatherdata {
  String? locality;
  double? speed;
  int? humidity;
  double? temp;
  int? pressure;
  String? country;
  String? description;
  // int? condition;

  Weatherdata({
    this.locality,
    this.speed,
    this.humidity,
    this.temp,
    this.pressure,
    this.country,
    this.description,
    // this.condition,
  });
  Weatherdata.fromJson(Map<String, dynamic> json) {
    locality = json["name"];
    speed = json["wind"]["speed"];
    humidity = json["main"]["humidity"];
    temp = json["main"]["temp"];
    pressure = json["main"]["pressure"];
    country = json["sys"]["country"];
    description = json["weather"][0]["description"];
    // condition: json["weather"]["id"],
  }
}

// // To parse this JSON data, do
// //
// //     final welcome = welcomeFromJson(jsonString);


// Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

// String welcomeToJson(Welcome data) => json.encode(data.toJson());

// class Welcome {
//     Coord coord;
//     List<Weather> weather;
//     String base;
//     Main main;
//     int visibility;
//     Wind wind;
//     Rain rain;
//     Clouds clouds;
//     int dt;
//     Sys sys;
//     int timezone;
//     int id;
//     String name;
//     int cod;

//     Welcome({
//         required this.coord,
//         required this.weather,
//         required this.base,
//         required this.main,
//         required this.visibility,
//         required this.wind,
//         required this.rain,
//         required this.clouds,
//         required this.dt,
//         required this.sys,
//         required this.timezone,
//         required this.id,
//         required this.name,
//         required this.cod,
//     });

//     factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
//         coord: Coord.fromJson(json["coord"]),
//         weather: List<Weather>.from(json["weather"].map((x) => Weather.fromJson(x))),
//         base: json["base"],
//         main: Main.fromJson(json["main"]),
//         visibility: json["visibility"],
//         wind: Wind.fromJson(json["wind"]),
//         rain: Rain.fromJson(json["rain"]),
//         clouds: Clouds.fromJson(json["clouds"]),
//         dt: json["dt"],
//         sys: Sys.fromJson(json["sys"]),
//         timezone: json["timezone"],
//         id: json["id"],
//         name: json["name"],
//         cod: json["cod"],
//     );

//     Map<String, dynamic> toJson() => {
//         "coord": coord.toJson(),
//         "weather": List<dynamic>.from(weather.map((x) => x.toJson())),
//         "base": base,
//         "main": main.toJson(),
//         "visibility": visibility,
//         "wind": wind.toJson(),
//         "rain": rain.toJson(),
//         "clouds": clouds.toJson(),
//         "dt": dt,
//         "sys": sys.toJson(),
//         "timezone": timezone,
//         "id": id,
//         "name": name,
//         "cod": cod,
//     };
// }

// class Clouds {
//     int all;

//     Clouds({
//         required this.all,
//     });

//     factory Clouds.fromJson(Map<String, dynamic> json) => Clouds(
//         all: json["all"],
//     );

//     Map<String, dynamic> toJson() => {
//         "all": all,
//     };
// }

// class Coord {
//     double lon;
//     double lat;

//     Coord({
//         required this.lon,
//         required this.lat,
//     });

//     factory Coord.fromJson(Map<String, dynamic> json) => Coord(
//         lon: json["lon"]?.toDouble(),
//         lat: json["lat"]?.toDouble(),
//     );

//     Map<String, dynamic> toJson() => {
//         "lon": lon,
//         "lat": lat,
//     };
// }

// class Main {
//     double temp;
//     double feelsLike;
//     double tempMin;
//     double tempMax;
//     int pressure;
//     int humidity;
//     int seaLevel;
//     int grndLevel;

//     Main({
//         required this.temp,
//         required this.feelsLike,
//         required this.tempMin,
//         required this.tempMax,
//         required this.pressure,
//         required this.humidity,
//         required this.seaLevel,
//         required this.grndLevel,
//     });

//     factory Main.fromJson(Map<String, dynamic> json) => Main(
//         temp: json["temp"]?.toDouble(),
//         feelsLike: json["feels_like"]?.toDouble(),
//         tempMin: json["temp_min"]?.toDouble(),
//         tempMax: json["temp_max"]?.toDouble(),
//         pressure: json["pressure"],
//         humidity: json["humidity"],
//         seaLevel: json["sea_level"],
//         grndLevel: json["grnd_level"],
//     );

//     Map<String, dynamic> toJson() => {
//         "temp": temp,
//         "feels_like": feelsLike,
//         "temp_min": tempMin,
//         "temp_max": tempMax,
//         "pressure": pressure,
//         "humidity": humidity,
//         "sea_level": seaLevel,
//         "grnd_level": grndLevel,
//     };
// }

// class Rain {
//     double the1H;

//     Rain({
//         required this.the1H,
//     });

//     factory Rain.fromJson(Map<String, dynamic> json) => Rain(
//         the1H: json["1h"]?.toDouble(),
//     );

//     Map<String, dynamic> toJson() => {
//         "1h": the1H,
//     };
// }

// class Sys {
//     int type;
//     int id;
//     String country;
//     int sunrise;
//     int sunset;

//     Sys({
//         required this.type,
//         required this.id,
//         required this.country,
//         required this.sunrise,
//         required this.sunset,
//     });

//     factory Sys.fromJson(Map<String, dynamic> json) => Sys(
//         type: json["type"],
//         id: json["id"],
//         country: json["country"],
//         sunrise: json["sunrise"],
//         sunset: json["sunset"],
//     );

//     Map<String, dynamic> toJson() => {
//         "type": type,
//         "id": id,
//         "country": country,
//         "sunrise": sunrise,
//         "sunset": sunset,
//     };
// }

// class Weather {
//     int id;
//     String main;
//     String description;
//     String icon;

//     Weather({
//         required this.id,
//         required this.main,
//         required this.description,
//         required this.icon,
//     });

//     factory Weather.fromJson(Map<String, dynamic> json) => Weather(
//         id: json["id"],
//         main: json["main"],
//         description: json["description"],
//         icon: json["icon"],
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "main": main,
//         "description": description,
//         "icon": icon,
//     };
// }

// class Wind {
//     double speed;
//     int deg;
//     double gust;

//     Wind({
//         required this.speed,
//         required this.deg,
//         required this.gust,
//     });

//     factory Wind.fromJson(Map<String, dynamic> json) => Wind(
//         speed: json["speed"]?.toDouble(),
//         deg: json["deg"],
//         gust: json["gust"]?.toDouble(),
//     );

//     Map<String, dynamic> toJson() => {
//         "speed": speed,
//         "deg": deg,
//         "gust": gust,
//     };
// }
