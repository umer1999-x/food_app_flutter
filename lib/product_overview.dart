import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'config.dart';

class ProductOverView extends StatefulWidget {
  const ProductOverView({Key? key}) : super(key: key);

  @override
  _ProductOverViewState createState() => _ProductOverViewState();
}

class _ProductOverViewState extends State<ProductOverView> {
  Widget bottomBar(
      {Color? iconColor,
      Color? backGroundColor,
      Color? color,
      String? title,
      IconData? icon}) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(20),
        color: Color(0xffa28527),
        child: Row(
          children: [
            Icon(
              icon,
              size: 20,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              title!,
              style: TextStyle(
                fontSize: 20,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color(0xffa28527),
        title: const Text(
          'Product Overview',
          style: TextStyle(color: Colors.black),
        ),
      ),
      bottomNavigationBar: Row(
        children: [
          bottomBar(
            icon: Icons.favorite_outlined,
            title: 'Add to Wishlist',
            color: Colors.white,
            iconColor: Colors.grey,
            backGroundColor: Color(0xffa28527),
          ),
          bottomBar(
            icon: Icons.shop_outlined,
            title: 'Add to Cart',
            color: Colors.white,
            iconColor: Colors.grey,
            backGroundColor: Color(0xffa28527),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  const ListTile(
                    title: Text('Mango'),
                    subtitle: Text('\$50'),
                  ),
                  Container(
                    height: 250,
                    padding: const EdgeInsets.all(40),
                    child: Image.network(image1),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    child: const Text(
                      'Available Option',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "About This product",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'In marketing, a product is an object or system made available for consumer use; it is anything that can be offered to a market to satisfy the desire or need of a customer.',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
