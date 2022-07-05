import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:jewelery_marketplace/components/default_button.dart';
import 'package:jewelery_marketplace/components/filter_button.dart';
import 'package:jewelery_marketplace/components/product_category_card.dart';
import 'package:jewelery_marketplace/config/colors.dart';

class ProductsSearch extends StatelessWidget {
  const ProductsSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                FilterButton(
                  press: () {
                    _filterSheet(context);
                  },
                ),
                CategoryButton(category: 'Jewelry', selected: false),
                CategoryButton(category: 'Diamond', selected: false),
                CategoryButton(category: 'RIo', selected: false),
                CategoryButton(category: 'Alpha', selected: false),
              ],
            ),
          ),
          Expanded(
            child: StaggeredGrid.count(
              //  shrinkWrap: true,
              //  physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              // itemCount: 65,
              // itemBuilder: (context, index) => Stack(
              children: [
                Image.asset(
                  'assets/diamond.png',
                  fit: BoxFit.cover,
                ),
                Positioned(
                    top: 4,
                    left: 4,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.grey.shade100,
                      ),
                      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 10,
                            child: Icon(Icons.store, size: 14),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Company',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    )),
                Positioned(
                    bottom: 5,
                    left: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Product name',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                        Text(
                          "£" + '5645',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        )
                      ],
                    )),
              ],
            ),
            // staggeredTileBuilder: (index) => StaggeredTile.count(
            //     (index % 7 == 0) ? 2 : 1, (index % 7 == 0) ? 2 : 1),
            // mainAxisSpacing: 4.0,
            // crossAxisSpacing: 4.0,
          )
        ],
      ),
    );
  }

  void _filterSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true, // set this to true
      builder: (_) {
        return DraggableScrollableSheet(
          expand: false,
          builder: (_, controller) {
            return Container(
              decoration: BoxDecoration(
                color: Color(0xFF737373), //could change this to ,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Colors.white,
                ),
                child: ListView(
                  controller: controller,
                  children: [
                    SizedBox(
                      height: 25,
                      child: Center(
                        child: Container(
                          width: 50,
                          child: Divider(
                            thickness: 5,
                            color: Colors.black38,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Reset',
                            style:
                                TextStyle(color: kColorPrimary, fontSize: 15),
                          ),
                        ),
                        Text(
                          'Sort & Filter',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Reset',
                            style: TextStyle(
                                color: Colors.transparent, fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.black38,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Sort by',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    Container(
                      height: 50,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 12,
                          itemBuilder: (context, index) {
                            return CategoryButton(
                                category: 'category', selected: false);
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Location',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          GestureDetector(
                            onTap: () {
                              _locationSheet(context);
                            },
                            child: Text(
                              ' Add Location',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: kColorPrimary),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 12,
                          itemBuilder: (context, index) {
                            return CategoryButton(
                                category: 'Location', selected: true);
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Category',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text(
                            ' See all ',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: kColorPrimary),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 12,
                          itemBuilder: (context, index) {
                            return CategoryButton(
                                category: 'Category',
                                selected: index % 2 == 0 ? true : false);
                          }),
                    ),
                    DefaultButton(title: 'Apply Filter', press: () {})
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  void _locationSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (_) {
        return DraggableScrollableSheet(
          expand: false,
          builder: (_, scrolController) {
            return Container(
              decoration: BoxDecoration(
                color: Color(0xFF737373), //could change this to ,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Colors.white,
                ),
                child: ListView(
                  shrinkWrap: true,
                  // controller: scrolController,
                  children: [
                    SizedBox(
                      height: 25,
                      child: Center(
                        child: Container(
                          width: 50,
                          child: Divider(
                            thickness: 5,
                            color: Colors.black38,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Reset',
                            style:
                                TextStyle(color: kColorPrimary, fontSize: 15),
                          ),
                        ),
                        Text(
                          'Location',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Reset',
                            style: TextStyle(
                                color: Colors.transparent, fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.black38,
                    ),
                    ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text('Location'),
                            trailing: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.circle_outlined)),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return Divider(
                            color: Colors.black38,
                          );
                        },
                        itemCount: 56)
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
