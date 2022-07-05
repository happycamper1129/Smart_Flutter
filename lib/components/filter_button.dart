import 'package:flutter/material.dart';
import 'package:jewelery_marketplace/config/colors.dart';

class FilterButton extends StatelessWidget {
  final press;
  const FilterButton({required this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: lightBtn, width: 2)),
        height: 50,
        margin: EdgeInsets.all(6),
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: Center(
            child: Row(
          children: [
            Icon(Icons.filter_list),
            SizedBox(
              width: 8,
            ),
            Text(
              'filter',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ],
        )),
      ),
    );
  }
}
