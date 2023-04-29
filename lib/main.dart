import 'package:flutter/material.dart';
import 'package:luisa_valencia_application/web/LandingPageWeb.dart';

import 'mobile/LandingPageMobile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: LayoutBuilder(
          builder: (context, constraints){
            if(constraints.maxWidth > 800){//The device is Web normally if >800
              return LandingPageWeb();
            }else{
              return LandingPageMobile();
            }
          },
        )
    );
  }
}