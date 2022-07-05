// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:jewelery_marketplace/config/colors.dart';
// import 'package:jewelery_marketplace/config/styles.dart';
// import 'package:sticky_headers/sticky_headers.dart';

// class GetStartedScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.transparent,
//           elevation: 0.0,
//           automaticallyImplyLeading: false,
//           leading: Icon(
//             Icons.arrow_back,
//             color: kDarkBlack,
//           ),
//           centerTitle: false,
//           title: Text(
//             'Notifications',
//             style: kBigBasicStyle,
//           ),
//         ),
//         // bottomSheet: ,
//         body: Column(
//           children: [
//             Text(
//               'Let\'s get Started',
//               style: kBasicStyle.copyWith(fontSize: 40),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 25.0, right: 25, top: 25),
//               child: Text(
//                 'Tell us more about yourself, so we can get to know each other better.',
//                 style: kInputHintStyle.copyWith(fontSize: 16),
//                 textAlign: TextAlign.center,
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 28.0, right: 28, bottom: 20),
//               child: TextField(
//                 decoration: InputDecoration(
//                   border:
//                       new UnderlineInputBorder(borderSide: new BorderSide()),
//                   labelText: 'Company',
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 28.0, right: 28, bottom: 20),
//               child: TextField(
//                 decoration: InputDecoration(
//                   border:
//                       new UnderlineInputBorder(borderSide: new BorderSide()),
//                   labelText: 'Industry',
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 28.0, right: 28, bottom: 20),
//               child: TextField(
//                 decoration: InputDecoration(
//                   border:
//                       new UnderlineInputBorder(borderSide: new BorderSide()),
//                   labelText: 'City*',
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 28.0, right: 28, bottom: 20),
//               child: TextField(
//                 decoration: InputDecoration(
//                   border:
//                       new UnderlineInputBorder(borderSide: new BorderSide()),
//                   labelText: 'Country*',
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 28.0, right: 28, bottom: 20),
//               child: TextField(
//                 decoration: InputDecoration(
//                   border:
//                       new UnderlineInputBorder(borderSide: new BorderSide()),
//                   labelText: 'Business Website',
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 28.0, right: 28, bottom: 20),
//               child: TextField(
//                 decoration: InputDecoration(
//                   border:
//                       new UnderlineInputBorder(borderSide: new BorderSide()),
//                   labelText: 'Email',
//                 ),
//               ),
//             ),
//             Row(
//               children: [
//                 Expanded(child: button('Done')),
//               ],
//             )
//           ],
//         ));
//   }

//   Widget button(String text) {
//     return Padding(
//       padding: EdgeInsets.only(right: 10, left: 10, top: 80),
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(10.0),
//         child: Container(
//           height: 45,
//           decoration: BoxDecoration(
//               color: Colors.blue,
//               border:
//                   Border.all(color: Colors.black38.withOpacity(0.2), width: 1),
//               borderRadius: BorderRadius.all(
//                 Radius.circular(10),
//               )),
//           child: Center(
//             child: Text(
//               text,
//               style: kInputStyle.copyWith(
//                   color: Colors.white, fontWeight: FontWeight.w900),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
