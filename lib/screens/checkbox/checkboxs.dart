import 'package:flutter/material.dart';
import 'package:getflutter/getwidget.dart';
import 'package:flutter/cupertino.dart';

class CheckBoxPage extends StatefulWidget {
  @override
  _CheckBoxPageState createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {
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
            'CheckBox',
            style: TextStyle(fontSize: 17),
          ),
          centerTitle: true,
        ),

        body: ListView(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 30),
              child: GFTypography(
                text: 'Basic Checkbox',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),
            GFCard(
              content: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GFCheckbox(
                    size: GFSize.SMALL,
                    activebgColor: GFColors.DANGER,
                    onChanged: (val) {
                      print('on change val $val');
                    },
                    value: true,
                    inactiveIcon: null,
                  ),
                  GFCheckbox(
                    activebgColor: GFColors.SECONDARY,
                    onChanged: (val) {
                      print('on change val $val');
                    },
                    value: true,
                    inactiveIcon: null,
                  ),
                  GFCheckbox(
                    size: GFSize.LARGE,
                    activebgColor: GFColors.SUCCESS,
                    onChanged: (val) {
                      print('on change val $val');
                    },
                    value: true,
                    inactiveIcon: null,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 30),
              child: GFTypography(
                text: 'Square Checkbox',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),
            GFCard(
              content: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GFCheckbox(
                    size: GFSize.SMALL,
                    activebgColor: GFColors.ALT,
                    type: GFCheckboxType.square,
                    onChanged: (val) {
                      print('on change val $val');
                    },
                    value: true,
                    inactiveIcon: null,
                  ),
                  GFCheckbox(
                    type: GFCheckboxType.square,
                    activebgColor: GFColors.INFO,
                    onChanged: (val) {
                      print('on change val $val');
                    },
                    value: true,
                    inactiveIcon: null,
                  ),
                  GFCheckbox(
                    size: GFSize.LARGE,
                    activebgColor: GFColors.DARK,
                    type: GFCheckboxType.square,
                    onChanged: (val) {
                      print('on change val $val');
                    },
                    value: true,
                    inactiveIcon: null,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 30),
              child: GFTypography(
                text: 'Circular Checkbox',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),
            GFCard(
              content: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GFCheckbox(
                    size: GFSize.SMALL,
                    type: GFCheckboxType.circle,
                    onChanged: (val) {
                      print('on change val $val');
                    },
                    value: true,
                    inactiveIcon: null,
                  ),
                  GFCheckbox(
                    type: GFCheckboxType.circle,
                    activebgColor: GFColors.WARNING,
                    onChanged: (val) {
                      print('on change val $val');
                    },
                    value: true,
                  ),
                  GFCheckbox(
                    activebgColor: GFColors.SECONDARY,
                    size: GFSize.LARGE,
                    type: GFCheckboxType.circle,
                    onChanged: (val) {
                      print('on change val $val');
                    },
                    value: true,
                    inactiveIcon: null,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 30),
              child: GFTypography(
                text: 'Custom Checkbox',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),
            GFCard(
              content: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GFCheckbox(
                    size: GFSize.SMALL,
                    type: GFCheckboxType.custom,
                    onChanged: (val) {
                      print('on change val $val');
                    },
                    value: true,
                    inactiveIcon: null,
                  ),
                  GFCheckbox(
                    type: GFCheckboxType.square,
                    activebgColor: GFColors.INFO,
                    activeIcon: Icon(Icons.sentiment_satisfied),
                    onChanged: (val) {
                      print('on change val $val');
                    },
                    value: true,
                    inactiveIcon: Icon(Icons.sentiment_dissatisfied),
                  ),
                  GFCheckbox(
                    size: GFSize.MEDIUM,
//            activebgColor: GFColors.,
                    type: GFCheckboxType.custom,
                    onChanged: (val) {
                      print('on change val $val');
                    },
                    value: true,
                    custombgColor: Colors.purple,
                    inactiveIcon: null,
                  ),
                ],
              ),
            ),
          ],
        ),

//       body:
//       Container(
//         alignment: Alignment.center,
//         child: GFCheckbox(
//           size: GFSize.SMALL,
//           onChanged: (val) {
//             print('on change val $val');
//           },
//           value: true,
//           type: GFCheckboxType.circle,
////           checkColor: GFColors.DANGER,
////activebgColor: Colors.green,
////inactivebgColor: Colors.white,
////activeBorderColor: Colors.red,
////           backgroundColor: Colors.green,
//         ),
//       ),
      );
}
