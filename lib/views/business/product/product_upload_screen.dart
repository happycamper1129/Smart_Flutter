import 'package:flutter/material.dart';
import 'package:jewelery_marketplace/components/default_button.dart';
import 'package:jewelery_marketplace/components/diamond_form.dart';
import 'package:jewelery_marketplace/components/jewelry_form.dart';
import 'package:jewelery_marketplace/components/outline_button.dart';
import 'package:jewelery_marketplace/components/product_category_card.dart';
import 'package:jewelery_marketplace/components/upload_product_photo.dart';
import 'package:jewelery_marketplace/data/categories_data.dart';
import 'package:jewelery_marketplace/models/category.dart';

class UploadJewelryScreen extends StatefulWidget {
  final bool? editing;
  UploadJewelryScreen({required this.editing});

  @override
  _UploadJewelryScreenState createState() => _UploadJewelryScreenState();
}

class _UploadJewelryScreenState extends State<UploadJewelryScreen> {
  CategoriesData categoriesData = CategoriesData();
  List<CategoryModel> categories = [];
  bool selectedType = false;
  @override
  void initState() {
    super.initState();
    categories = categoriesData.getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Upload'),
      ),
      body: ListView(
        children: [
          Container(
              height: 50,
              margin: EdgeInsets.only(left: 8, bottom: 8),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      print(categories[index].selected);
                      for (int i = 0; i < categories.length; i++) {
                        if (i == index) {
                          setState(() {
                            categories[i].selected = true;
                          });
                        } else {
                          setState(() {
                            categories[i].selected = false;
                          });
                        }
                      }
                      if (categories[index].name == "Diamonds") {
                        setState(() {
                          selectedType = true;
                        });
                      } else {
                        setState(() {
                          selectedType = false;
                        });
                      }

                      print(selectedType);
                      print(categories[index].selected);
                    },
                    child: CategoryButton(
                      category: categories[index].name!,
                      selected: categories[index].selected!,
                    ),
                  );
                },
                itemCount: categories.length,
              )),
          UploadProductPohoto(
              photo:
                  selectedType ? 'assets/diamond.png' : 'assets/jewelry.png'),
          selectedType
              ? DiamondFormUpload(
                  name: 'Hello',
                )
              : JewelryFormUpload(),
      widget.editing==true? Container(
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      child: OutlinedButton(
          onPressed: (){},
          child: Text(
            'Remove product',
            style: TextStyle(color: Colors.redAccent),
          )),
    )  :OutlineButton1(title: 'Save & add new product', press: () {}),
          DefaultButton(title: 'Done', press: () {})
        ],
      ),
    );
  }
}
