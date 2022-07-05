import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:jewelery_marketplace/config/colors.dart';
import 'package:jewelery_marketplace/config/styles.dart';
import 'package:jewelery_marketplace/views/business/profile/business_follow_screen.dart';
import 'package:jewelery_marketplace/views/business/profile/business_manage_store.dart';
import 'package:jewelery_marketplace/views/business/profile/store_edit_screen.dart';
import 'package:jewelery_marketplace/views/business/product/product_upload_screen.dart';
import 'package:jewelery_marketplace/views/settings/settings_screen.dart';
import 'package:jewelery_marketplace/components/default_product_card.dart';

class BusinessProfileScreen extends StatefulWidget {
  const BusinessProfileScreen({Key? key}) : super(key: key);

  @override
  _BusinessProfileScreenState createState() => _BusinessProfileScreenState();
}

class _BusinessProfileScreenState extends State<BusinessProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text('Profile'),
        actions: [
          IconButton(
              onPressed: null,
              icon: SvgPicture.asset("assets/notification.svg")),
          IconButton(
              onPressed: () => Get.to(() => UploadJewelryScreen(
                    editing: false,
                  )),
              icon: Icon(
                Icons.add_box_outlined,
                size: 28,
              )),
          IconButton(
              onPressed: () {
                _modalBottomSheetMenu(context);
              },
              icon: Icon(
                Icons.menu,
                size: 28,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: double.infinity),
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  child: Image.network(
                    'https://images.unsplash.com/photo-1497215728101-856f4ea42174?ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxMXx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 140,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 160.0, top: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Tiffany & Co.',
                                style: kBigBasicStyle.copyWith(
                                    color: kDarkBlack, fontSize: 20),
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
                                '4,2',
                                style: TextStyle(color: Colors.amber),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 20,
                              ),
                            ],
                          ),
                          Text(
                            'United States',
                            style: kBasicStyle.copyWith(
                                color: kDarkBlack.withOpacity(0.5),
                                fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        countText(' ${564}', 'Wallet'),
                        countText('26', 'Posts'),
                        countText('12.3M', 'Followers'),
                        countText('216', 'Following'),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 28.0, top: 20),
                      child: Text(
                        'Expertly crafting jewelery for the world\'s greatest love stories since 1837.',
                        style: kBasicStyle.copyWith(
                            color: kDarkBlack, fontSize: 16),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Get.to(() => BusinessManageStore()),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(7.0),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 28.0, right: 28, top: 15),
                          child: Container(
                            height: 45,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black38.withOpacity(0.2),
                                    width: 1),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                )),
                            child: Center(
                              child: Text(
                                'Manage store',
                                style: kInputStyle.copyWith(
                                    color: kDarkBlack,
                                    fontWeight: FontWeight.w900),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 28, right: 18, top: 15.0, bottom: 10),
                      child: Row(
                        children: [
                          button('Messages', () {}),
                          button('Activity', () {
                            Get.to(BusinessFollowScreen());
                          }),
                          button('Statistics', () {}),
                        ],
                      ),
                    ),
                    Expanded(
                      // height: MediaQuery.of(context).size.height,
                      child: ListView(
                        // physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Trending',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 18)),
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
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 18)),
                          ),
                          Container(
                            height: 200,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              physics: ScrollPhysics(),
                              itemCount: 10,
                              itemBuilder: (BuildContext context, int index) {
                                return DefaultProductCard();
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Arrival',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 18)),
                          ),
                          Container(
                            height: 200,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              physics: ScrollPhysics(),
                              itemCount: 10,
                              itemBuilder: (BuildContext context, int index) {
                                return DefaultProductCard();
                              },
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 28.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8YXZhdGFyfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                    radius: 60,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget button(String text, press) {
    return Expanded(
      child: GestureDetector(
        onTap: press,
        child: Padding(
          padding: EdgeInsets.only(
            right: 10,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black38.withOpacity(0.2), width: 1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  )),
              child: Center(
                child: Text(
                  text,
                  style: kInputStyle.copyWith(
                      color: kDarkBlack, fontWeight: FontWeight.w900),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget countText(String number, String text) {
    return Column(
      children: [
        Text(
          number,
          style: kBigBasicStyle.copyWith(color: kDarkBlack, fontSize: 17.5),
        ),
        Text(
          text,
          style: kBasicStyle.copyWith(color: kDarkBlack, fontSize: 18),
        ),
      ],
    );
  }

  void _modalBottomSheetMenu(context) {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.2,
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
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 15),
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
                    GestureDetector(
                      onTap: () {
                        Get.to(() => BusinessEditProfileScreen());
                      },
                      child: ListTile(
                        leading: Icon(
                          Icons.edit,
                          size: 28,
                          color: Colors.black,
                        ),
                        title: Text('Edit store info',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w600)),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => SettingsScreen());
                      },
                      child: ListTile(
                        leading: Icon(
                          Icons.settings,
                          size: 28,
                          color: Colors.black,
                        ),
                        title: Text('Settings',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            )),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        //
                      },
                      child: ListTile(
                        leading: Icon(
                          Icons.logout,
                          size: 28,
                          color: Colors.black,
                        ),
                        title: Text('Logout',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
