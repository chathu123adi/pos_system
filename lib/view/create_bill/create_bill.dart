import 'package:draggable_fab/draggable_fab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pos_system/custom_widget/custom_textfield.dart';
import 'package:pos_system/utils/media.dart';

class CreateBill extends StatefulWidget {
  const CreateBill({super.key});

  @override
  State<StatefulWidget> createState() => _createBillState();

}

class _createBillState extends State<CreateBill> {

  TextEditingController itemNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {  },
      //   splashColor: Colors.purple,
      //   elevation: 12,
      // ),

      appBar: AppBar(
        title: Center(child: Text("Create Bill"),),
      ),
      body: SingleChildScrollView(
        child: Stack (
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: height/20,
                    ),
                    CustomTextField(textEditingController: itemNameController, labelName: "Item Name"),
                    SizedBox(height: height/50,),
                    TextField(
                      controller: itemNameController,
                      decoration: InputDecoration(
                        // labelText: "Item Name",
                        label:  Text("Quantity"),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            // width: 3,
                            color: Colors.lightBlue,

                          )
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: height/50,),
                    TextField(
                      controller: itemNameController,
                      decoration: InputDecoration(
                        // labelText: "Item Name",
                        label:  Text("Price"),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 3,
                            color: Colors.redAccent,

                          )
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: height/50,),
                  ],
                ),
              ),
            )
          ],
        ),
      ),

      floatingActionButton: DraggableFab(
        child: FloatingActionButton(
          onPressed: _incrementCounter,
          child: Icon(Icons.add),
        ),
      ),
    );

  }

  void _incrementCounter() {
    setState(() {
      print("object");
    });
  }

}