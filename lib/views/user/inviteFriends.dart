import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sticky_headers/sticky_headers.dart';

import 'package:jewelery_marketplace/config/colors.dart';
import 'package:jewelery_marketplace/config/styles.dart';

class InviteFriends extends StatelessWidget {
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
          'Invite Friends',
          style: kBigBasicStyle,
        ),
      ),
      // bottomSheet: ,
      body: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) {
            if (index == 0) {
              return StickyHeader(
                header: Container(
                  height: 60.0,
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Follow Your Friends',
                        style: kBigBasicStyle.copyWith(
                            color: kDarkBlack.withOpacity(0.5)),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Container(
                          height: 45,
                          width: 100,
                          color: Colors.blue,
                          child: Center(
                            child: Text(
                              'Follow All',
                              style: kInputStyle.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                        ),
                      )
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
                        title: Text('Wade Warren', style: kThinBasicStyle),
                        leading: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.red,
                        ),
                        trailing: Padding(
                          padding: EdgeInsets.only(
                            right: 15,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black38.withOpacity(0.2),
                                      width: 1),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  )),
                              child: Center(
                                child: Text(
                                  'Follow',
                                  style: kInputStyle.copyWith(
                                    color: kDarkBlack,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              );
            } else if (index == 1) {
              return StickyHeader(
                header: Container(
                  height: 60.0,
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Invite to Store',
                        style: kBigBasicStyle.copyWith(
                            color: kDarkBlack.withOpacity(0.5)),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Container(
                          height: 45,
                          width: 100,
                          color: Colors.blue,
                          child: Center(
                            child: Text(
                              'Invite All',
                              style: kInputStyle.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                        ),
                      )
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
                          style: kThinBasicStyle,
                        ),
                        leading: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.red,
                        ),
                        trailing: Padding(
                          padding: EdgeInsets.only(
                            right: 15,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black38.withOpacity(0.2),
                                      width: 1),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  )),
                              child: Center(
                                child: Text(
                                  'Invite',
                                  style: kInputStyle.copyWith(
                                    color: kDarkBlack,
                                  ),
                                ),
                              ),
                            ),
                          ),
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
