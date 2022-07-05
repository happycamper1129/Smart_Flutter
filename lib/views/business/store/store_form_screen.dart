import 'package:flutter/material.dart';
import 'package:jewelery_marketplace/components/default_button.dart';
import 'package:jewelery_marketplace/views/business/auth/get_intouch_screen.dart';

class StoreFormScreen extends StatefulWidget {
  const StoreFormScreen({Key? key}) : super(key: key);

  @override
  _StoreFormScreenState createState() => _StoreFormScreenState();
}

class _StoreFormScreenState extends State<StoreFormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Text('Your Store Info',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      color: Colors.black)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Add your store information.',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.black38)),
            ),
            SizedBox(
              height: 40,
            ),
            Form(
                child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Your business *'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Address *'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'City *'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Country *'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Nature of business *',
                      suffixIcon: IconButton(
                          onPressed: () {}, icon: Icon(Icons.chevron_right)),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text('Documents required *'),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('newFile.pdf'),
                        GestureDetector(
                          child: Text(
                            'Remove file',
                            style: TextStyle(color: Colors.redAccent),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          '+ Add file',
                          style: TextStyle(color: Colors.black),
                        )),
                  )
                ],
              ),
            )),
            DefaultButton(
                title: 'Continue',
                press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => GetInTouchScreen())))
          ],
        ),
      ),
    );
  }
}
