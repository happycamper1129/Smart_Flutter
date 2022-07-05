import 'package:flutter/material.dart';
import 'package:jewelery_marketplace/config/colors.dart';
import 'package:jewelery_marketplace/config/styles.dart';
import 'package:sticky_headers/sticky_headers.dart';

class NewMesssagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        leading: Icon(
          Icons.arrow_back,
          color: kDarkBlack,
        ),
        centerTitle: false,
        title: Text(
          'New Message',
          style: kBigBasicStyle,
        ),
      ),
      // bottomSheet: ,
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            if (index == 0) {
              return StickyHeader(
                  content: Container(
                    height: 0,
                    width: 0,
                  ),
                  header: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 40.0,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          )),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.search,
                                color: Colors.grey,
                              ),
                              Text(
                                'Search Users',
                                style: kInputHintStyle.copyWith(
                                    color: Colors.grey, fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ));
            } else if (index == 1) {
              return StickyHeader(
                header: Container(
                  height: 40.0,
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Suggested',
                        style: kBigBasicStyle.copyWith(color: kDarkBlack),
                      ),
                    ],
                  ),
                ),
                content: Container(
                  padding: EdgeInsets.only(left: 15, bottom: 15),
                  height: 400,
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return ListTile(
                        contentPadding: EdgeInsets.only(top: 10, bottom: 10),
                        title: Text('Wade Warren', style: kInputHintStyle1),
                        leading: CircleAvatar(
                          radius: 28,
                          backgroundColor: Colors.red,
                        ),
                      );
                    },
                  ),
                ),
              );
            } else if (index == 2) {
              return StickyHeader(
                header: Container(
                  height: 60.0,
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Following',
                        style: kBigBasicStyle.copyWith(),
                      ),
                    ],
                  ),
                ),
                content: Container(
                  padding: EdgeInsets.only(left: 15, bottom: 15),
                  height: 400,
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return ListTile(
                        contentPadding: EdgeInsets.only(top: 10, bottom: 10),
                        title: Text(
                          'Wade Warren',
                          style: kInputHintStyle1,
                        ),
                        leading: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.red,
                        ),
                      );
                    },
                  ),
                ),
              );
            } else {
              return StickyHeader(
                header: Container(
                  height: 60.0,
                  color: Colors.blueGrey[700],
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Header #$index',
                        style: const TextStyle(color: Colors.white),
                      ),
                      Container(
                        height: 30,
                        width: 80,
                        color: Colors.blue,
                      )
                    ],
                  ),
                ),
                content: Container(
                  height: 400,
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text('items[index]'),
                        leading: CircleAvatar(
                          backgroundColor: Colors.red,
                        ),
                      );
                    },
                  ),
                ),
              );
            }
          }),
    );
  }
}
