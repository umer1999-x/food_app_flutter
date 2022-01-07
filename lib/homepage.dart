import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'drawer.dart';
import 'singleproduct.dart';
import 'config.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      drawer: const DrawerSide(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color(0xffa28527),
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.black),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: CircleAvatar(
              backgroundColor: Color(0xffeeba08),
              child: Icon(
                Icons.search,
                size: 26.0,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: CircleAvatar(
              backgroundColor: Color(0xffeeba08),
              child: Icon(
                Icons.shop,
                size: 26.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://epha.org/wp-content/uploads/2019/03/gabriele-bartoletti-stella-509993-unsplash--1080x661.jpg'),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 150, bottom: 100),
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(50),
                                  bottomRight: Radius.circular(50),
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  'Veigo',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    shadows: [
                                      BoxShadow(
                                        color: Colors.green,
                                        blurRadius: 10,
                                        offset: Offset(3, 3),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Herbs Seasons'),
                  Text(
                    'View All',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SingleProduct(
                      imageName: image1, productName: 'Mango', onTap: () {
                        Navigator.pushNamed(context, '/productoverview');
                  }),
                  SingleProduct(
                      imageName: image2, productName: 'Banana', onTap: () {}),
                  SingleProduct(
                      imageName: image2, productName: 'Apple', onTap: () {}),
                  SingleProduct(
                      imageName: image2, productName: 'Gava', onTap: () {}),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Herbs Seasons'),
                  Text(
                    'View All',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SingleProduct(
                      imageName: image1, productName: 'Mango', onTap: () {}),
                  SingleProduct(
                      imageName: image1, productName: 'Banana', onTap: () {}),
                  SingleProduct(
                      imageName: image2, productName: 'Apple', onTap: () {}),
                  SingleProduct(
                      imageName: image2, productName: 'Gava', onTap: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
