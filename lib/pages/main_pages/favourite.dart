import 'package:flutter/material.dart';
import 'package:showme/pages/bottombar.dart';
import 'package:showme/pages/enum.dart';

class FavrtScreen extends StatefulWidget {
  const FavrtScreen({Key key}) : super(key: key);

  @override
  State<FavrtScreen> createState() => _FavrtScreenState();
}

class _FavrtScreenState extends State<FavrtScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FavrtScreen'),
      ),
      bottomNavigationBar: BottomNavBar(selectedMenu: MenuState.favourite),
    );
  }
}
