import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:flutter/cupertino.dart';
import 'bottom_label_tab.dart';
import 'botton_icon_tab.dart';
import 'icon_tabs.dart';
import 'labeled_tabs.dart';
import 'segment_tabs.dart';

class TabTypes extends StatefulWidget {
  @override
  _TabTypesState createState() => _TabTypesState();
}

class _TabTypesState extends State<TabTypes> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: GFAppBar(
          backgroundColor: GFColors.DARK,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: Icon(
                CupertinoIcons.back,
                color: GFColors.SUCCESS,
              ),
            ),
          ),
          title: const Text(
            'Tabs',
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
                        builder: (BuildContext context) => SegmentTabsPage()),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 15, right: 15, top: 20),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(7)),
                      color: GFColors.DARK,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.40),
                            blurRadius: 5)
                      ]),
                  child: GFListTile(
                      color: GFColors.DARK,
                      title: const Text(
                        'Segmented Tabs',
                        style: TextStyle(color: GFColors.WHITE),
                      ),
                      icon: Icon(
                        CupertinoIcons.forward,
                        color: GFColors.SUCCESS,
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
                margin: const EdgeInsets.only(left: 15, right: 15, top: 20),
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(7)),
                    color: GFColors.DARK,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.40), blurRadius: 5)
                    ]),
                child: GFListTile(
                  color: GFColors.DARK,
                  title: const Text(
                    'Icon Tabs',
                    style: TextStyle(color: GFColors.WHITE),
                  ),
                  icon: Icon(
                    CupertinoIcons.forward,
                    color: GFColors.SUCCESS,
                  ),
                ),
              ),
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => LabeledTabs()),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 15, right: 15, top: 20),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(7)),
                      color: GFColors.DARK,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.40),
                            blurRadius: 5)
                      ]),
                  child: GFListTile(
                      color: GFColors.DARK,
                      title: const Text(
                        'Labeled Tabs',
                        style: TextStyle(color: GFColors.WHITE),
                      ),
                      icon: Icon(
                        CupertinoIcons.forward,
                        color: GFColors.SUCCESS,
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
                  margin: const EdgeInsets.only(left: 15, right: 15, top: 20),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(7)),
                      color: GFColors.DARK,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.40),
                            blurRadius: 5)
                      ]),
                  child: GFListTile(
                      color: GFColors.DARK,
                      title: const Text(
                        'Bottom Icon Tabs',
                        style: TextStyle(color: GFColors.WHITE),
                      ),
                      icon: Icon(
                        CupertinoIcons.forward,
                        color: GFColors.SUCCESS,
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
                margin: const EdgeInsets.only(left: 15, right: 15, top: 20),
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(7)),
                    color: GFColors.DARK,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.40),
                        blurRadius: 5,
                      )
                    ]),
                child: GFListTile(
                  color: GFColors.DARK,
                  title: const Text(
                    'Bottom Labeled Tabs',
                    style: TextStyle(color: GFColors.WHITE),
                  ),
                  icon: Icon(
                    CupertinoIcons.forward,
                    color: GFColors.SUCCESS,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
