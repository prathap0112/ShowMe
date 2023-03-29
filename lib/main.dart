import 'package:flutter/material.dart';

import 'package:showme/constant.dart';

import 'pages/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          //
          appBarTheme: AppBarTheme(color: kPrimaryColor)),
      home: HomeScreen(),
    );
  }
}
