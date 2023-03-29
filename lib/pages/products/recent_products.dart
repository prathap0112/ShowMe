import 'package:flutter/material.dart';
import 'package:showme/constant.dart';

class RecentProducts extends StatelessWidget {
  final productList = [
    {
      'name': 'Mermaid',
      'image': 'assets/images/products/product1.png',
      'price': 50,
      'disc': 'Material: Georgette; Comfortable and Breathable to wear',
    },
    {
      'name': 'Naruto',
      'image': 'assets/images/products/product2.png',
      'price': 50,
      'disc': 'Material: Georgette; Comfortable and Breathable to wear',
    },
    {
      'name': 'IronMan',
      'image': 'assets/images/products/product3.png',
      'price': 50,
      'disc': 'Material: Georgette; Comfortable and Breathable to wear',
    },
    {
      'name': 'Flash',
      'image': 'assets/images/products/product4.png',
      'price': 50,
      'disc': 'Material: Georgette; Comfortable and Breathable to wear',
    },
    {
      'name': 'Stich',
      'image': 'assets/images/products/product5.png',
      'price': 50,
      'disc': 'Material: Georgette; Comfortable and Breathable to wear',
    },
    {
      'name': 'SonGoku',
      'image': 'assets/images/products/product6.png',
      'price': 50,
      'disc': 'Material: Georgette; Comfortable and Breathable to wear',
    },
    {
      'name': 'Simpson',
      'image': 'assets/images/products/product7.png',
      'price': 50,
      'disc': 'Material: Georgette; Comfortable and Breathable to wear',
    },
    {
      'name': 'Superman',
      'image': 'assets/images/products/product8.png',
      'price': 50,
      'disc': 'Material: Georgette; Comfortable and Breathable to wear',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.70,
        ),
        itemBuilder: (context, index) {
          return RecentSingleProducts(
            recent_single_prod_disc: productList[index]['disc'],
            recent_single_prod_name: productList[index]['name'],
            recent_single_prod_image: productList[index]['image'],
            recent_single_prod_price: productList[index]['price'],
          );
        });
  }
}

class RecentSingleProducts extends StatefulWidget {
  final recent_single_prod_name;
  final recent_single_prod_image;
  final recent_single_prod_price;
  final recent_single_prod_disc;

  RecentSingleProducts({
    this.recent_single_prod_name,
    this.recent_single_prod_image,
    this.recent_single_prod_price,
    this.recent_single_prod_disc,
  });

  @override
  State<RecentSingleProducts> createState() => _RecentSingleProductsState();
}

class _RecentSingleProductsState extends State<RecentSingleProducts> {
  bool isLike = false;
  final Color inactiveColor = Colors.black38;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 180,
            width: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: kPrimaryColor,
            ),
            child: Image.asset(widget.recent_single_prod_image, scale: 0.8)),
        ListTile(
          title: Text(widget.recent_single_prod_name),
          subtitle: Text('\$${widget.recent_single_prod_price}'),
          trailing: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                color: kPrimaryColor, borderRadius: BorderRadius.circular(30)),
            child: IconButton(
                onPressed: () {
                  setState(() {
                    isLike = !isLike;
                  });
                },
                icon: Icon(
                  isLike ? Icons.favorite : Icons.favorite_border_outlined,
                  color: isLike ? Colors.red : inactiveColor,
                  size: 15,
                )),
          ),
        )
      ],
    );
  }
}
