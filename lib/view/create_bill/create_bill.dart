import 'package:draggable_fab/draggable_fab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateBill extends StatefulWidget {
  const CreateBill({super.key});

  @override
  State<StatefulWidget> createState() => _createBillState();

}

class _createBillState extends State<CreateBill> {
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
              child: DraggableFab(
                child: FloatingActionButton(
                  onPressed: (){
                    //action after pressing this button
                  },
                  child: Icon(Icons.add),
                ),
              ),
            ),

            Container(
              child: Column(

              ),
            )
          ],
        ),
      ),
    );

  }

}