import 'package:flutter/material.dart';
import 'package:jewelery_marketplace/config/colors.dart';

class BusinessContactScreen extends StatefulWidget {
  const BusinessContactScreen({Key? key}) : super(key: key);

  @override
  _BusinessContactScreenState createState() => _BusinessContactScreenState();
}

class _BusinessContactScreenState extends State<BusinessContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Store Contact'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 20),
            child: Text('Save',
                style: TextStyle(
                    color: kColorPrimary,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
            child: Text('Business Contact',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
            child: Text('Input your details on how people can contact you.',
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: 18,
                    fontWeight: FontWeight.w400)),
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
                  decoration: InputDecoration(labelText: 'Contact person name'),
                  initialValue: 'Alex Hederson',
                ),
                TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Contact person number'),
                  initialValue: '(+244) 67554643',
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Business number'),
                  initialValue: '(+244) 67554643',
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Email'),
                  initialValue: 'email@website.com',
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Website'),
                  initialValue: 'tifanny.com',
                ),
              ],
            )),
          ),
        ],
      ),
    );
  }
}
