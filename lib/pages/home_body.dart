import 'package:flutter/material.dart';
import 'package:showme/pages/categories/categories.dart';

import 'package:showme/pages/products/recent_products.dart';
import 'package:showme/pages/search_section.dart';
import 'package:showme/pages/slider/slider.dart';

import 'custom_appBar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              CustomAppBar(),
              SizedBox(
                height: 20,
              ),
              SearchBar(),
              SizedBox(
                height: 20,
              ),
              ProductSlider(),
              SizedBox(
                height: 20,
              ),
              Categories(),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 300,
                child: RecentProducts(),
              )
            ],
          ),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
