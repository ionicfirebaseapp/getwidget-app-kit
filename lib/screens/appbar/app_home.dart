import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:flutter/cupertino.dart';
import 'appbar.dart';
import 'searchbar.dart';
import 'segmented_appbar.dart';

class AppHome extends StatefulWidget {
  @override
  _AppHomeState createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: GFColors.DARK,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              CupertinoIcons.back,
              color: GFColors.SUCCESS,
            ),
          ),
          title: const Text(
            'Appbar',
            style: TextStyle(fontSize: 17),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            const Padding(
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
              child: Appbar(),
            ),
            const Padding(
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
              child: Searchbar(),
            ),
            const Padding(
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
              child: SegmentedAppbar(),
            )
          ],
        ),
      );
}
