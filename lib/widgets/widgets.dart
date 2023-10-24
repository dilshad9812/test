import 'package:flutter/material.dart';
import 'package:whetherapp/pages/forecastpage.dart';
import 'package:whetherapp/pages/homepage.dart';
import 'package:whetherapp/pages/location.dart';

//BOTTOM NAVIGATIONBAR

class Bottombar extends StatelessWidget {
  const Bottombar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        height: 70,
        color: const Color.fromARGB(255, 7, 4, 29),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Homepage()));
              },
              icon: const Icon(
                Icons.home,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {
                  Navigator.push(context,
                     MaterialPageRoute(builder: (context) => Locationsearch()));
              },
              icon: const Icon(Icons.search, color: Colors.white),
            ),
            // IconButton(
            //   onPressed: () {
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => Forecast()));
            //   },
            //   icon: Padding(
            //     padding: const EdgeInsets.all(6.0),
            //     child: Image.asset(
            //       'assets/activity.png',
            //     ),
            //   ),
            // ),
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

//TABBAR

class Tabbar extends StatelessWidget {
  const Tabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: TabBar(
        indicator: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(15))),
        tabs: [
          Tab(
            child: Text(
              'Forecast',
              style: TextStyle(
                fontSize: 16,
                letterSpacing: 1,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Tab(
            child: Text(
              'Air quality',
              style: TextStyle(
                fontSize: 16,
                letterSpacing: 2,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
