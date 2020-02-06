import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:getflutter/getflutter.dart';
import 'icon_buttons.dart';
import 'pill_buttons.dart';
import 'shadow_buttons.dart';
import 'social_buttons.dart';
import 'square_buttons.dart';
import 'standard_buttons.dart';

class ButtonTypes extends StatefulWidget {
  @override
  _ButtonTypesState createState() => _ButtonTypesState();
}

class _ButtonTypesState extends State<ButtonTypes> {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        backgroundColor: GFColors.getGFColor(GFColor.dark),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
//          child: SvgPicture.asset('lib/assets/icons/back.svg',),
            child: Container(
              child: Icon(
                CupertinoIcons.back,
                color: GFColors.getGFColor(GFColor.success),
              ),
            )),
        title: const Text(
          'Buttons',
          style: TextStyle(fontSize: 17),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => StandardButtons()),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(left: 15, right: 15, top: 20),
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(7)),
                    color: GFColors.getGFColor(GFColor.dark),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.40), blurRadius: 5)
                    ]),
                child: GFListTile(
                    color: GFColors.getGFColor(GFColor.dark),
                    title: Text(
                      'Standard Buttons',
                      style:
                          TextStyle(color: GFColors.getGFColor(GFColor.white)),
                    ),
                    icon: Icon(
                      CupertinoIcons.forward,
                      color: GFColors.getGFColor(GFColor.success),
                    )),
              )),
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => PillsButtons()),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(left: 15, right: 15, top: 20),
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(7)),
                    color: GFColors.getGFColor(GFColor.dark),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.40), blurRadius: 5)
                    ]),
                child: GFListTile(
                    color: GFColors.getGFColor(GFColor.dark),
                    title: Text(
                      'Pills Buttons',
                      style:
                          TextStyle(color: GFColors.getGFColor(GFColor.white)),
                    ),
                    icon: Icon(
                      CupertinoIcons.forward,
                      color: GFColors.getGFColor(GFColor.success),
                    )),
              )),
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => SquareButtons()),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(left: 15, right: 15, top: 20),
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(7)),
                    color: GFColors.getGFColor(GFColor.dark),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.40), blurRadius: 5)
                    ]),
                child: GFListTile(
                    color: GFColors.getGFColor(GFColor.dark),
                    title: Text(
                      'Square Buttons',
                      style:
                          TextStyle(color: GFColors.getGFColor(GFColor.white)),
                    ),
                    icon: Icon(
                      CupertinoIcons.forward,
                      color: GFColors.getGFColor(GFColor.success),
                    )),
              )),
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => ShadowButtons()),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(left: 15, right: 15, top: 20),
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(7)),
                    color: GFColors.getGFColor(GFColor.dark),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.40), blurRadius: 5)
                    ]),
                child: GFListTile(
                    color: GFColors.getGFColor(GFColor.dark),
                    title: Text(
                      'Shadow Buttons',
                      style:
                          TextStyle(color: GFColors.getGFColor(GFColor.white)),
                    ),
                    icon: Icon(
                      CupertinoIcons.forward,
                      color: GFColors.getGFColor(GFColor.success),
                    )),
              )),
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => IconButtons()),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(left: 15, right: 15, top: 20),
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(7)),
                    color: GFColors.getGFColor(GFColor.dark),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.40), blurRadius: 5)
                    ]),
                child: GFListTile(
                    color: GFColors.getGFColor(GFColor.dark),
                    title: Text(
                      'Icons Buttons',
                      style:
                          TextStyle(color: GFColors.getGFColor(GFColor.white)),
                    ),
                    icon: Icon(
                      CupertinoIcons.forward,
                      color: GFColors.getGFColor(GFColor.success),
                    )),
              )),
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => SocialButtons()),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(
                    left: 15, right: 15, top: 20, bottom: 20),
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(7)),
                    color: GFColors.getGFColor(GFColor.dark),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.40), blurRadius: 5)
                    ]),
                child: GFListTile(
                    color: GFColors.getGFColor(GFColor.dark),
                    title: Text(
                      'Social Buttons',
                      style:
                          TextStyle(color: GFColors.getGFColor(GFColor.white)),
                    ),
                    icon: Icon(
                      CupertinoIcons.forward,
                      color: GFColors.getGFColor(GFColor.success),
                    )),
              )),
        ],
      ));
}
