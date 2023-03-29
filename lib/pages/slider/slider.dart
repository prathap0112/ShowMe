import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:showme/constant.dart';

class ProductSlider extends StatefulWidget {
  @override
  State<ProductSlider> createState() => _ProductSliderState();
}

class _ProductSliderState extends State<ProductSlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Carousel(
        images: [
          AssetImage('assets/images/slider1.jpg'),
          AssetImage('assets/images/slider2.jpg'),
          AssetImage('assets/images/slider3.jpg'),
          AssetImage('assets/images/slider4.jpg'),
          AssetImage('assets/images/slider5.jpg'),
        ],
        borderRadius: true,
        radius: Radius.circular(30.0),
        dotBgColor: Colors.transparent,
        dotColor: kPrimaryColor,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 800),
      ),
    );
  }
}
