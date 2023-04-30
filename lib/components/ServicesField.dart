import 'package:flutter/material.dart';
import 'package:luisa_valencia_application/components/ServiceItem.dart';
import 'package:luisa_valencia_application/strings/StringsEs.dart';

class ServicesField extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final first_columm = Container(
      alignment: Alignment.topLeft,
      child: Column(
        children: [
          ServiceItem(StringsEs.SERVICES_ITEM_1),
          ServiceItem(StringsEs.SERVICES_ITEM_2),
          ServiceItem(StringsEs.SERVICES_ITEM_3),
          ServiceItem(StringsEs.SERVICES_ITEM_4),
          ServiceItem(StringsEs.SERVICES_ITEM_5),
          ServiceItem(StringsEs.SERVICES_ITEM_6),
          ServiceItem(StringsEs.SERVICES_ITEM_7),
        ],
      ),
    );

    final second_columm = Container(
      alignment: Alignment.topRight,
      child: Column(
        children: [
          ServiceItem(StringsEs.SERVICES_ITEM_8),
          ServiceItem(StringsEs.SERVICES_ITEM_9),
          ServiceItem(StringsEs.SERVICES_ITEM_10),
          ServiceItem(StringsEs.SERVICES_ITEM_11),
          ServiceItem(StringsEs.SERVICES_ITEM_12),
          ServiceItem(StringsEs.SERVICES_ITEM_13),
          ServiceItem(""),
        ],
      ),
    );

    final item_list = Container(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          first_columm,
          second_columm
        ],
      ),
    );


    final title = Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(top: 5.0, left: 5.0, right: 5.0, bottom: 20.0),
      child: const Text(
        StringsEs.SERVICES_TITLE,
        style: TextStyle(
            fontFamily: "Oxygen",
            fontSize: 30.0,
            fontWeight: FontWeight.normal
        ),
        textAlign: TextAlign.center,
      ),
    );

    final description = Column(
      children: <Widget>[
        title,
        item_list,
      ],
    );

    return description;
  }
}