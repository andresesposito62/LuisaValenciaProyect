import 'package:flutter/material.dart';
import '../components/ServicesField.dart';
import '../components/TabsWeb.dart';
import '../strings/StringsEs.dart';

class LandingPageMobile extends StatefulWidget {
  const LandingPageMobile({Key? key}) : super(key: key);

  @override
  State<LandingPageMobile> createState() => _LandingPageMobileState();
}

class _LandingPageMobileState extends State<LandingPageMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(233, 230, 223, 50),
        elevation: 0.0,
        iconTheme: const IconThemeData(
            size: 25.0,
            color: Colors.black45
        ),
        title: Row(
          children: const [
            TabsWeb(StringsEs.PSIC_LUISA_VALENCIA, "title"),
          ],
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: ListView(
          children: [
            Container(
              child: Column(
                children: [
                  Image.asset("assets/img/photo-1.jpg"),
                  Container(
                    //width: width/2,
                    margin: const EdgeInsets.only(top: 30.0, left: 20, right: 20, bottom: 30),
                    alignment: Alignment.center,
                    child: ServicesField(),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
