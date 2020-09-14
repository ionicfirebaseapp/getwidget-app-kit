import 'package:flutter/material.dart';
import 'package:getwidget/components/border/gf_border.dart';
import 'package:getwidget/getwidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:getwidget/types/gf_border_type.dart';

class BorderPage extends StatefulWidget {
  @override
  _BorderPageState createState() => _BorderPageState();
}

class _BorderPageState extends State<BorderPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
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
              )),
          title: const Text(
            'Border',
            style: TextStyle(fontSize: 17),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 30),
              child: GFTypography(
                text: 'Solid Borders',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: GFBorder(
                radius: Radius.circular(30),
                color: Color(0xFF19CA4B),
                dashedLine: [2, 0],
                // strokeWidth: 5,
                type: GFBorderType.Rect,
                child: Container(
                  height: 100,
                  color: Color(0xFFE9FFEF),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 20),
              child: GFTypography(
                text: 'Dashed Borders',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: GFBorder(
                type: GFBorderType.RRect,
                radius: Radius.circular(20),
                color: Color(0xFFAA66CC),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFFAF0FF),
                      borderRadius: BorderRadius.circular(20)),
                  height: 100,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 20),
              child: GFTypography(
                text: 'Dotted Borders',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: GFBorder(
                radius: Radius.circular(30),
                color: Color(0xFF19CA4B),
                dashedLine: [2, 1],
                type: GFBorderType.Rect,
                child: Container(
                  height: 100,
                  color: Color(0xFFE9FFEF),
                ),
              ),
            ),
          ],
        ),
      );
}
