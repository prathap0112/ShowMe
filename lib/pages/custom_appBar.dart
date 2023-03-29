import 'package:flutter/material.dart';

import '../constant.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Builder(
            builder: (context) => IconButton(
              icon: Icon(
                Icons.dashboard,
                color: kPrimaryColor,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
        ),
        Column(
          children: [
            Text('Wyte'),
            Text(
              'Chennai,TN',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            )
          ],
        ),
        CircleAvatar(
          foregroundImage: AssetImage('assets/images/avatar.png'),
          backgroundColor: kPrimaryColor,
        )
      ],
    );
  }
}
