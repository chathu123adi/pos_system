import 'package:flutter/cupertino.dart';

class AddProduct extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _addProductState();

}

class _addProductState extends State<AddProduct> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack (
        children: [
          Container(),

          Container(
            child: Column(

            ),
          )
        ],
      ),
    );
  }

}