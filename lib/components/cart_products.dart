import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  Cart_productsState createState() => Cart_productsState();
}

class Cart_productsState extends State<Cart_products> {
  var Product_on_cart = [
    {
      'name': 'Marrie gold',
      'picture': 'images/all categories/snacks/snacks1.png',
      'qty': '5',
      'price': '50',
      'wt': '100 gr'
    },
    {
      'name': 'Good Day',
      'picture': 'images/all categories/snacks/snacks2.png',
      'qty': '50',
      'wt': '100 gr',
      'price': '50'
    },
    {
      'name': 'Sunpure oil',
      'picture': 'images/all categories/cooking olis/oil1.png',
      'qty': '3',
      'wt': '700 ml',
      'price': '300'
    },
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Single_cart_Product(
            cart_prod_name: Product_on_cart[index]['name'],
            cart_prod_picture: Product_on_cart[index]['picture'],
            cart_prod_price: Product_on_cart[index]['price'],
            cart_prod_qty: Product_on_cart[index]['qty'],
            cart_prod_wt: Product_on_cart[index]['wt'],
          );
        });
  }
}

class Single_cart_Product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_wt;
  late final cart_prod_qty;

  Single_cart_Product(
      {this.cart_prod_name,
      this.cart_prod_picture,
      this.cart_prod_price,
      this.cart_prod_wt,
      this.cart_prod_qty});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: ListTile(
        leading: Image.asset(cart_prod_picture),
        title: Text(cart_prod_name),
        subtitle: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Wgt:'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(cart_prod_wt),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: Text(
                    'Qty:',
                    style: TextStyle(color: Color(0xFF1B5E20)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    cart_prod_qty,
                    style: TextStyle(color: Color(0xFF1B5E20)),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.keyboard_arrow_up)),
                Text('${cart_prod_qty}',style: TextStyle(color: Color(0xFF1B5E20)),),
                IconButton(onPressed: () {}, icon: Icon(Icons.keyboard_arrow_down)),
              ],
            )
          ],
        ),
        trailing: Text(
          '\₹ ${cart_prod_price}',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
              color: Color(0xFF1B5E20)),
        ),
      ),
    );
  }

}
