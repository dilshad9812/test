import 'package:flutter/material.dart';
import 'package:whetherapp/pages/forecastpage.dart';
import 'package:whetherapp/pages/homepage.dart';
import 'package:whetherapp/pages/location.dart';

class Bottombar extends StatelessWidget {
  const Bottombar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 70,
        width: 300,
        decoration: BoxDecoration(
            color:Theme.of(context).colorScheme.primary, 
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Locationsearch()));
              },
              icon: Icon(
                Icons.search,
                color: Theme.of(context).iconTheme.color,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Homepage()));
              },
              icon: Icon(
                Icons.home,
                color: Theme.of(context).iconTheme.color,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Forecast()));
              },
              icon: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Image.asset(
                  'assets/activity.png',color: Theme.of(context).iconTheme.color,
                ),
              ),
            ),
            // IconButton(
            //   onPressed: () {},
            //   icon: const Icon(
            //     Icons.settings,
            //     color: Colors.white,
            //   ),
            // ),
          ],
        ));
  }
}