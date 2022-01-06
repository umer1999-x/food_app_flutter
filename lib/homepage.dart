import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget SingleProduct() {
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
          child: Column(
            children: [
              const Expanded(
                flex: 2,
                child: Image(
                  image: NetworkImage(
                      'https://media.istockphoto.com/photos/basil-leaves-isolated-picture-id871684266?k=20&m=871684266&s=612x612&w=0&h=9CVoS5Tqk2nlRU5mokJxajXIad9hVmAliwhlbRagaKc='),
                ),
              ),
              Expanded(
                child: Column(
                  children: const [
                    Text(
                      'Fresh Basil',
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
      ],
    );
  }

  Widget listTile({required IconData icon, required String title}) {
    return ListTile(
      leading: Icon(
        icon,
        size: 32,
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black54,
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      drawer: Drawer(
        child: Container(
          color: const Color(0xffa28527),
          child: ListView(
            children: [
              DrawerHeader(
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 43,
                      child: CircleAvatar(
                          backgroundColor: Colors.red.shade400, radius: 40),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 120,
                        ),
                        const Text('Welcome guest'),
                        OutlinedButton(
                          onPressed: null,
                          child: const Text("Login"),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.red.shade400),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              listTile(icon: Icons.home_outlined, title: 'Home'),
              listTile(icon: Icons.shop_outlined, title: 'Shop'),
              listTile(icon: Icons.person_outlined, title: 'Profile'),
              listTile(icon: Icons.notifications_outlined, title: 'Notification'),
              listTile(icon: Icons.star_outlined, title: 'Ratings & star'),
              listTile(icon: Icons.favorite_outlined, title: 'Wishlist'),
              listTile(icon: Icons.copy_outlined, title: 'Raise a Complaint'),
              listTile(icon: Icons.format_quote_outlined, title: 'FAQs'),
              Container(
                height: 350,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Contact Us'),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text('Phone no.'),
                        SizedBox(width: 8),
                        Text('098765432122'),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text('Mail Us'),
                        SizedBox(width: 8),
                        Text('shkh@email.com'),
                      ],
                    )



                  ],
                ),
              ),
            ],
          ),
        ),
      ),
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
                  SingleProduct(),
                  SingleProduct(),
                  SingleProduct(),
                  SingleProduct(),
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
                  SingleProduct(),
                  SingleProduct(),
                  SingleProduct(),
                  SingleProduct(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
