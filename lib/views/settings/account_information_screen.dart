import 'package:flutter/material.dart';
import 'package:jewelery_marketplace/components/default_button.dart';
import 'package:jewelery_marketplace/components/outline_button.dart';

class AccountInformationScreen extends StatefulWidget {
  const AccountInformationScreen({Key? key}) : super(key: key);

  @override
  _AccountInformationScreenState createState() =>
      _AccountInformationScreenState();
}

class _AccountInformationScreenState extends State<AccountInformationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account Information'),
      ),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              TextFormField(
                initialValue: 'email@google.com',
                decoration: InputDecoration(
                  labelText: 'Email',
                  suffix: OutlinedButton(
                      onPressed: null,
                      child: Text(
                        'change',
                        style: TextStyle(color: Colors.black54),
                      )),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                initialValue: '+1 2453658766',
                decoration: InputDecoration(
                  labelText: 'Mobile number',
                  suffix: OutlinedButton(
                      onPressed: null,
                      child: Text(
                        'change',
                        style: TextStyle(color: Colors.black54),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
