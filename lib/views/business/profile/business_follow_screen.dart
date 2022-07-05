import 'package:flutter/material.dart';
import 'package:jewelery_marketplace/components/outline_button.dart';
import 'package:jewelery_marketplace/config/colors.dart';
import 'package:jewelery_marketplace/views/business/search/product_search.dart';
import 'package:jewelery_marketplace/views/business/search/store_search.dart';

class BusinessFollowScreen extends StatefulWidget {
  const BusinessFollowScreen({Key? key}) : super(key: key);

  @override
  _BusinessFollowScreenState createState() => _BusinessFollowScreenState();
}

class _BusinessFollowScreenState extends State<BusinessFollowScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('username'),
          bottom: TabBar(
            unselectedLabelStyle: TextStyle(
              color: Colors.black,
            ),
            indicatorColor: Colors.black,
            labelStyle:
                TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            tabs: [
              Tab(
                text: 'Following',
              ),
              Tab(
                text: 'Followers',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [Following(), Followers()],
        ),
      ),
    );
  }
}

class Followers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      child: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1544723495-432537d12f6c?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDF8fGF2YXRhcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
              ),
              title: Text(
                'User Name',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              trailing: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'Following',
                    style: TextStyle(color: Colors.black),
                  )),
            ),
          );
        },
      ),
    );
  }
}

class Following extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      child: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YXZhdGFyfGVufDB8MnwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
              ),
              title: Row(
                children: [
                  Text(
                    'User Name .  ',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    index % 2 == 0 ? 'Follow' : '',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: kColorPrimaryLight),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
