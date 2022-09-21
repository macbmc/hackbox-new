import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hatch_box/main_screens/orders.dart';
class PayDemo extends StatelessWidget {
  const PayDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child:GestureDetector(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context){
            return Order();
          }));},
        child: Container(
          child: Image.asset("assets/order-placed.png"),
        ),
      ),
    );
  }
}
