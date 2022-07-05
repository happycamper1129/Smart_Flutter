import 'package:flutter/material.dart';
import 'package:jewelery_marketplace/components/default_product_card.dart';
import 'package:jewelery_marketplace/components/outline_button.dart';
import 'package:jewelery_marketplace/config/colors.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      appBar: AppBar(
        title: Text('Product details'),
        actions: [
          IconButton(
              onPressed: () {
                _bottomSheet(context);
              },
              icon: Icon(Icons.more_horiz))
        ],
      ),
      body: ListView(
        children: [
          Image.network(
            'https://images.unsplash.com/photo-1590570894869-f6947be08e16?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fGRpYW1vbmR8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
            height: height / 2,
            fit: BoxFit.cover,
          ),
          Container(
            height: height * 0.2,
            color: Colors.white,
            padding: EdgeInsets.all(6),
            margin: EdgeInsets.only(bottom: 8),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/diamond.png'),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('Davis store  ',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold)),
                            Icon(
                              Icons.verified,
                              color: kColorPrimary,
                              size: 24,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text('Follow',
                                style: TextStyle(
                                    color: kColorPrimaryLight,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text('${12.3}M Followers'),
                            SizedBox(
                              width: 10,
                            ),
                            Text('4,2', style: TextStyle(color: Colors.amber)),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Short description',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20)),
                          SizedBox(
                            height: 10,
                          ),
                          Text('£ 5000',
                              style: TextStyle(
                                  fontWeight: FontWeight.w300, fontSize: 16))
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite_border_rounded,
                                size: 28,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.share, size: 28)),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.turned_in_not_outlined,
                                size: 28,
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            margin: EdgeInsets.only(bottom: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Description',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Tiffany HardWear is elegantly subversive and captures the spirit of the women of New York City. Bold gauge links and a delicate chain define this modern link pendant",
                    style: TextStyle(height: 1.5, fontSize: 15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(Icons.minimize),
                      Text(
                        "18K Gold",
                        style: TextStyle(height: 1.5, fontSize: 15),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.minimize),
                      Text(
                        "18 \" chain",
                        style: TextStyle(height: 1.5, fontSize: 15),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.minimize),
                      Text(
                        "Designed to be comfortable and easy",
                        style: TextStyle(height: 1.5, fontSize: 15),
                      ),
                    ],
                  ),
                ),
                OutlineButton1(title: 'View product Certificate', press: () {}),
                SizedBox(
                  height: 10,
                ),
                OutlineButton1(title: 'Message', press: () {}),
                SizedBox(
                  height: 10,
                ),
                OutlineButton1(title: 'View on website', press: () {}),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
          Container(
            color: kWhite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('More from this store',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                      Text('See all',
                          style: TextStyle(
                              fontSize: 16, color: kColorPrimaryLight))
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 34,
                      itemBuilder: (context, index) {
                        return DefaultProductCard();
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Pending',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                      Text('See all',
                          style: TextStyle(
                              fontSize: 16, color: kColorPrimaryLight))
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 34,
                      itemBuilder: (context, index) {
                        return DefaultProductCard();
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assets/diamond.png'),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Continue shopping',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Tifany and Co.'),
                        ],
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios_sharp))
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void _bottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (_) {
        return DraggableScrollableSheet(
          minChildSize:
              .1, // 0.1 times of available height, sheet can't go below this on dragging
          maxChildSize: .7,
          initialChildSize: 0.3,
          expand: false,
          builder: (_, scrolController) {
            return Container(
              decoration: BoxDecoration(
                color: Color(0xFF737373), //could change this to ,
              ),
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Report...',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'More from this store',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Profile',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => _shareSheet(context),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Share this product',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                      )
                    ],
                  )),
            );
          },
        );
      },
    );
  }

  void _shareSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (_) {
        return DraggableScrollableSheet(
          minChildSize:
              .1, // 0.1 times of available height, sheet can't go below this on dragging
          maxChildSize: .7,
          initialChildSize: 0.2,
          expand: false,
          builder: (_, scrolController) {
            return Container(
              decoration: BoxDecoration(
                color: Color(0xFF737373), //could change this to ,
              ),
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Share in direct message',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Copy product URL',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      )
                    ],
                  )),
            );
          },
        );
      },
    );
  }
}
