import 'package:flutter/material.dart';

class ServiceItem extends StatelessWidget {

  late String itemToShow;

  //Constructor
  ServiceItem(this.itemToShow);

  @override
  Widget build(BuildContext context) {

    final itemText = //Card(
      //child:
      Container(
        alignment: Alignment.topLeft,
        width: 300.0,
        margin: const EdgeInsets.only(top: 0.0, left: 5.0, right: 5.0, bottom: 20.0),
        child: Text(
          itemToShow,
          style: const TextStyle(
              fontFamily: "JosefinSlab",
              fontSize: 15,
              fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.start,
        ),
      );


    return itemText;
  }
}