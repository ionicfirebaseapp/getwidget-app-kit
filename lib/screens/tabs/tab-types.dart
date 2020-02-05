import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';
import 'package:flutter/cupertino.dart';
import 'bottom-label-tab.dart';
import 'botton-icon-tab.dart';
import 'labeled-tabs.dart';
import 'segment-tabs.dart';
import 'icon-tabs.dart';

class TabTypes extends StatefulWidget {
  @override
  _TabTypesState createState() => _TabTypesState();
}

class _TabTypesState extends State<TabTypes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GFAppBar(
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
        title: Text(
          'Tabs',
          style: TextStyle(fontSize: 17),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => SegmentTabsPage()),
                );
              },
              child: Container(
                margin: EdgeInsets.only(left: 15, right: 15, top: 20),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    color: GFColors.getGFColor(GFColor.dark),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.40),
                          blurRadius: 5.0)
                    ]),
                child: GFListTile(
                    color: GFColors.getGFColor(GFColor.dark),
                    title: Text(
                      'Segmented Tabs',
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
                      builder: (BuildContext context) => IconTabs()),
                );
              },
              child: Container(
                margin: EdgeInsets.only(left: 15, right: 15, top: 20),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    color: GFColors.getGFColor(GFColor.dark),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.40),
                          blurRadius: 5.0)
                    ]),
                child: GFListTile(
                    color: GFColors.getGFColor(GFColor.dark),
                    title: Text(
                      'Icon Tabs',
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
                      builder: (BuildContext context) => LabeledTabs()),
                );
              },
              child: Container(
                margin: EdgeInsets.only(left: 15, right: 15, top: 20),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    color: GFColors.getGFColor(GFColor.dark),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.40),
                          blurRadius: 5.0)
                    ]),
                child: GFListTile(
                    color: GFColors.getGFColor(GFColor.dark),
                    title: Text(
                      'Labeled Tabs',
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
                      builder: (BuildContext context) => BottomIconTab()),
                );
              },
              child: Container(
                margin: EdgeInsets.only(left: 15, right: 15, top: 20),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    color: GFColors.getGFColor(GFColor.dark),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.40),
                          blurRadius: 5.0)
                    ]),
                child: GFListTile(
                    color: GFColors.getGFColor(GFColor.dark),
                    title: Text(
                      'Bottom Icon Tabs',
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
                      builder: (BuildContext context) => BottomLabelTab()),
                );
              },
              child: Container(
                margin: EdgeInsets.only(left: 15, right: 15, top: 20),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    color: GFColors.getGFColor(GFColor.dark),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.40),
                          blurRadius: 5.0)
                    ]),
                child: GFListTile(
                    color: GFColors.getGFColor(GFColor.dark),
                    title: Text(
                      'Bottom Labeled Tabs',
                      style:
                          TextStyle(color: GFColors.getGFColor(GFColor.white)),
                    ),
                    icon: Icon(
                      CupertinoIcons.forward,
                      color: GFColors.getGFColor(GFColor.success),
                    )),
              )),
        ],
      ),
    );
  }
}
