import 'package:flutter/material.dart';

class DrawerSide extends StatelessWidget {
  const DrawerSide({Key? key}) : super(key: key);


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

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
                  const Text('Contact Us'),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Text('Phone no.'),
                      SizedBox(width: 8),
                      Text('098765432122'),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Text('Mail Us'),
                      SizedBox(width: 8),
                      Text('shkh@email.com'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
