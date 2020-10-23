import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:flutter/cupertino.dart';

class CheckBoxPage extends StatefulWidget {
  @override
  _CheckBoxPageState createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {
  bool check = true;
  bool check1 = false;
  bool check2 = false;
  bool check3 = true;
  bool check4 = false;
  bool check5 = false;
  bool check6 = true;
  bool check7 = false;
  bool check8 = false;
  bool check9 = true;
  bool check10 = false;
  bool check11 = false;
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
                    activeBgColor: GFColors.DANGER,
                    onChanged: (val) {
                      setState(() {
                        check = val;
                      });
                    },
                    value: check,
                    inactiveIcon: null,
                  ),
                  GFCheckbox(
                    activeBgColor: GFColors.SECONDARY,
                    onChanged: (val) {
                      setState(() {
                        check1 = val;
                      });
                    },
                    value: check1,
                    inactiveIcon: null,
                  ),
                  GFCheckbox(
                    size: GFSize.LARGE,
                    activeBgColor: GFColors.SUCCESS,
                    onChanged: (val) {
                      setState(() {
                        check2 = val;
                      });
                    },
                    value: check2,
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
                    activeBgColor: GFColors.DANGER,
                    type: GFCheckboxType.square,
                    onChanged: (val) {
                      setState(() {
                        check3 = val;
                      });
                    },
                    value: check3,
                    inactiveIcon: null,
                  ),
                  GFCheckbox(
                    type: GFCheckboxType.square,
                    activeBgColor: GFColors.SECONDARY,
                    onChanged: (val) {
                      setState(() {
                        check4 = val;
                      });
                    },
                    value: check4,
                    inactiveIcon: null,
                  ),
                  GFCheckbox(
                    size: GFSize.LARGE,
                    activeBgColor: GFColors.SUCCESS,
                    type: GFCheckboxType.square,
                    onChanged: (val) {
                      setState(() {
                        check5 = val;
                      });
                    },
                    value: check5,
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
                    activeBgColor: GFColors.DANGER,
                    type: GFCheckboxType.circle,
                    onChanged: (val) {
                      setState(() {
                        check6 = val;
                      });
                    },
                    value: check6,
                    inactiveIcon: null,
                  ),
                  GFCheckbox(
                    type: GFCheckboxType.circle,
                    activeBgColor: GFColors.SECONDARY,
                    onChanged: (val) {
                      setState(() {
                        check7 = val;
                      });
                    },
                    value: check7,
                  ),
                  GFCheckbox(
                    activeBgColor: GFColors.SUCCESS,
                    size: GFSize.LARGE,
                    type: GFCheckboxType.circle,
                    onChanged: (val) {
                      setState(() {
                        check8 = val;
                      });
                    },
                    value: check8,
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
                      setState(() {
                        check9 = val;
                      });
                    },
                    value: check9,
                    inactiveIcon: null,
                  ),
                  GFCheckbox(
                    type: GFCheckboxType.square,
                    activeBgColor: GFColors.SECONDARY,
                    activeIcon: Icon(Icons.sentiment_satisfied),
                    onChanged: (val) {
                      setState(() {
                        check10 = val;
                      });
                    },
                    value: check10,
                    inactiveIcon: Icon(Icons.sentiment_dissatisfied),
                  ),
                  GFCheckbox(
                    size: GFSize.MEDIUM,
//            activebgColor: GFColors.,
                    type: GFCheckboxType.custom,
                    onChanged: (val) {
                      setState(() {
                        check11 = val;
                      });
                    },
                    value: check11,
                    customBgColor: GFColors.INFO,
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
