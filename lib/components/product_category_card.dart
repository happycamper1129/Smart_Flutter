import 'package:flutter/material.dart';
import 'package:jewelery_marketplace/config/colors.dart';
import 'package:jewelery_marketplace/models/category.dart';

class CategoryButton extends StatefulWidget {
  final String category;
  final bool selected;

  const CategoryButton({required this.category, required this.selected});

  @override
  _CategoryButtonState createState() => _CategoryButtonState();
}

class _CategoryButtonState extends State<CategoryButton> {
  late String selectedItem;

  // onTap: () {
  //       setState(() {
  //         widget.category.selected = !widget.category.selected;
  //         print(widget.category.selected);
  //       });
  //       if (selected)
  //         setState(() {
  //           // selectedItem = widget.category.name!;
  //           // print('hgufufuf');
  //           // print(selectedItem);
  //         });
  //     },

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: widget.selected
          ? BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: kColorPrimary,
            )
          : BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: lightBtn, width: 2)),
      height: 50,
      margin: EdgeInsets.all(6),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Center(
          child: Text(
        widget.category,
        style: TextStyle(
            color: widget.selected == true ? Colors.white : Colors.black,
            fontSize: 16),
      )),
    );
  }
}
