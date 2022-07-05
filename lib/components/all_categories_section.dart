import 'package:flutter/material.dart';
import 'package:jewelery_marketplace/components/product_category_card.dart';
import 'package:jewelery_marketplace/models/category.dart';

class CategoriesSection extends StatefulWidget {
  final List<CategoryModel> categories;
  CategoriesSection({required this.categories});
  @override
  _CategoriesSectionState createState() => _CategoriesSectionState();
}

class _CategoriesSectionState extends State<CategoriesSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        margin: EdgeInsets.only(left: 8, bottom: 8),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                print(widget.categories[index].selected);
                for (int i = 0; i < widget.categories.length; i++) {
                  if (i == index) {
                    setState(() {
                      widget.categories[i].selected = true;
                    });
                  } else {
                    setState(() {
                      widget.categories[i].selected = false;
                    });
                  }
                }
                print(widget.categories[index].selected);
              },
              child: CategoryButton(
                category: widget.categories[index].name!,
                selected: widget.categories[index].selected!,
              ),
            );
          },
          itemCount: widget.categories.length,
        ));
  }
}
