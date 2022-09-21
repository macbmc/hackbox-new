import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hatch_box/main_screens/Home.dart';
import 'package:hatch_box/main_screens/cart.dart';
import 'package:hatch_box/main_screens/inspect.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hatch_box/side_screens/paydemo.dart';
import 'package:hatch_box/side_screens/prof.dart';

class PayScreen extends StatelessWidget {
  const PayScreen({Key? key,
    required this.tprice
  }) : super(key: key);
 final String tprice;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          leading: IconButton(onPressed:(){
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return HomeP();
            }));},
            icon:Icon(
              Icons.arrow_back_ios_outlined,color: Colors.black,
            ),
            iconSize: 25,
            color: Colors.brown,),
          title: Text("Checkout",style: TextStyle(
            fontSize: 23,
          ),),
          elevation: 0,
          toolbarHeight: 60,
          actions: [
            IconButton(onPressed:(){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return Cart();
              }));},
              icon:Icon(
                Icons.shopping_cart,color: Colors.black,
              ),
              iconSize: 25,
              color: Colors.brown,),
            IconButton(onPressed:(){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return ProfP();
              }));},
              icon:Icon(
                Icons.person,color: Colors.black,
              ),
              iconSize: 25,
              color: Colors.brown,),
          ],
        ),
        body: Container(
          padding: EdgeInsets.only(top: 10.0,left: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Total price is :$tprice",style: TextStyle(fontSize: 20,color: Colors.white),),
              Row(
                children: [
                  Icon(Icons.account_balance,size: 30,color: Colors.white,),
                  SizedBox(width: 20.0,),
                  Text("Payment Modes",style: TextStyle(fontSize: 25,color: Colors.white),),
                ],
              ),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return PayDemo();
                  }));},
                child: Container(
                  child: Image.asset("assets/card.png"),
                ),
              ),
              Text("or Checkout With",style: TextStyle(fontSize: 20,color: Colors.white),),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return PayDemo();
                  }));},
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  elevation: 10.0,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    width: MediaQuery.of(context).size.width/2,
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset("assets/paytm.png")
                      ],
                    ),


                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return PayDemo();
                  }));},
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  elevation: 10.0,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    width: MediaQuery.of(context).size.width/1.5,
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset("assets/Google-Pay-logo-1900x700_c.jpg")
                      ],
                    ),


                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

















/*
Container(
child: Center(
child:  ElevatedButton(
style: ButtonStyle(
backgroundColor:MaterialStateProperty.all(Colors.brown),
shape: MaterialStateProperty.all<RoundedRectangleBorder>(
RoundedRectangleBorder(
borderRadius: BorderRadius.circular(15.0),
side: BorderSide(
color: Colors.white,
width: 2.0,
),
),
),
),
onPressed:(){}, child: Text("Place Order",style: TextStyle(fontSize: 20),)),
),
);*/
