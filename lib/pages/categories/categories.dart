import 'package:flutter/material.dart';
import 'package:showme/constant.dart';

class Categories extends StatefulWidget {
  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CategoryProducts(
            press: () {},
            //need to add Image here
            text: 'Electronics ', image: 'assets/images/products/product1.png',
          ),
          SizedBox(width: 20),
          CategoryProducts(
            press: () {},
            //need to add Image here
            text: 'Mobiles ', image: 'assets/images/products/product2.png',
          ),
          SizedBox(width: 20),
          CategoryProducts(
            press: () {},
            //need to add Image here
            text: 'TV & Appliances ',
            image: 'assets/images/products/product3.png',
          ),
          SizedBox(width: 20),
          CategoryProducts(
            press: () {},
            //need to add Image here
            text: 'Fashion ', image: 'assets/images/products/product4.png',
          ),
          SizedBox(width: 20),
          CategoryProducts(
            press: () {},
            //need to add Image here
            text: 'Beauty ', image: 'assets/images/products/product5.png',
          ),
        ],
      ),
    );
  }
}

class CategoryProducts extends StatelessWidget {
  const CategoryProducts({
    Key key,
    this.image,
    this.text,
    this.press,
  }) : super(key: key);
  final String image, text;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: GestureDetector(
        onTap: press,
        child: Container(
          child: Chip(
            backgroundColor: kPrimaryColor,
            label: Row(
              children: [
                Text(text),
                Image.asset(
                  image,
                  height: 40,
                ),
                // image asset need to add here
              ],
            ),
          ),
        ),
      ),
    );
  }
}
