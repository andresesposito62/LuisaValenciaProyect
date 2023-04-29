import 'package:flutter/material.dart';

class TabsWeb extends StatefulWidget {
  final title;
  final typeFont;
  const TabsWeb(this.title, this.typeFont,{Key? key}) : super(key: key);

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {

  bool isSelected = false;
  TextStyle textStyleSelected = TextStyle();
  TextStyle textStyleUnselected = TextStyle();

  @override
  Widget build(BuildContext context) {

    const selectedTitleStyle = TextStyle(
        color: Colors.black,
        fontSize: 30.0,
        fontFamily: "DancingScript",
        fontWeight: FontWeight.normal,
        decoration: TextDecoration.underline,
        decorationThickness: 1,
        decorationColor: Colors.black12
    );

    const unselectedTitleStyle = TextStyle(
        color: Colors.black,
        fontSize: 27.0,
        fontFamily: "DancingScript",
        fontWeight: FontWeight.normal
    );

    const selectedSubtitleStyle = TextStyle(
        color: Colors.black,
        fontSize: 20.0,
        fontFamily: "Lato",
        fontWeight: FontWeight.normal,
        decoration: TextDecoration.underline,
        decorationThickness: 1,
        decorationColor: Colors.black12
    );

    const unselectedSubtitleStyle = TextStyle(
        color: Colors.black,
        fontSize: 17.0,
        fontFamily: "Lato",
        fontWeight: FontWeight.normal
    );

    if(widget.typeFont == "title"){
      textStyleSelected = selectedTitleStyle;
      textStyleUnselected = unselectedTitleStyle;
    }else if (widget.typeFont == "subtitle"){
      textStyleSelected = selectedSubtitleStyle;
      textStyleUnselected = unselectedSubtitleStyle;
    }

    return MouseRegion(
      onEnter: (_){
        setState(() {
          isSelected = true;
        });
      },
      onExit: (_){
        setState(() {
          isSelected = false;
        });
      },
      child: AnimatedDefaultTextStyle(
        duration: const Duration(milliseconds: 100),
        style: isSelected ? textStyleSelected :textStyleUnselected,
        child: Text(widget.title,),
      ),
    );
  }
}