import 'package:flutter/material.dart';
import 'package:jewelery_marketplace/config/colors.dart';

class HashtagButton extends StatefulWidget {
  final String name;

  const HashtagButton({required this.name});

  @override
  _HashtagButtonState createState() => _HashtagButtonState();
}

class _HashtagButtonState extends State<HashtagButton> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Container(
        decoration: selected
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: kColorPrimary,
              )
            : BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: lightBtn, width: 2)),
        height: 50,
        margin: EdgeInsets.only(right: 6, top: 8),
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: Center(
            child: Text(
          widget.name,
          style: TextStyle(
              color: selected ? Colors.white : Colors.black, fontSize: 16),
        )),
      ),
    );
  }
}
