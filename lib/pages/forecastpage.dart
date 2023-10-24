// import 'package:flutter/material.dart';
// import 'package:whetherapp/widgets/conttemp.dart';
// import 'package:whetherapp/widgets/listview.dart';
// import 'package:whetherapp/widgets/textwidget.dart';
// import 'package:whetherapp/widgets/widgets.dart';

// class Forecast extends StatelessWidget {
//   const Forecast({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         decoration: const BoxDecoration(
//           color: Color.fromARGB(255, 7, 4, 29),
//         ),
//         child: SafeArea(
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Textwid(
//                       text: 'Forecast report',
//                       weight: FontWeight.w600,
//                       size: 18),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Textwid(text: 'Today', weight: FontWeight.w400, size: 20),
//                       Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Textwid(
//                               text: '28 may 23',
//                               weight: FontWeight.w500,
//                               size: 18)),
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: SingleChildScrollView(
//                     scrollDirection: Axis.horizontal,
//                     child: Row(
//                       children: [
//                         Conttemp(time: '1:00'),
//                         Conttemp(time: '2:00'),
//                         Conttemp(time: '3:00')
//                       ],
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Textwid(
//                               text: 'Next Forecast',
//                               weight: FontWeight.w400,
//                               size: 24)),
//                       Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Icon(
//                             Icons.calendar_month,
//                             color: Colors.white,
//                           )),
//                     ],
//                   ),
//                 ),
//                 Expanded(
//                   child: SingleChildScrollView(
//                     scrollDirection: Axis.vertical,
//                     child: Column(
//                       children: [
//                         Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child:
//                                 Listcont(titlee: "Friday", subtitlr: 'may 8')),
//                         Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Listcont(
//                                 titlee: 'Saturday', subtitlr: 'may 9')),
//                         Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child:
//                                 Listcont(titlee: "Sunday", subtitlr: "may 10")),
//                         Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child:
//                                 Listcont(titlee: "Monday", subtitlr: 'may 11')),
//                         Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Listcont(
//                                 titlee: 'Tuesday', subtitlr: 'may 12')),
//                         Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Listcont(
//                                 titlee: "Wednesday", subtitlr: "may 13")),
//                         Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Listcont(
//                                 titlee: 'Thursday', subtitlr: 'may 14')),
//                       ],
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//       bottomNavigationBar: Bottombar(),
//     );
//   }
// }
