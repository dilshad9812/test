import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:provider/provider.dart';
import 'package:whetherapp/api/themepro.dart';
import 'package:whetherapp/widgets/textwidget.dart';

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