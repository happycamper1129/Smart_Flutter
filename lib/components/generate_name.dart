import 'package:flutter/material.dart';
import 'package:jewelery_marketplace/components/all_categories_section.dart';
import 'package:jewelery_marketplace/components/default_button.dart';
import 'package:jewelery_marketplace/components/upload_product_photo.dart';
import 'package:jewelery_marketplace/data/categories_data.dart';
import 'package:jewelery_marketplace/models/category.dart';

class GenerateNameScreen extends StatefulWidget {
  @override
  _GenerateNameScreenState createState() => _GenerateNameScreenState();
}

class _GenerateNameScreenState extends State<GenerateNameScreen> {
  CategoriesData categoriesData = CategoriesData();
  List<CategoryModel> categories = [];
  String name="hello";
  @override
  void initState() {
    super.initState();
    categories = categoriesData.getCategories();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Upload'),
      ),
      body: ListView(
        children: [
          CategoriesSection(
            categories: categories,
          ),
          UploadProductPohoto(
            photo: 'assets/diamond.png',
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Form(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Shape',
                    suffixIcon: IconButton(
                        onPressed: () {}, icon: Icon(Icons.chevron_right)),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Size'),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Color'),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Clarity'),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Cut '),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Symmetry'),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Polished'),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Flauretion'),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Lab'),
                ),
              ],
            )),
          ),
          DefaultButton(
              title: 'Generate name',
              press: () {
                Navigator.pop(context,name);
              })
        ],
      ),
    );
  }
}
