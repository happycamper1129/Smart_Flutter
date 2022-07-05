import 'package:flutter/material.dart';

class FellowFriendScreen extends StatefulWidget {
  const FellowFriendScreen({Key? key}) : super(key: key);

  @override
  _FellowFriendScreenState createState() => _FellowFriendScreenState();
}

class _FellowFriendScreenState extends State<FellowFriendScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fellow and invite friends'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Fellow Contacts',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Invite friends by Whatsapp',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Invite friends by Email',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Invite friends by SMS',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Invite friends by',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
            )
          ],
        ),
      ),
    );
  }
}
