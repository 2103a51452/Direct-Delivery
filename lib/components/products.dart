import 'package:deliveryapp/components/products_list.dart';
import 'package:deliveryapp/pages/productdetails.dart';
import 'package:flutter/material.dart';


class Products extends StatefulWidget {
  @override
  ProductsState createState() => ProductsState();
}

class ProductsState extends State<Products> {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      GridView.builder(
        padding: EdgeInsets.all(8.0),
        itemCount: product_list.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['oldprice'],
            prod_price: product_list[index]['NewPrice'],
            prod_disc: product_list[index]['disc'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;
  final prod_disc;

  Single_prod(
      {this.prod_name,
      this.prod_picture,
      this.prod_old_price,
      this.prod_price,
      this.prod_disc});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: Color(0xFF1B5E20))),
        child: Card(
          child: Hero(
            tag: prod_name,
            child: Material(
              child: InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Product_Details(
                          product_dtail_name: prod_name,
                          product_detail_new_price: prod_price,
                          product_detail_old_price: prod_old_price,
                          product_detail_picture: prod_picture,
                          product_disc: prod_disc,
                        ))),
                child: GridTile(
                    footer: Container(
                      color: Color(0xFF1B5E20),
                      child:Column(mainAxisAlignment: MainAxisAlignment.start,
                        children: [Text(
                        prod_name,
                        style: TextStyle(color:Colors.white),
                      ),
                          Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly,children: [Text(
                            '\₹ $prod_old_price',
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough,decorationThickness: 3,

                                color: Colors.white),
                          ),
                            Text(
                              '\₹ $prod_price',
                              style: TextStyle(
                                   color: Colors.white),
                            ),],),
                        ],
                      )


                    ),
                    child: Image.asset(
                      prod_picture,
                      fit: BoxFit.contain,
                    )),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
