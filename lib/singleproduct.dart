import 'package:flutter/material.dart';

class SingleProduct extends StatelessWidget {
  String? productName;
  String? imageName;
  void Function() onTap;

  SingleProduct({this.productName,this.imageName,required this.onTap});

  @override
  Widget build(BuildContext context) {
      return Row(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            height: 230,
            width: 160,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: GestureDetector(
             onTap: onTap,
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Image(
                      image: NetworkImage(
                        imageName!
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          productName!,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '50\$/50 Gram',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 30,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.yellowAccent)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.add,
                                  size: 15,
                                ),
                                Text('1'),
                                Icon(
                                  Icons.remove,
                                  size: 15,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Container(
                            height: 30,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.yellowAccent)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text('50 Gram'),
                                Icon(
                                  Icons.arrow_downward,
                                  size: 15,
                                ),
                              ],
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
        ],
      );
    }
  }
