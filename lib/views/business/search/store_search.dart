import 'package:flutter/material.dart';
import 'package:jewelery_marketplace/components/default_button.dart';
import 'package:jewelery_marketplace/components/filter_button.dart';
import 'package:jewelery_marketplace/components/product_category_card.dart';
import 'package:jewelery_marketplace/config/colors.dart';

class StoresSearch extends StatelessWidget {
  const StoresSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: ListView(
        children: [
          Container(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                FilterButton(
                  press: () async {
                    // _filterSheet(context);
                  },
                ),
                CategoryButton(category: 'Jewelry', selected: false),
                CategoryButton(category: 'Diamond', selected: false),
                CategoryButton(category: 'RIo', selected: false),
                CategoryButton(category: 'Alpha', selected: false),
              ],
            ),
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(4),
                height: MediaQuery.of(context).size.height / 3.5,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('assets/diamond.png'),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Text('Davis store',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold)),
                                Icon(
                                  Icons.verified,
                                  color: kColorPrimary,
                                  size: 24,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('4,2',
                                    style: TextStyle(color: Colors.amber)),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text('United States')
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('View store',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: kColorPrimaryLight)),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                bottomLeft: Radius.circular(12)),
                            child: Image.asset(
                              "assets/jewelry.png",
                              height:
                                  MediaQuery.of(context).size.height / 5 - 40,
                              width:
                                  MediaQuery.of(context).size.height / 5 - 40,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Image.asset(
                            "assets/jewelry.png",
                            height: MediaQuery.of(context).size.height / 5 - 40,
                            width: MediaQuery.of(context).size.height / 5 - 40,
                            fit: BoxFit.cover,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(12),
                                bottomRight: Radius.circular(12)),
                            child: Image.asset(
                              "assets/jewelry.png",
                              height:
                                  MediaQuery.of(context).size.height / 5 - 40,
                              width:
                                  MediaQuery.of(context).size.height / 5 - 40,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
            itemCount: 5,
          ),
        ],
      ),
    );
  }

  
}
