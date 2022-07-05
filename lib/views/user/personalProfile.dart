import 'package:flutter/material.dart';
import 'package:jewelery_marketplace/config/colors.dart';
import 'package:jewelery_marketplace/config/constants.dart';
import 'package:jewelery_marketplace/config/styles.dart';

class PersonalProfile extends StatefulWidget {
  @override
  _PersonalProfileState createState() => _PersonalProfileState();
}

class _PersonalProfileState extends State<PersonalProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              child: Image.network(
                'https://pyxis.nymag.com/v1/imgs/bb0/6c3/03df5277549ea55f8f2ab24a30af0979c1-vrai-solitaire-necklace-.2x.w600.jpg',
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                height: MediaQuery.of(context).size.height * 0.75,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 88.0, top: 25),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ubaid Kolad',
                              style: kBigBasicStyle.copyWith(
                                  color: kDarkBlack, fontSize: 25),
                            ),
                            Text(
                              'United Statessss',
                              style: kBasicStyle.copyWith(
                                  color: kDarkBlack.withOpacity(0.5),
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )),
          Positioned(
            top: 170,
            child: Padding(
              padding: const EdgeInsets.only(left: 28.0),
              child: CircleAvatar(
                backgroundColor: Colors.blue,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGSuX2bsu6tynOwxT6IXX0fd7SvzZQuPbn8g&usqp=CAU'),
                radius: 65,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 318.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    countText('26', 'Posts'),
                    countText('12.3M', 'Followers'),
                    countText('216', 'Following')
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 28.0, top: 20),
                  child: Text(
                    'Expertly crafting jewelery for the world\'s greatest love stories since 1837.',
                    style:
                        kBasicStyle.copyWith(color: kDarkBlack, fontSize: 17),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                        child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
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
                              'Edit Profile',
                              style: kInputStyle.copyWith(
                                  color: kDarkBlack,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                        ),
                      ),
                    ))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 28, right: 18, top: 15.0, bottom: 10),
                  child: Row(
                    children: [
                      button('Messages'),
                      button('Activity'),
                      button('Statistics'),
                    ],
                  ),
                ),
                Expanded(
                  child: GridView.builder(
                    itemCount: 10,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 4.0,
                        mainAxisSpacing: 4.0),
                    itemBuilder: (BuildContext context, int index) {
                      return Image.network(
                          'https://i.pinimg.com/originals/1d/0d/c5/1d0dc5ccc879740dc7227eb4adb08c53.jpg');
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget button(String text) {
    return Expanded(
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
}
