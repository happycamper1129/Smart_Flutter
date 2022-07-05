import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:jewelery_marketplace/components/default_product_card.dart';
import 'package:jewelery_marketplace/components/product_category_card.dart';
import 'package:jewelery_marketplace/components/store_product_card.dart';
import 'package:jewelery_marketplace/data/categories_data.dart';
import 'package:jewelery_marketplace/models/category.dart';
import 'package:jewelery_marketplace/views/business/activity/business_wishlist_screen.dart';
import 'package:jewelery_marketplace/views/business/product/product_upload_screen.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({Key? key}) : super(key: key);

  @override
  _StoreScreenState createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
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
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text('Store'),
        actions: [
          IconButton(
              onPressed: null,
              icon: SvgPicture.asset("assets/notification.svg")),
          IconButton(
              onPressed: () => Get.to(() => BusinessWishlistScreen()),
              icon: Icon(
                Icons.bookmark_add_outlined,
                size: 28,
              )),
        ],
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
          Padding(
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
          Container(
            child: ListView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Trending',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 18)),
                ),
                Container(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return StoreProductCard();
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Pending',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 18)),
                ),
                Container(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return StoreProductCard();
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Arrival',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 18)),
                ),
                Container(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return StoreProductCard();
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
