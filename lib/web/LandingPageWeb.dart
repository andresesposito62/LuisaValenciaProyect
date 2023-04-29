import 'package:flutter/material.dart';
import '../components/TabsWeb.dart';
import '../strings/StringsEs.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({Key? key}) : super(key: key);

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

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
            Spacer(flex: 5,),
            TabsWeb(StringsEs.HOME, "subtitle"),
            Spacer(),
            TabsWeb(StringsEs.BLOG, "subtitle"),
            Spacer(),
            TabsWeb(StringsEs.SERVICES, "subtitle"),
            Spacer(),
            TabsWeb(StringsEs.CONTACT_US, "subtitle"),
            Spacer(),
          ],
        ),
      ),
      body: ListView(
        /*children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: width * 2 / 3,
                  height: height - 56,
                  child: Image.asset("assets/img/_DSC5109-2.jpg",
                    alignment: Alignment(-0.9, -0.5),
                    fit: BoxFit.cover,
                  ) ,
                ),
                Container(
                    height: height - 56,
                    width: width - (width * 2 / 3),
                    child: ListView(
                      children: [
                        Column(
                          children: [
                            SocialMediaModule(),
                            DigitalPlatformModule()
                          ],
                        ),
                      ],
                    )
                )
              ],
            ),
          )
        ],*/
      ),
    );
  }
}