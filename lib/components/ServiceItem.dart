import 'package:flutter/material.dart';

class ServiceItem extends StatelessWidget {

  late String itemToShow;

  //Constructor
  ServiceItem(this.itemToShow);


  @override
  Widget build(BuildContext context) {

    final itemText = Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.only(top: 15.0, left: 0.0, right: 0.0, bottom: 5.0),
      child: Text(
        itemToShow,
        style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 20,
            fontWeight: FontWeight.w500
        ),
        textAlign: TextAlign.left,
      ),
    );

    return itemText;
  }
}