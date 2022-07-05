import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jewelery_marketplace/config/colors.dart';
import 'package:jewelery_marketplace/config/styles.dart';

class UserUploadScreen extends StatelessWidget {
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
            'Notifications',
            style: kBigBasicStyle,
          ),
        ),
        // bottomSheet: ,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.46,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    Image.network(
                      'https://pyxis.nymag.com/v1/imgs/bb0/6c3/03df5277549ea55f8f2ab24a30af0979c1-vrai-solitaire-necklace-.2x.w600.jpg',
                      fit: BoxFit.fitWidth,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.add_a_photo,
                        color: Colors.white.withOpacity(0.7),
                        size: 45,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28.0, right: 28),
                child: TextField(
                  decoration: InputDecoration(
                    border:
                        new UnderlineInputBorder(borderSide: new BorderSide()),
                    labelText: 'Description',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28.0, right: 28),
                child: TextField(
                  decoration: InputDecoration(
                    border:
                        new UnderlineInputBorder(borderSide: new BorderSide()),
                    labelText: 'Location',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28.0, top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Hashtags:',
                      style: kThinBasicStyle,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28.0, top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    buttonIcon('+', Colors.white, kDarkBlack),
                    buttonText('Diamond', Colors.blue, Colors.white),
                    buttonText('Rough', Colors.blue, Colors.white),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28.0, top: 15, bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    buttonText('Done', Colors.blue, Colors.white),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  Widget buttonIcon(String text, Color colorbox, Color colortext) {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: EdgeInsets.only(
          right: 10,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            height: 30,
            width: 95,
            decoration: BoxDecoration(
                color: colorbox,
                border: Border.all(
                    color: Colors.black38.withOpacity(0.2), width: 1),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                )),
            child: Center(
              child: Text(
                text,
                style: kInputStyle.copyWith(
                    color: colortext, fontWeight: FontWeight.w900),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buttonText(String text, Color colorbox, Color colortext) {
    return Expanded(
      flex: 4,
      child: Padding(
        padding: EdgeInsets.only(
          right: 10,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            height: 40,
            width: 95,
            decoration: BoxDecoration(
                color: colorbox,
                border: Border.all(
                    color: Colors.black38.withOpacity(0.2), width: 1),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                )),
            child: Center(
              child: Text(
                text,
                style: kInputStyle.copyWith(
                    color: colortext, fontWeight: FontWeight.w900),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
