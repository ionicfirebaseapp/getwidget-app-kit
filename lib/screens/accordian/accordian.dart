import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:getflutter/components/accordian/gf_accordian.dart';
import 'package:getflutter/getflutter.dart';

class Accordion extends StatefulWidget {
  @override
  _AccordionState createState() => _AccordionState();
}

class _AccordionState extends State<Accordion> {
  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: GFColors.getGFColor(GFColor.white),
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
              titleborderColor: Border(
                top: BorderSide(
                    color: Colors.black.withOpacity(0.2), width: 0.5),
                left: BorderSide(
                    color: Colors.black.withOpacity(0.2), width: 0.5),
                right: BorderSide(
                    color: Colors.black.withOpacity(0.2), width: 0.5),
                bottom: BorderSide(
                    color: Colors.black.withOpacity(0.2), width: 0.5),
              ),
              contentBorderColor: Border(
                bottom: BorderSide(
                    color: Colors.black.withOpacity(0.2), width: 0.5),
                left: BorderSide(
                    color: Colors.black.withOpacity(0.2), width: 0.5),
                right: BorderSide(
                    color: Colors.black.withOpacity(0.2), width: 0.5),
              ),
              title: 'GF Accordion',
              content:
                  'GetFlutter is an open source library that comes with pre-build 1000+ UI components.'
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
              titleborderColor: Border(
                top: BorderSide(
                    color: Colors.black.withOpacity(0.2), width: 0.5),
                left: BorderSide(
                    color: Colors.black.withOpacity(0.2), width: 0.5),
                right: BorderSide(
                    color: Colors.black.withOpacity(0.2), width: 0.5),
                bottom: BorderSide(
                    color: Colors.black.withOpacity(0.2), width: 0.5),
              ),
              contentBorderColor: Border(
                bottom: BorderSide(
                    color: Colors.black.withOpacity(0.2), width: 0.5),
                left: BorderSide(
                    color: Colors.black.withOpacity(0.2), width: 0.5),
                right: BorderSide(
                    color: Colors.black.withOpacity(0.2), width: 0.5),
              ),
              title: 'GF Accordion',
              content:
                  'GetFlutter is an open source library that comes with pre-build 1000+ UI components.'
                  ' The library is built to make flutter development faster and more enjoyable.',
              collapsedIcon: const Text('Show'),
              expandedIcon: Text(
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
              titleborderColor: Border(
                top: BorderSide(
                    color: Colors.black.withOpacity(0.2), width: 0.5),
                left: BorderSide(
                    color: Colors.black.withOpacity(0.2), width: 0.5),
                right: BorderSide(
                    color: Colors.black.withOpacity(0.2), width: 0.5),
                bottom: BorderSide(
                    color: Colors.black.withOpacity(0.2), width: 0.5),
              ),
              contentBorderColor: Border(
                bottom: BorderSide(
                    color: Colors.black.withOpacity(0.2), width: 0.5),
                left: BorderSide(
                    color: Colors.black.withOpacity(0.2), width: 0.5),
                right: BorderSide(
                    color: Colors.black.withOpacity(0.2), width: 0.5),
              ),
              title: 'GF Accordion',
              content:
                  'GetFlutter is an open source library that comes with pre-build 1000+ UI components.'
                  ' The library is built to make flutter development faster and more enjoyable.',
              collapsedIcon: Icon(Icons.add_circle_outline),
              expandedIcon: Icon(
                Icons.remove_circle_outline,
                color: Colors.red,
              )),
        ],
      ));
}
