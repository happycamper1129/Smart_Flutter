import 'package:flutter/material.dart';
import 'package:jewelery_marketplace/components/hashtag_button.dart';
import 'package:jewelery_marketplace/components/imogi_card.dart';

class JewelryFormUpload extends StatelessWidget {
  const JewelryFormUpload({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Form(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: 'Product Name'),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Original Price'),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Discount Price'),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Short Description '),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Long description'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    'First Hashtags (Chips)',
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                ),
                Container(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      HashtagButton(name: 'Engagement'),
                      HashtagButton(name: 'Special'),
                      HashtagButton(name: 'Occasion'),
                      HashtagButton(name: 'Gift'),
                      HashtagButton(name: 'Something'),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black45,
                  thickness: 1.1,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    'Second Hashtags (Row)',
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                ),
                Container(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      HashtagButton(name: 'Fashion'),
                      HashtagButton(name: 'Diamond'),
                      HashtagButton(name: 'Factory'),
                      HashtagButton(name: 'New'),
                      HashtagButton(name: 'Something'),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black45,
                  thickness: 1.1,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Cerfification link'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    'Emogi',
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFFC4C4C4),
                  ),
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ImogiCard(picture: 'assets/1.svg', title: 'Bridal'),
                      ImogiCard(picture: 'assets/2.svg', title: 'Men'),
                      ImogiCard(picture: 'assets/4.svg', title: 'Like'),
                      ImogiCard(picture: 'assets/3.svg', title: 'Hot'),
                      ImogiCard(picture: 'assets/Frame.svg', title: 'Heart')
                    ],
                  ),
                )
              ],
            )),
          );
  }
}