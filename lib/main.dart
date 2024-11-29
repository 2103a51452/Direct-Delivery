import 'package:carousel_slider/carousel_slider.dart';
import 'package:deliveryapp/components//horizontal_list.dart';
import 'package:deliveryapp/components//products.dart';
import 'package:deliveryapp/pages/cart.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }
}

class Home extends StatelessWidget {
  var img_list = [
    'images/carousel/1.png',
    'images/carousel/2.png',
    'images/carousel/3.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    Widget image_carousel = Container(
        height: 239.0,
        child: CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 1.6,
              viewportFraction: 1,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
            ),
            items: img_list
                .map((e) =>
                    Container(child: Image.asset(fit: BoxFit.contain, e)))
                .toList()));
    // TODO: implement build
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home'),
                leading: Icon(
                  Icons.home,
                  color: Color(0xFF1B5E20),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My account'),
                leading: Icon(
                  Icons.person,
                  color: Color(0xFF1B5E20),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(
                  Icons.shopping_bag,
                  color: Color(0xFF1B5E20),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()));
              },
              child: ListTile(
                title: Text('Shopping cart'),
                leading: Icon(
                  Icons.shopping_cart,
                  color: Color(0xFF1B5E20),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(
                  Icons.favorite,
                  color: Color(0xFF1B5E20),
                ),
              ),
            ),
            Divider(
              color: Color(0xFF1B5E20),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(
                  Icons.settings,
                  color: Colors.grey,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(
                  Icons.help,
                  color: Colors.green,
                ),
              ),
            ),
            SizedBox(height: 250),
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: Color(0xFF1B5E20),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 35,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.account_circle,
                            size: 35,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Rohith Cheruku',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        '9618151980',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(leading: Builder(
          builder: (context) => InkWell(
              onTap: () {Scaffold.of(context).openDrawer();},
              child: Image.asset(
                  height: 60, width: 60, 'images/4.png', color: Colors.white),)),
        backgroundColor: Color(0xFF1B5E20),
        title:  Image.asset(
          height: 50,
          width: 200,
          'images/2.png',
          color: Colors.white,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()));
              },
              icon: Icon(
                Icons.add_shopping_cart_sharp,
                color: Colors.white,
              )),
        ],
      ),
      body: ListView(
        // scrollDirection: Axis.vertical,
        children: <Widget>[
          image_carousel,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Categories',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            //Horizontal list view
          ),
          Horizontal_list(),//category items

          Image.asset('images/m1.jpg'),//warangal logo
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Merchandise',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          //Products
          Container(height: 320, child: Products())
        ],
      ),
    );
  }
}
