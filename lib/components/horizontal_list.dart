import 'package:deliveryapp/components/products.dart';
import 'package:flutter/material.dart';

class Horizontal_list extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        height: 100,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Category(
                img_location: 'images/grocery.png', img_caption: 'Grocery'),
            Category(
                img_location: 'images/kitchen.png', img_caption: 'Kitchen'),
            Category(
                img_location: 'images/oil.png', img_caption: 'Edible Oils'),
            Category(img_location: 'images/rice.png', img_caption: 'Rice'),
            Category(img_location: 'images/snacks.png', img_caption: 'Snacks'),
            Category(
                img_location: 'images/stationary.png',
                img_caption: 'Stationary'),
            Category(
                img_location: 'images/cleaning.png', img_caption: 'Cleaning'),
          ],
        ));
  }
}

class Category extends StatelessWidget {
  final String img_location;
  final String img_caption;

  Category({required this.img_location, required this.img_caption});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      Scaffold(appBar: AppBar(title: Text('All Products'),), body: Products())));
        },
        child: Container(
          width: 100,
          child: ListTile(
            title: Image.asset(height: 50, width: 50, img_location),
            subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(
                  img_caption,
                  style: TextStyle(fontSize: 12),
                )),
          ),
        ),
      ),
    );
  }
}
