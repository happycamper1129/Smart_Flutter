import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:jewelery_marketplace/components/home_product_card.dart';
import 'package:jewelery_marketplace/views/business/activity/business_search_screen.dart';

class BusinessHomeScreen extends StatefulWidget {
  const BusinessHomeScreen({Key? key}) : super(key: key);

  @override
  _BusinessHomeScreenState createState() => _BusinessHomeScreenState();

}

class _BusinessHomeScreenState extends State<BusinessHomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
              onPressed: null,
              icon: SvgPicture.asset("assets/notification.svg"))
        ],
      ),
      body: Column(
        //physics: ScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8),
            child: TextField(
              readOnly: true,
              onTap: () => Get.to(BusinessSearchScreen()),
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
          Expanded(
              child: StaggeredGrid.count(
            //  shrinkWrap: true,
               crossAxisCount: 3,
            //   itemCount: 65,
            //   itemBuilder: (context, index) => HomeProductCard(),
            // staggeredTileBuilder: (index) => StaggeredGridTile.count(
            //     (index % 7 == 0) ? 2 : 1, (index % 7 == 0) ? 2 : 1),
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
          ))
        ],
      ),
    );
  }
}
