import 'package:flutter/material.dart';

class ProductOverView extends StatefulWidget {
  const ProductOverView({Key? key}) : super(key: key);

  @override
  _ProductOverViewState createState() => _ProductOverViewState();
}

class _ProductOverViewState extends State<ProductOverView> {
  Widget BottomBar(
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
          BottomBar(
            icon: Icons.favorite_outlined,
            title: 'Add to Wishlist',
            color: Colors.white,
            iconColor: Colors.grey,
            backGroundColor: Color(0xffa28527),
          ),
          BottomBar(
            icon: Icons.shop_outlined,
            title: 'Add to Cart',
            color: Colors.white,
            iconColor: Colors.grey,
            backGroundColor: Color(0xffa28527),
          ),
        ],
      ),
    );
  }
}
