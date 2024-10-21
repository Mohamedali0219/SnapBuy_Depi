import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:snap_buy_app/core/helper/extensions/navigation_extension.dart';
import 'package:snap_buy_app/core/routes/routes.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          // Profile Info
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('assets/pfp.jpg'),
            // Add this to see a placeholder in case the image isn't loaded
            backgroundColor:
                Colors.grey, // Placeholder color if image doesn't load
          ),
          SizedBox(height: 16),
          Text('Matilda Brown',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          Text(FirebaseAuth.instance.currentUser!.email!),
          SizedBox(height: 20),
          // List of options
          ListTile(
            title: Text("My orders"),
            subtitle: Text("Already have 12 orders"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigate to My Orders Page
              context.pushNamed(Routes.orderScreen);
            },
          ),
          ListTile(
            title: Text("Shipping addresses"),
            subtitle: Text("3 addresses"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
          ListTile(
            title: Text("Payment methods"),
            subtitle: Text("Visa **34"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
          ListTile(
            title: Text("Promocodes"),
            subtitle: Text("You have special promocodes"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
          ListTile(
            title: Text("My reviews"),
            subtitle: Text("Reviews for 4 items"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
          ListTile(
            title: Text("Settings"),
            subtitle: Text("Notifications, password"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 4, // For Profile Page
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: 'Shop'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Bag'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
