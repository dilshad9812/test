import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whetherapp/api/currentlocation.dart';
import 'package:whetherapp/api/themepro.dart';
import 'package:whetherapp/pages/splashscreen.dart';
import 'package:whetherapp/api/themeData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Locationsss(),
        ),
        ChangeNotifierProvider(create: (context) => Themepro())
      ],
      child: Consumer<Themepro>(builder: (context, themepro, child) {
        themepro.autothemechange();
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Weather App',
          home: Splashscreen(),
          theme:
              themepro.currenttheme,
             // themepro.rrrr ? Themeclass.lightheme : Themeclass.darktheme,
        );
      }),
    );
  }
}

Themeclass aaa = Themeclass();
