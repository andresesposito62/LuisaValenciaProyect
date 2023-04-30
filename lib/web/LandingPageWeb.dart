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
      drawer: Drawer(),
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
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  //width: width * 2 / 3,
                  width: width,
                  height: height - 56,
                  child: Image.asset("assets/img/photo-1.jpg",
                    alignment: Alignment.center,//Alignment(-0.9, -0.5),
                    fit: BoxFit.cover,
                  ) ,
                ),
                /*Container(
                    height: height - 56,
                    width: width - (width * 2 / 3),
                    child: ListView(
                      children: [
                        Column(
                          children: [
                            //SocialMediaModule(),
                            //DigitalPlatformModule()
                          ],
                        ),
                      ],
                    )
                )*/
              ],
            ),
          )
        ],
      ),
    );
  }
}