import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:jewelery_marketplace/config/constants.dart';
import 'package:jewelery_marketplace/views/business/auth/signin_screen.dart';
import 'package:jewelery_marketplace/views/settings/account_screen.dart';
import 'package:jewelery_marketplace/views/settings/follow_friends_screen.dart';
import 'package:jewelery_marketplace/views/settings/notifications_screen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Column(
        children: [
          ListTile(
            onTap: () => Get.to(() => FellowFriendScreen()),
            leading: Icon(Icons.person_add_alt_1_rounded,
                color: Colors.black, size: 24),
            title: Text('Fellow and invite friends'),
          ),
          ListTile(
            onTap: () => Get.to(() => NotificationsScreen()),
            leading: Icon(
              Icons.notifications,
              color: Colors.black,
              size: 24,
            ),
            title: Text('Notifications'),
          ),
          ListTile(
            onTap: () => Get.to(() => AccountScreen()),
            leading: Icon(
              Icons.person_sharp,
              color: Colors.black,
              size: 24,
            ),
            title: Text('Account'),
          ),
          ListTile(
            leading: Icon(
              Icons.fingerprint,
              color: Colors.black,
              size: 24,
            ),
            title: Text('Use Biometric login'),
            trailing: Switch(
                value: selected,
                onChanged: (value) {
                  setState(() {
                    selected = value;
                  });
                }),
          ),
          Divider(
            color: Colors.black45,
          ),
          ListTile(
            leading: Icon(
              Icons.info_outline_rounded,
              color: Colors.black,
              size: 24,
            ),
            title: Text('About'),
          ),
          GestureDetector(
            onTap: () async {
              await auth.signOut();
              Navigator.of(context).pushNamedAndRemoveUntil(
                  '/sign_in', (Route<dynamic> route) => false);
            },
            child: ListTile(
              leading: Icon(
                Icons.logout_outlined,
                color: Colors.black,
                size: 24,
              ),
              title: Text('Log out'),
            ),
          ),
        ],
      ),
    );
  }
}
