import 'package:deliveryapp/main.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OrderSuccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var h= MediaQuery.of(context).size.height;
    var w= MediaQuery.of(context).size.width;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
            child: Image.asset('images/2.png')),
      ),
      body: Center(
          child: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(left:50.0),
          child: Text(
            'Your Order Successfull',
            style: TextStyle(color: Color(0xFF1B5E20), fontSize: 30),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(50.0),
          child: Lottie.asset(height:h/4,width:w,fit:BoxFit.cover,'images/animations/order.json'),
        )
      ])),
    );
  }
}
