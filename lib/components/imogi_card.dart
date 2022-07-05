import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImogiCard extends StatelessWidget {
  final String picture, title;
  const ImogiCard({required this.picture, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SvgPicture.asset(
            picture,
            height: 60,
            width: 60,
          )
        ],
      ),
    );
  }
}
