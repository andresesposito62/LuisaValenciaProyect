import 'package:flutter/material.dart';
import 'package:luisa_valencia_application/components/ServiceItem.dart';
import 'package:luisa_valencia_application/strings/StringsEs.dart';

class ServicesField extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final item_list = Container(
      child: Column(
        children: [
          ServiceItem(StringsEs.SERVICES_ITEM_1),
          ServiceItem(StringsEs.SERVICES_ITEM_2),
          ServiceItem(StringsEs.SERVICES_ITEM_3),
          ServiceItem(StringsEs.SERVICES_ITEM_4),
          ServiceItem(StringsEs.SERVICES_ITEM_5),
          ServiceItem(StringsEs.SERVICES_ITEM_6),
          ServiceItem(StringsEs.SERVICES_ITEM_7),
          ServiceItem(StringsEs.SERVICES_ITEM_8),
          ServiceItem(StringsEs.SERVICES_ITEM_9),
          ServiceItem(StringsEs.SERVICES_ITEM_10),
          ServiceItem(StringsEs.SERVICES_ITEM_11),
          ServiceItem(StringsEs.SERVICES_ITEM_12),
          ServiceItem(StringsEs.SERVICES_ITEM_13),
        ],
      ),
    );


    final title = Column(
      children: <Widget>[
        Container(
          alignment: Alignment.topCenter,
          child: const Text(
            StringsEs.SERVICES_TITLE,
            style: TextStyle(
                fontFamily: "Lato",
                fontSize: 30.0,
                fontWeight: FontWeight.normal
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
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