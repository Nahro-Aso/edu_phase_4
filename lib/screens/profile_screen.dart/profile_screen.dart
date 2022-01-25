import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';

import '/Screens/profile_screen.dart/profile_card.dart';
import 'Settings/settings.dart';
import 'edit_profile/edit_profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 50,
            ),
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://avatars3.githubusercontent.com/u/17098981?s=460&u=e8c8c9f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8&v=4'),
            ),
            const SizedBox(height: 10),
            const Text(
              'Nahro Aso',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            ProfileCard(
              icon: Icons.person,
              title: "edit_profile".tr,
              ontab: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditProfile(),
                  ),
                );
              },
            ),
            ProfileCard(
              icon: Icons.settings,
              title: "Settings".tr,
              ontab: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Settings(),
                  ),
                );
              },
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                thickness: 1,
              ),
            ),
            ProfileCard(
              icon: Icons.share,
              title: "share_App".tr,
              ontab: () {},
            ),
            ProfileCard(
              icon: Icons.logout_rounded,
              title: "logout".tr,
              ontab: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignInScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      )),
    );
  }
}
