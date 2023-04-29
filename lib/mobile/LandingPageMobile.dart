import 'package:flutter/material.dart';
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
      //drawer: Drawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        iconTheme: const IconThemeData(
            size: 25.0,
            color: Colors.white
        ),
        title: Row(
          children: const [
            TabsWeb(StringsEs.LUISA_VALENCIA, "title"),
          ],
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: ListView(
          /*children: [
            Container(
              child: Column(
                children: [
                  Image.asset("assets/img/_DSC5109-2.jpg"),
                  SocialMediaModule(),
                  DigitalPlatformModule(),
                ],
              ),
            )
          ],*/
        ),
      ),
    );
  }
}
