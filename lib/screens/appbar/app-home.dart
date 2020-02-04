import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:getflutter_app/screens/appbar/appbar.dart';
import 'package:getflutter_app/screens/appbar/searchbar.dart';
import 'package:getflutter_app/screens/appbar/segmented-appbar.dart';


class AppHome extends StatefulWidget {
  @override
  _AppHomeState createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GFColors.getGFColor(GFColor.dark),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            CupertinoIcons.back,
            color: GFColors.getGFColor(GFColor.success),
          ),
        ),
        title: Text(
          'Appbar',
          style: TextStyle(fontSize: 17),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 15, top: 30, bottom: 10),
            child: GFTypography(
              text: 'Basic Appbar',
              type: GFTypographyType.typo5,
              dividerWidth: 25,
              dividerColor: Color(0xFF19CA4B),
            ),
          ),
         Container(
           height: 70,
           child:  Appbar(),
         ),
          Padding(
            padding: EdgeInsets.only(left: 15, top: 30, bottom: 10),
            child: GFTypography(
              text: 'Appbar with SearchBox',
              type: GFTypographyType.typo5,
              dividerWidth: 25,
              dividerColor: Color(0xFF19CA4B),
            ),
          ),
          Container(
            height: 70,
            child:  Searchbar(),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, top: 30, bottom: 10),
            child: GFTypography(
              text: 'Segmented Tabs Appbar',
              type: GFTypographyType.typo5,
              dividerWidth: 25,
              dividerColor: Color(0xFF19CA4B),
            ),
          ),
          Container(
            height: 200,
            child:  SegmentedAppbar(),
          )
        ],
      ),
    );
  }
}
