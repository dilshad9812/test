import 'package:flutter/material.dart';
import 'package:whetherapp/pages/forecastpage.dart';

// ignore: must_be_immutable
class Listcont extends StatelessWidget {
  Listcont({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).colorScheme.secondary),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text.rich(TextSpan(
                        text: forecastDatas!.list[8].main.temp.toString(),
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Theme.of(context).textTheme.bodyLarge!.color),
                        children: <InlineSpan>[
                          TextSpan(
                            text: ' °C',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400,color: Theme.of(context).textTheme.bodyLarge!.color),
                          )
                        ])),
                  ),
                  // Textwid(
                  //   text: forecastDatas?.list[8].dayOfWeek ?? "",
                  //   weight: FontWeight.w800,
                  //   size: 20,
                  // ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      forecastDatas?.list[8].formattedDtTxt ?? "",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Theme.of(context).textTheme.bodyLarge!.color),
                    ),
                  ),
                ]),
              )),
        );
      },
      itemCount: 8,
    );
  }
}
