import 'package:deliveryapp/main.dart';
import 'package:flutter/material.dart';

class Product_Details extends StatefulWidget {
  final product_dtail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;
  final product_disc;

  Product_Details({this.product_dtail_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_picture,this.product_disc});

  @override
  Product_DetailsState createState() => Product_DetailsState();
}

class Product_DetailsState extends State<Product_Details> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1B5E20),
        title: InkWell(onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>Home()));},
          child: Image.asset(
            height: 50,
            width: 200,
            'images/2.png',
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 300,
            color: Colors.black,
            child: GridTile(
                child: Container(
                  color: Colors.white,
                  child: Image.asset(widget.product_detail_picture),
                ),
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(
                      widget.product_dtail_name,
                      style: TextStyle(fontSize: 20),
                    ),
                    title: Row(
                      children: <Widget>[
                        Expanded(
                            child: Text(
                              '\₹${widget.product_detail_old_price}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor: Colors.red,
                                  decorationThickness: 2),
                            )),
                        Expanded(
                            child: Text(
                              '\₹${widget.product_detail_new_price}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red),
                            ))
                      ],
                    ),
                  ),
                )),
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      showDialog(
                          context: (context),
                          builder: (context) {
                            return AlertDialog(
                              title: Text('Weight'),
                              content: Text('Choose the weight'),
                              actions: <Widget>[
                                MaterialButton(
                                  onPressed: () {Navigator.of(context).pop(context);
                                  },
                                  child: Text('Close'),
                                )
                              ],
                            );
                          });
                    },
                    color: Colors.white,
                    textColor: Colors.grey,
                    elevation: 0.2,
                    child: Row(
                      children: <Widget>[
                        Expanded(child: Text('Weight')),
                        Expanded(child: Icon(Icons.arrow_drop_down)),
                      ],
                    ),
                  )),
              Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      showDialog(
                          context: (context),
                          builder: (context) {
                            return AlertDialog(
                              title: Text('Quantity'),
                              content: Text('Choose the quantity'),
                              actions: <Widget>[
                                MaterialButton(
                                  onPressed: () {Navigator.of(context).pop(context);
                                  },
                                  child: Text('Close'),
                                )
                              ],
                            );
                          });
                    },
                    color: Colors.white,
                    textColor: Colors.grey,
                    elevation: 0.2,
                    child: Row(
                      children: <Widget>[
                        Expanded(child: Text('Quantity')),
                        Expanded(child: Icon(Icons.arrow_drop_down)),
                      ],
                    ),
                  )),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: MaterialButton(
                    onPressed: () {},
                    color: Color(0xFF1B5E20),
                    textColor: Colors.white,
                    elevation: 0.2,
                    child: Text('Buy Now'),
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add_shopping_cart_sharp,
                      color: Color(0xFF1B5E20))),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite, color: Color(0xFF1B5E20)))
            ],
          ),
          Divider(),
          ListTile(title: Padding(
            padding: const EdgeInsets.only(bottom:8.0),
            child: Text('Product Details',style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          subtitle: Text('${widget.product_disc}'),),
          Divider(),
          Row(children: [Padding(
            padding: const EdgeInsets.fromLTRB(12.0,5.0,5.0,5.0),
            child: Text('Product Name:'),
          ),Text(widget.product_dtail_name)],),
          Row(children: [Padding(
            padding: const EdgeInsets.fromLTRB(12.0,5.0,5.0,5.0),
            child: Text('Product Comapany:'),
          ),],),
          Row(children: [Padding(
            padding: const EdgeInsets.fromLTRB(12.0,5.0,5.0,5.0),
            child: Text('Product condition:'),
          ),],),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Similar Products',style: TextStyle(fontWeight: FontWeight.bold),),
        ),

        Container(height:320,child: Similar_Products()),

        ],
      ),
    );
  }
}

class Similar_Products extends StatefulWidget{


  @override
  Similar_ProductsState createState() => Similar_ProductsState();
}

class Similar_ProductsState  extends State<Similar_Products>{
  var product_list = [
    {
      'name': 'Jaggery',
      'company': 'Swadeshi',
      'condtion': 'New',
      'picture': 'images/all categories/grocery/grocery4.png',
      'oldprice': '100',
      'NewPrice': '80',
      'disc':
      '''Indulge in the rich sweetness and natural goodness of our premium jaggery, sourced from the finest organic sources. Our organic jaggery is a pure and unrefined form of sugar, retaining all the natural nutrients and minerals present in the sugarcane juice. Handcrafted with care, our jaggery is free from any artificial additives or chemicals, making it a healthier alternative to refined sugar. '''
    },
    {
      'name': 'Basmathi Rice',
      'company': 'Fortune',
      'condtion': 'New',
      'picture': 'images/all categories/rice bags/rice5.png',
      'oldprice': '200',
      'NewPrice': '150',
      'disc':
      '''Britannia Vita Marie Gold Biscuits are crisp and light biscuits packed with the goodness of 10 essential vitamins. Being low fat and zero cholesterol snacks, Marie Gold biscuits act as a perfect companion for your cup of tea. Britannia biscuits and cookies for long has been a part of every home, sharing those moments of joy Believing in delivering fresh and healthy products, Britannia India manufactures some of India\'s favourite brands like 50-50, Tiger, NutriChoice, Bourbon, Good Day, Milk Bikis and Little Hearts.'''
    },
    {
      'name': 'Ground Nuts',
      'company': 'Britania',
      'condtion': 'New',
      'picture': 'images/all categories/grocery/grocery2.png',
      'oldprice': '80',
      'NewPrice': '60',
      'disc':
      '''The finest groundnuts are procured directly from the fields of farmers and de-shelled into peanuts. Sorted, handpicked and selected raw peanuts with their natural flavor are sealed in peanut plus. Enjoy them raw, roasted, boiled, or fried, and make nutritive recipes for your healthy family.'''
    },
    {
      'name': 'Marrie Gold',
      'company': 'Britania',
      'condtion': 'New',
      'picture': 'images/all categories/snacks/snacks1.png',
      'oldprice': '20',
      'NewPrice': '10',
      'disc':
      '''Britannia Vita Marie Gold Biscuits are crisp and light biscuits packed with the goodness of 10 essential vitamins. Being low fat and zero cholesterol snacks, Marie Gold biscuits act as a perfect companion for your cup of tea. Britannia biscuits and cookies for long has been a part of every home, sharing those moments of joy Believing in delivering fresh and healthy products, Britannia India manufactures some of India\'s favourite brands like 50-50, Tiger, NutriChoice, Bourbon, Good Day, Milk Bikis and Little Hearts.'''
    },
    {
      'name': 'Peeler',
      'company': 'Reliance',
      'condtion': 'New',
      'picture': 'images/all categories/kitchen items/kitchen5.png',
      'oldprice': '150',
      'NewPrice': '120',
      'disc':
      '''Effortless peeling with a sharp stainless steel blade. - Comfortable and secure ergonomic grip for reduced hand fatigue. - Versatile for peeling a variety of fruits and vegetables. - Easy to clean and dishwasher-safe for quick maintenance. - Built to last with high-quality materials for durability. - Elevate your cooking with beautifully peeled ingredients.'''
    },
    {
      'name': 'Sunpure Oil',
      'company': 'S',
      'picture': 'images/all categories/cooking olis/oil1.png',
      'oldprice': '200',
      'NewPrice': '100',
      'disc':
      '''Sunpure Sunflower Oil is physically refined from the finest quality of sunflower seeds. This physically refined oil is 100% pure, natural and vegetarian. It is free from chemicals like sodium hydroxide and phosphoric acid. Enriched with natural vitamins and antioxidants. This physically refined sunflower oil not only enhances the flavour but also contributes to your overall well-being.'''
    },
    {
      'name': 'Dish wash',
      'company': 'VIM',
      'picture': 'images/all categories/cleaning/clean5.png',
      'oldprice': '200',
      'NewPrice': '100',
      'disc':
      '''Sunpure Sunflower Oil is physically refined from the finest quality of sunflower seeds. This physically refined oil is 100% pure, natural and vegetarian. It is free from chemicals like sodium hydroxide and phosphoric acid. Enriched with natural vitamins and antioxidants. This physically refined sunflower oil not only enhances the flavour but also contributes to your overall well-being.'''
    },
    {
      'name': 'Brooms',
      'company': 'S',
      'picture': 'images/all categories/cleaning/clean2.png',
      'oldprice': '200',
      'NewPrice': '100',
      'disc':
      '''Sunpure Sunflower Oil is physically refined from the finest quality of sunflower seeds. This physically refined oil is 100% pure, natural and vegetarian. It is free from chemicals like sodium hydroxide and phosphoric acid. Enriched with natural vitamins and antioxidants. This physically refined sunflower oil not only enhances the flavour but also contributes to your overall well-being.'''
    },
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return  GridView.builder(
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
                        child:Row(mainAxisAlignment:MainAxisAlignment.spaceAround,children: [Text(
                          prod_name,
                          style: TextStyle(color:Colors.white),
                        ),Text(
                          '\₹ $prod_old_price',
                          style: TextStyle(
                              decoration: TextDecoration.lineThrough,decorationThickness: 3,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                          Text(
                            '\₹ $prod_price',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, color: Colors.white),
                          ),],)


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