import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jewelery_marketplace/components/default_button.dart';
import 'package:jewelery_marketplace/components/defualt_headertext.dart';
import 'package:jewelery_marketplace/config/colors.dart';
import 'package:jewelery_marketplace/config/constants.dart';
import 'package:jewelery_marketplace/views/business/store/plicies_screen.dart';

class StoreSetUpScreen extends StatefulWidget {
  const StoreSetUpScreen({Key? key}) : super(key: key);

  @override
  _StoreSetUpScreenState createState() => _StoreSetUpScreenState();
}

class _StoreSetUpScreenState extends State<StoreSetUpScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Store Set-up'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DefaultHeaderTitle(title: 'Let\'s get started'),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Text('Let\'s add some details to your store',
                  style: TextStyle(fontSize: 16)),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.2 + 50,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        image:  DecorationImage(
                            colorFilter: ColorFilter.mode(
                                Colors.black38, BlendMode.darken),
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/start.png',
                            ))),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add_a_photo,
                          color: lightBtn,
                          size: 50,
                        )),
                  ),
                  Positioned(
                      left: 25,
                      top: MediaQuery.of(context).size.height * 0.2 - 50,
                      child: CircleAvatar(
                        backgroundColor: Color(0xFF29AB87),
                        radius: 50,
                        child: Icon(
                          Icons.add_a_photo,
                          size: 35,
                          color: Colors.white,
                        ),
                      )),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Form(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Description')
                  ),
                  TextFormField(
                    decoration:
                        InputDecoration(labelText: 'Number of omployees'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Established since'),
                  ),
                ],
              )),
            ),
          ],
        ),
      ),
      bottomNavigationBar: DefaultButton(
          title: 'Next',
          press: () {
            Get.to(() => PoliciesScreen());
          }),
    );
  }
}
