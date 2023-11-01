import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:provider/provider.dart';
import 'package:whetherapp/api/themepro.dart';
import 'package:whetherapp/pages/forecastpage.dart';
import 'package:whetherapp/pages/homepage.dart';
import 'package:whetherapp/pages/location.dart';
import 'package:whetherapp/widgets/textwidget.dart';

//BOTTOM NAVIGATIONBAR

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

//sidebar

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: ListView(
        children: [
          Textwid(
            text: 'Weather',
            weight: FontWeight.w600,
            size: 24,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Textwid(
                text: 'Mode',
                size: 18,
                weight: FontWeight.w400,
              ),
              SwitchExample()
            ],
          )
        ],
      ),
    );
  }
}

//switch button

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  @override
  Widget build(BuildContext context) {
    final provid = Provider.of<Themepro>(context, listen: false);
    return FlutterSwitch(
      value: provid.rrrr,
      // activeColor: Colors.white,
      onToggle: (value) {
        provid.ffffff(value);
      },
    );
  }
}
