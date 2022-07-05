import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jewelery_marketplace/components/default_product_card.dart';

class BusinessManageStore extends StatefulWidget {
  const BusinessManageStore({Key? key}) : super(key: key);

  @override
  _BusinessManageStoreState createState() => _BusinessManageStoreState();
}

class _BusinessManageStoreState extends State<BusinessManageStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manage store'),
      ),
      body: ListView(
        // physics: NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Trending',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18)),
          ),
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return DefaultProductCard();
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Pending',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18)),
          ),
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return DefaultProductCard();
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('New arrival',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18)),
          ),
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return DefaultProductCard();
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('New arrival',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18)),
          ),
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return DefaultProductCard();
              },
            ),
          ),
        ],
      ),
    );
  }
}
