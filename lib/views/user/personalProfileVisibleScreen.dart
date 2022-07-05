import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:jewelery_marketplace/config/colors.dart';
import 'package:jewelery_marketplace/config/styles.dart';

class PersonalProfileOth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                              'Tiffany',
                              style: kBigBasicStyle.copyWith(
                                  color: kDarkBlack, fontSize: 25),
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
                        child: GestureDetector(
                          onTap: () => showSettings(context),
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
                      ),
                    ))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 28, right: 18, top: 15.0, bottom: 10),
                  child: Row(
                    children: [
                      // button(
                      //     'Follow', show(context), Colors.blue, Colors.white),
                      // button('Follow', show(context), Colors.white, kDarkBlack),
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

  Future<void> showSettings(BuildContext context) {
    return showModalBottomSheet(
        isDismissible: true,
        enableDrag: false,
        backgroundColor: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        context: context,
        builder: (BuildContext context) {
          return Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            Container(
              padding: const EdgeInsets.only(top: 10.0),
              height: 250,
              child: ListView(
                children: [
                  ListTile(
                    title: Text(
                      'Share this Profile',
                      style: kInputStyle.copyWith(
                          color: kDarkBlack, fontWeight: FontWeight.w900),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Copy Profile URL',
                      style: kInputStyle.copyWith(
                          color: kDarkBlack, fontWeight: FontWeight.w900),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Report...',
                      style: kInputStyle.copyWith(
                          color: kDarkBlack, fontWeight: FontWeight.w900),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Block',
                      style: kInputStyle.copyWith(
                          color: kDarkBlack, fontWeight: FontWeight.w900),
                    ),
                  ),
                ],
              ),
            )
          ]);
        });
  }

  Future<void> showContact(BuildContext context) {
    return showModalBottomSheet(
        isDismissible: true,
        enableDrag: false,
        backgroundColor: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        context: context,
        builder: (BuildContext context) {
          return Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 18.0, bottom: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Contact',
                    style: kBasicStyle.copyWith(
                        color: kDarkBlack, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
            Container(
              height: 300,
              child: ListView(
                children: [
                  ListTile(
                    title: Text(
                      'Call',
                      style: kInputStyle.copyWith(
                          color: kDarkBlack, fontWeight: FontWeight.w900),
                    ),
                    subtitle: Text(
                      '+1 825638046428',
                      style: kInputHintStyle.copyWith(color: kLightBlack),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Call',
                      style: kInputStyle.copyWith(
                          color: kDarkBlack, fontWeight: FontWeight.w900),
                    ),
                    subtitle: Text(
                      '+1 825638046428',
                      style: kInputHintStyle.copyWith(color: kLightBlack),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Email',
                      style: kInputStyle.copyWith(
                          color: kDarkBlack, fontWeight: FontWeight.w900),
                    ),
                    subtitle: Text(
                      'hhjajsh@gmail.com',
                      style: kInputHintStyle.copyWith(color: kLightBlack),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Visit Website',
                      style: kInputStyle.copyWith(
                          color: kDarkBlack, fontWeight: FontWeight.w900),
                    ),
                    subtitle: Text(
                      '+1 825638046428',
                      style: kInputHintStyle.copyWith(color: kLightBlack),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Message',
                      style: kInputStyle.copyWith(
                          color: kDarkBlack, fontWeight: FontWeight.w900),
                    ),
                    subtitle: Text(
                      'Chat with Troy',
                      style: kInputHintStyle.copyWith(color: kLightBlack),
                    ),
                  )
                ],
              ),
            )
          ]);
        });
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

  Widget button(String text, Future onTap, Color fillColor, Color textColor) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          right: 10,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: GestureDetector(
            onTap: () => onTap,
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                  color: fillColor,
                  border: Border.all(
                      color: Colors.black38.withOpacity(0.2), width: 1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  )),
              child: Center(
                child: Text(
                  text,
                  style: kInputStyle.copyWith(
                      color: textColor, fontWeight: FontWeight.w900),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
