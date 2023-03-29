import 'package:flutter/material.dart';
import 'package:showme/constant.dart';
import 'package:showme/pages/enum.dart';
import 'package:showme/pages/home_body.dart';

import 'bottombar.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBGColor,
      body: HomeBody(),
      bottomNavigationBar: BottomNavBar(
        selectedMenu: MenuState.home,
      ),
    );
  }
}
