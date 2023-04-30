import 'package:flutter/material.dart';
import 'package:luisa_valencia_application/components/ServicesField.dart';
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
            child: Column(
              children: [
                Container(
                  width: width,
                  height: height/3,
                  child: Image.asset("assets/img/photo-1.jpg",
                    alignment: Alignment.center,
                    fit: BoxFit.cover,
                  ) ,
                ),Container(
                  width: 500.0,
                  margin: const EdgeInsets.only(top: 30.0, left: 0, right: 0, bottom: 30),
                  alignment: Alignment.center,
                  child: ServicesField(),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}