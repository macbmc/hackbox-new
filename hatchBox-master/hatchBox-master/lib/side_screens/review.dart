import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hatch_box/main_screens/orders.dart';
class Review extends StatelessWidget {
  const Review({Key? key,required this.rev,
    required this.rev1,
    required this.rev2
  }) : super(key: key);
final String rev,rev1,rev2;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(top: 30.0,left: 10.0,bottom: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.blueGrey,
                        ),
                          child: Image.asset('assets/—Pngtree—cute panda_643086.png',)
                      ),
                      SizedBox(width: 10,),
                      Text("Robert D",style: TextStyle(fontSize: 15,color: Colors.black),)
                    ]
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  elevation: 10.0,
                  child: Container(
                    //padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      width: MediaQuery.of(context).size.width/1.3,
                      height: 100,
                      child:Text("$rev")
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.blueGrey,
                        ),
                        child: Image.asset('assets/—Pngtree—cute panda_643086.png',)
                      ),
                      SizedBox(width: 10,),
                      Text("Anthon",style: TextStyle(fontSize: 15,color: Colors.black),)
                    ]
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  elevation: 10.0,
                  child: Container(
                    //padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      width: MediaQuery.of(context).size.width/1.3,
                      height: 100,
                      child:Text("$rev1")
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.blueGrey,
                        ),
                          child: Image.asset('assets/—Pngtree—cute panda_643086.png',)
                      ),
                      SizedBox(width: 10,),
                      Text("Tom Cruise",style: TextStyle(fontSize: 15,color: Colors.black),)
                      //Text()
                    ]
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  elevation: 10.0,
                  child: Container(
                    //padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      width: MediaQuery.of(context).size.width/1.3,
                      height: 100,
                      child:Text("$rev2")
                  ),
                ),
              ],
            ),


          ],
        ),
      ),
    );
  }
}
