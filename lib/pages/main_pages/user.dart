import 'package:flutter/material.dart';

import '../bottombar.dart';
import '../enum.dart';

class UserProfile extends StatefulWidget {
  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      bottomNavigationBar: BottomNavBar(selectedMenu: MenuState.profile),
    );
    ;
  }
}
