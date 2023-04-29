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
        color: Colors.white,
        fontSize: 30.0,
        fontFamily: "Lato",
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.underline,
        decorationThickness: 1,
        decorationColor: Colors.white54
    );

    const unselectedTitleStyle = TextStyle(
        color: Colors.white,
        fontSize: 27.0,
        fontFamily: "Lato",
        fontWeight: FontWeight.bold
    );

    const selectedSubtitleStyle = TextStyle(
        color: Colors.white,
        fontSize: 20.0,
        fontFamily: "Lato",
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.underline,
        decorationThickness: 1,
        decorationColor: Colors.white54
    );

    const unselectedSubtitleStyle = TextStyle(
        color: Colors.white,
        fontSize: 17.0,
        fontFamily: "Lato",
        fontWeight: FontWeight.bold
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