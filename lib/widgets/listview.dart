import 'package:flutter/material.dart';
import 'package:whetherapp/pages/forecastpage.dart';
import 'package:whetherapp/widgets/textwidget.dart';

// ignore: must_be_immutable
class Listcont extends StatelessWidget {
  Listcont({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Textwid(
                text: forecastDatas?.list[index].dayOfWeek ?? "",
                weight: FontWeight.w800,
                size: 20,
              ),
              Text(
                forecastDatas!.list[index].main.temp.toString() + '°C',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              Text('image'),
            ],
          ),
          subtitle: Text(
            forecastDatas?.list[index].formattedDtTxt ?? "",
            style: TextStyle(
                fontWeight: FontWeight.w400, fontSize: 18, color: Colors.black),
          ),
        );
      },
      itemCount: forecastDatas?.list.length,
    );
  }
}
