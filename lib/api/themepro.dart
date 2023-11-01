import 'package:flutter/material.dart';
import 'package:whetherapp/widgets/themeData.dart';

class Themepro extends ChangeNotifier {
  bool isswitchon = true;
  // ThemeData themeData = Themeclass.lightheme;
  // ThemeData get currenttheme => themeData;
bool get rrrr=>isswitchon;
  void ffffff(bool value) {
     isswitchon = value;
    print('Switch is now: $isswitchon');
    notifyListeners();
  }
}
