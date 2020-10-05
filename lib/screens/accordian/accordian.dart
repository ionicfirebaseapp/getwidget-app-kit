import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:getwidget/getwidget.dart';

class Accordion extends StatefulWidget {
  @override
  _AccordionState createState() => _AccordionState();
}

class _AccordionState extends State<Accordion> {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: GFColors.WHITE,
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
            'Accordion',
            style: TextStyle(fontSize: 17),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 30),
              child: GFTypography(
                text: 'Basic Accordion',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),
            GFAccordion(
                titleBorder: Border(
                  top: BorderSide(
                      color: Colors.black.withOpacity(0.2), width: 0.5),
                  left: BorderSide(
                      color: Colors.black.withOpacity(0.2), width: 0.5),
                  right: BorderSide(
                      color: Colors.black.withOpacity(0.2), width: 0.5),
                  bottom: BorderSide(
                      color: Colors.black.withOpacity(0.2), width: 0.5),
                ),
                contentBorder: Border(
                  top: BorderSide(
                      color: Colors.black.withOpacity(0.2), width: 0.5),
                  bottom: BorderSide(
                      color: Colors.black.withOpacity(0.2), width: 0.5),
                  left: BorderSide(
                      color: Colors.black.withOpacity(0.2), width: 0.5),
                  right: BorderSide(
                      color: Colors.black.withOpacity(0.2), width: 0.5),
                ),
                title: 'GF Accordion',
                content:
                    'GetWidget is an open source library that comes with pre-build 1000+ UI components.'
                    ' The library is built to make flutter development faster and more enjoyable.'),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 30),
              child: GFTypography(
                text: 'Accordion with Text',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),
            GFAccordion(
                titleBorder: Border(
                  top: BorderSide(
                      color: Colors.black.withOpacity(0.2), width: 0.5),
                  left: BorderSide(
                      color: Colors.black.withOpacity(0.2), width: 0.5),
                  right: BorderSide(
                      color: Colors.black.withOpacity(0.2), width: 0.5),
                  bottom: BorderSide(
                      color: Colors.black.withOpacity(0.2), width: 0.5),
                ),
                contentBorder: Border(
                  top: BorderSide(
                      color: Colors.black.withOpacity(0.2), width: 0.5),
                  bottom: BorderSide(
                      color: Colors.black.withOpacity(0.2), width: 0.5),
                  left: BorderSide(
                      color: Colors.black.withOpacity(0.2), width: 0.5),
                  right: BorderSide(
                      color: Colors.black.withOpacity(0.2), width: 0.5),
                ),
                title: 'GF Accordion',
                content:
                    'GetWidget is an open source library that comes with pre-build 1000+ UI components.'
                    ' The library is built to make flutter development faster and more enjoyable.',
                collapsedIcon: const Text('Show'),
                expandedIcon: const Text(
                  'Hide',
                  style: TextStyle(color: Colors.red),
                )),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 30),
              child: GFTypography(
                text: 'Accordion with Icon',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),
            GFAccordion(
              titleBorder: Border(
                top: BorderSide(
                    color: Colors.black.withOpacity(0.2), width: 0.5),
                left: BorderSide(
                    color: Colors.black.withOpacity(0.2), width: 0.5),
                right: BorderSide(
                    color: Colors.black.withOpacity(0.2), width: 0.5),
                bottom: BorderSide(
                    color: Colors.black.withOpacity(0.2), width: 0.5),
              ),
              contentBorder: Border(
                top: BorderSide(
                    color: Colors.black.withOpacity(0.2), width: 0.5),
                bottom: BorderSide(
                    color: Colors.black.withOpacity(0.2), width: 0.5),
                left: BorderSide(
                    color: Colors.black.withOpacity(0.2), width: 0.5),
                right: BorderSide(
                    color: Colors.black.withOpacity(0.2), width: 0.5),
              ),
              title: 'GF Accordion',
              content:
                  'GetWidget is an open source library that comes with pre-build 1000+ UI components.'
                  ' The library is built to make flutter development faster and more enjoyable.',
              collapsedIcon: Icon(Icons.add_circle_outline),
              expandedIcon: Icon(
                Icons.remove_circle_outline,
                color: Colors.red,
              ),
            ),
          ],
        ),
      );
}
