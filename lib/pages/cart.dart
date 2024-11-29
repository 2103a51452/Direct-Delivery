import 'package:deliveryapp/pages/successpage.dart';
import 'package:flutter/material.dart';
import 'package:deliveryapp/components/cart_products.dart';

class Cart extends StatefulWidget {
  @override
  CartState createState() => CartState();
}

class CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1B5E20),
        centerTitle: true,
        title: Text(
          'Cart',
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () {}, icon: Icon(Icons.search, color: Colors.white))
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
                child: ListTile(
              title: Text('Total:'),
              subtitle: Text('\₹ 400'),
            )),
            Expanded(
              child: MaterialButton(
                onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context)=>OrderSuccess()));},
                child: Text(
                  'Check Out',
                  style: TextStyle(color: Colors.white),
                ),
                color: Color(0xFF1B5E20),
              ),
            )
          ],
        ),
      ),
      body: Cart_products(),
    );
  }
}
