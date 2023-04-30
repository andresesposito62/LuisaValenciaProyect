import 'package:flutter/material.dart';

class ServiceItem extends StatelessWidget {

  late String itemToShow;

  //Constructor
  ServiceItem(this.itemToShow);

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    final itemText = //Card(
      //child:
      Container(
        alignment: Alignment.topLeft,
        height: 60.0,
        width: 150.0,
        margin: const EdgeInsets.only(top: 0.0, left: 5.0, right: 5.0, bottom: 0.0),
        child: Text(
          itemToShow,
          style: const TextStyle(
              fontFamily: "JosefinSlab",
              fontSize: 12,
              fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.start,
        ),
      );//;,
    //)
    //;

    return itemText;
  }
}