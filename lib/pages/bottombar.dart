import 'package:flutter/material.dart';
import 'package:showme/constant.dart';
import 'package:showme/pages/enum.dart';
import 'package:showme/pages/home_screen.dart';
import 'package:showme/pages/main_pages/favourite.dart';
import 'package:showme/pages/main_pages/shopping_cart.dart';
import 'package:showme/pages/main_pages/user.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
    this.selectedMenu,
  }) : super(key: key);
  final MenuState selectedMenu;
  @override
  Widget build(BuildContext context) {
    final Color inactiveColor = Colors.grey;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0xFFDADADA),
              offset: Offset(0, -15),
              blurRadius: 20,
            ),
          ]),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              icon: Image.asset('assets/images/icons/home50.png',
                  color: MenuState.home == selectedMenu
                      ? kPrimaryColor
                      : inactiveColor),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FavrtScreen()));
              },
              icon: Image.asset('assets/images/icons/heart50.png',
                  color: MenuState.favourite == selectedMenu
                      ? kPrimaryColor
                      : inactiveColor),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ShoppingCartScreen()));
              },
              icon: Image.asset('assets/images/icons/shoppingcart50.png',
                  color: MenuState.shoppingcart == selectedMenu
                      ? kPrimaryColor
                      : inactiveColor),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UserProfile()));
              },
              icon: Image.asset('assets/images/icons/user50.png',
                  color: MenuState.profile == selectedMenu
                      ? kPrimaryColor
                      : inactiveColor),
            ),
          ],
        ),
      ),
    );
  }
}
