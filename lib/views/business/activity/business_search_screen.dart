import 'package:flutter/material.dart';
import 'package:jewelery_marketplace/components/filter_button.dart';
import 'package:jewelery_marketplace/components/product_category_card.dart';
import 'package:jewelery_marketplace/config/colors.dart';
import 'package:jewelery_marketplace/views/business/search/product_search.dart';
import 'package:jewelery_marketplace/views/business/search/store_search.dart';

class BusinessSearchScreen extends StatefulWidget {
  const BusinessSearchScreen({Key? key}) : super(key: key);

  @override
  _BusinessSearchScreenState createState() => _BusinessSearchScreenState();
}

class _BusinessSearchScreenState extends State<BusinessSearchScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8),
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.only(left: 14.0, bottom: 12.0, top: 0.0),
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  hintText: 'Search...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.0),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 30,
                  )),
            ),
          ),
          bottom: TabBar(
            unselectedLabelStyle:
                TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            labelStyle: TextStyle(
                color: kColorPrimaryLight, fontWeight: FontWeight.bold),
            tabs: [
              Tab(
                text: 'Products',
              ),
              Tab(
                text: 'Stores',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [ProductsSearch(), StoresSearch()],
        ),
      ),
    );
  }
}
