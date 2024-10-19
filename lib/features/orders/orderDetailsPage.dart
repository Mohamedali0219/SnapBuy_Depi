import 'package:flutter/material.dart';

class OrderDetailsPage extends StatelessWidget {
  const OrderDetailsPage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order Details"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Order №1947034", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text("Tracking number: IW3475453455"),
            Text("Date: 05-12-2019"),
            SizedBox(height: 16),
            // List of Items
            Expanded(
              child: ListView(
                children: [
                  ItemTile(name: 'Pullover', color: 'Gray', size: 'L', price: '51\$'),
                  ItemTile(name: 'Pullover', color: 'Gray', size: 'L', price: '51\$'),
                ],
              ),
            ),
            // Order Info
            Divider(),
            Text("Order information", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text("Shipping Address: 3 Newbridge Court, CA 91709, USA"),
            Text("Payment Method: Visa **34"),
            Text("Delivery Method: FedEx, 3 days"),
            Text("Discount: 10% Promo code"),
            Text("Total Amount: 133\$"),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Reorder"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Leave feedback"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ItemTile extends StatelessWidget {
  final String name;
  final String color;
  final String size;
  final String price;

  ItemTile({
    required this.name,
    required this.color,
    required this.size,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.shopping_bag),
      title: Text(name),
      subtitle: Text('Color: $color\nSize: $size'),
      trailing: Text(price),
    );
  }
}
