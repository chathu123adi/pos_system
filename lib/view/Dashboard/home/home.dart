import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pos_system/utils/constant/image_string.dart';
import 'package:pos_system/utils/media.dart';
import 'package:pos_system/view/add_product/add_product.dart';
import 'package:pos_system/view/create_bill/create_bill.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeState();

}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  width: width,
                  height: height,
                  // child: Image(image: Image.asset("name"),
                ),

                Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // SizedBox(height: 200,),
                        Column(
                          children: [
                            TextButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> CreateBill()));
                                },
                                child: Column (
                                  children: [
                                    Container(
                                      width: 200,
                                      height: 200,
                                      child: Image(image: AssetImage(createBill), fit: BoxFit.fill,),
                                    ),
                                    Text("Create bill"),
                                  ],
                                )
                            ),
                            TextButton(
                                onPressed: (){},
                                child: Column (
                                  children: [
                                    Container(
                                      width: 200,
                                      height: 200,
                                      child: Image(image: AssetImage(addProduct), fit: BoxFit.fill,),
                                    ),
                                    Text("Add Prodcut"),
                                  ],
                                )
                            ),
                            TextButton(
                                onPressed: (){},
                                child: Column (
                                  children: [
                                    Container(
                                      width: 200,
                                      height: 200,
                                      child: Image(image: AssetImage(addProduct), fit: BoxFit.fill,),
                                    ),
                                    Text("Add Categery"),
                                  ],
                                )
                            )
                          ],
                        ),

                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   children: [
                        //
                        //     Expanded(child: TextButton(
                        //         onPressed: (){
                        //           Navigator.push(context, MaterialPageRoute(builder: (context)=> CreateBill()));
                        //         },
                        //         child: Column (
                        //           children: [
                        //             Container(
                        //               width: 200,
                        //               height: 200,
                        //               child: Image(image: AssetImage(createBill), fit: BoxFit.fill,),
                        //             ),
                        //             Text("Create bill"),
                        //           ],
                        //         )
                        //     ),),
                        //
                        //     Expanded(child: TextButton(
                        //         onPressed: (){},
                        //         child: Column (
                        //           children: [
                        //             Container(
                        //               width: 200,
                        //               height: 200,
                        //               child: Image(image: AssetImage(addProduct), fit: BoxFit.fill,),
                        //             ),
                        //             Text("Add Prodcut"),
                        //           ],
                        //         )
                        //     ),),
                        //
                        //     Expanded(child: TextButton(
                        //         onPressed: (){},
                        //         child: Column (
                        //           children: [
                        //             Container(
                        //               width: 200,
                        //               height: 200,
                        //               child: Image(image: AssetImage(addProduct), fit: BoxFit.fill,),
                        //             ),
                        //             Text("Add Categery"),
                        //           ],
                        //         )
                        //     ),),
                        //   ],
                        // ),
                      ],
                    )
                )
              ],
            ),
          )

        )
    );
  }

}