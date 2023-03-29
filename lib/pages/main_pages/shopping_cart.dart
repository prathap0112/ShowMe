import 'package:flutter/material.dart';

import '../bottombar.dart';
import '../enum.dart';

class ShoppingCartScreen extends StatefulWidget {
  @override
  State<ShoppingCartScreen> createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ShoppingCart'),
      ),
      bottomNavigationBar: BottomNavBar(selectedMenu: MenuState.shoppingcart),
    );
    ;
  }
}
