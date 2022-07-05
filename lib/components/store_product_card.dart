import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StoreProductCard extends StatelessWidget {
  const StoreProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          width: MediaQuery.of(context).size.width * 0.33,
          decoration: BoxDecoration(
              image: DecorationImage(
                  colorFilter:
                      ColorFilter.mode(Colors.black26, BlendMode.darken),
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1535556116002-6281ff3e9f36?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGpld2Vscnl8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'))),
          margin: EdgeInsets.all(4),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 25,
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(12)),
                        child: Text('Tifany and co',
                            style:
                                TextStyle(fontSize: 12, color: Colors.black87)),
                      ),
                      Icon(
                        Icons.groups,
                        color: Colors.white,
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
