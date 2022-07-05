import 'package:flutter/material.dart';
import 'package:jewelery_marketplace/config/colors.dart';

class BusinessWishlistScreen extends StatefulWidget {
  const BusinessWishlistScreen({Key? key}) : super(key: key);

  @override
  _BusinessWishlistScreenState createState() => _BusinessWishlistScreenState();
}

class _BusinessWishlistScreenState extends State<BusinessWishlistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wishlist'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return WishlistCard();
        },
        itemCount: 7,
      ),
    );
  }
}

class WishlistCard extends StatelessWidget {
  const WishlistCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.all(8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network(
            "https://images.unsplash.com/photo-1561828995-aa79a2db86dd?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8amV3ZWxyeXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
            height: 100,
            width: 100,
            fit: BoxFit.cover,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'DoubleLink Pendant',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage("assets/diamond.png"),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Tifany and Co',
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.verified,
                    color: kColorPrimary,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '4.5',
                    style: TextStyle(fontSize: 15),
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 24,
                  ),
                ],
              ),
              Text('July 7')
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: GestureDetector(
                onTap: () {
                  _modalBottomSheetMenu(context);
                },
                child: Icon(Icons.more_horiz_outlined)),
          )
        ],
      ),
    );
  }

  void _modalBottomSheetMenu(context) {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return new Container(
            height: MediaQuery.of(context).size.height * 0.3,
            color: Color(0xFF737373), //could change this to ,
            //so you don't have to change MaterialApp canvasColor
            child: new Container(
              decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(25.0),
                      topRight: const Radius.circular(25.0))),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        width: 50,
                        child: Divider(
                          thickness: 5,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'View Products',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('Share to',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('Copy link...',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400)),
                    ),
                    GestureDetector(
                      onTap: () {
                        _showMaterialDialog(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text('Delete',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400)),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }

  _showMaterialDialog(context) {
    showDialog(
        context: context,
        builder: (_) => new AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              title: new Text(
                "Delete Wishlist?",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  FlatButton(
                    child: Text(
                      'Delete',
                      style: TextStyle(color: Colors.redAccent),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  Divider(),
                  FlatButton(
                    child: Text('Close'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ));
  }
}
