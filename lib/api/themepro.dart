import 'package:flutter/material.dart';
import 'package:whetherapp/api/themeData.dart';

class Themepro extends ChangeNotifier {
  bool isswitchon = true;

  bool get rrrr => isswitchon;
  void ffffff(bool value) {
    isswitchon = value;
    print('Switch is now: $isswitchon');
    notifyListeners();
  }

  ThemeData themeData = Themeclass.lightheme;
  ThemeData get currenttheme => themeData;

  void settheme(ThemeData newtheme) {
    themeData = newtheme;
    // notifyListeners();
  }

  void autothemechange() async {
    final now = DateTime.now();
    final hour = now.hour * 100 + now.minute;
    if (hour >= 600 && hour <= 1530) {
      // ffffff(true);
      settheme(Themeclass.lightheme);
      print('ffffffffffffffffffffffff');
    } else {
      // ffffff(false);
      settheme(Themeclass.darktheme);
      print("sssssssssssssssss");
    }
    // notifyListeners();
  }
}
