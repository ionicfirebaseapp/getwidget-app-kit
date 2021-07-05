import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:flutter/cupertino.dart';

class RadioButtonPage extends StatefulWidget {
  @override
  _RadioButtonPageState createState() => _RadioButtonPageState();
}

class _RadioButtonPageState extends State<RadioButtonPage> {
  int groupValue = 0;

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
            'RadioButton',
            style: TextStyle(fontSize: 17),
          ),
          centerTitle: true,
        ),
        body: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          physics: ScrollPhysics(),
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 30),
              child: GFTypography(
                text: 'Basic Radio Button',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),
            GFCard(
                content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GFRadio(
//                type: GFRadioButtonType.custom,
                  size: GFSize.LARGE,
//                activebgColor: Colors.red,
//                inactivebgColor: Colors.amber,
//                inactiveBorderColor: Colors.purple,
                  activeBorderColor: GFColors.SUCCESS,
//                radioColor: Colors.black87,
//                custombgColor: Colors.red,
                  value: 0,
                  groupValue: groupValue,
                  onChanged: (dynamic val) {
                    setState(() {
                      groupValue = val;
                    });
                  },
                  inactiveIcon: null,
                  radioColor: GFColors.SUCCESS,
                ),
                GFRadio(
                  size: GFSize.MEDIUM,
                  value: 1,
                  groupValue: groupValue,
                  onChanged: (dynamic val) {
                    setState(() {
                      groupValue = val;
                    });
                  },
                  inactiveIcon: null,
                  activeBorderColor: GFColors.SUCCESS,
                  radioColor: GFColors.SUCCESS,
                ),
                GFRadio(
                  size: GFSize.SMALL,
                  value: 2,
                  groupValue: groupValue,
                  onChanged: (dynamic val) {
                    setState(() {
                      groupValue = val;
                    });
                  },
                  inactiveIcon: null,
                  activeBorderColor: GFColors.SUCCESS,
                  radioColor: GFColors.SUCCESS,
                ),
                GFRadio(
                  size: 20,
                  value: 3,
                  groupValue: groupValue,
                  onChanged: (dynamic val) {
                    setState(() {
                      groupValue = val;
                    });
                  },
                  inactiveIcon: null,
                  activeBorderColor: GFColors.SUCCESS,
                  radioColor: GFColors.SUCCESS,
                )
              ],
            )),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 30),
              child: GFTypography(
                text: 'Sqaure Radio Button',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),
            GFCard(
                content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GFRadio(
                  type: GFRadioType.square,
                  size: GFSize.LARGE,
//                activebgColor: Colors.red,
//                inactivebgColor: Colors.amber,
//                inactiveBorderColor: Colors.purple,
//                activeBorderColor: Colors.pink,
//                radioColor: Colors.black87,
//                custombgColor: Colors.red,
                  value: 4,
                  groupValue: groupValue,
                  onChanged: (dynamic val) {
                    setState(() {
                      groupValue = val;
                    });
                  },
                  inactiveIcon: null,
                  activeBorderColor: GFColors.SUCCESS,
                  radioColor: GFColors.SUCCESS,
                ),
                GFRadio(
                  type: GFRadioType.square,
                  size: GFSize.MEDIUM,
                  value: 5,
                  groupValue: groupValue,
                  onChanged: (dynamic val) {
                    setState(() {
                      groupValue = val;
                    });
                  },
                  inactiveIcon: null,
                  activeBorderColor: GFColors.SUCCESS,
                  radioColor: GFColors.SUCCESS,
                ),
                GFRadio(
                  type: GFRadioType.square,
                  size: GFSize.SMALL,
                  value: 6,
                  groupValue: groupValue,
                  onChanged: (dynamic val) {
                    setState(() {
                      groupValue = val;
                    });
                  },
                  inactiveIcon: null,
                  activeBorderColor: GFColors.SUCCESS,
                  radioColor: GFColors.SUCCESS,
                ),
                GFRadio(
                  type: GFRadioType.square,
                  size: 20,
                  value: 7,
                  groupValue: groupValue,
                  onChanged: (dynamic val) {
                    setState(() {
                      groupValue = val;
                    });
                  },
                  inactiveIcon: null,
                  activeBorderColor: GFColors.SUCCESS,
                  radioColor: GFColors.SUCCESS,
                  activeIcon: Icon(Icons.close),
                )
              ],
            )),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 30),
              child: GFTypography(
                text: 'Custom type 1 Radio Button',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),
            GFCard(
                content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GFRadio(
                    type: GFRadioType.blunt,
                    size: GFSize.LARGE,
//                activebgColor: Colors.red,
//                inactivebgColor: Colors.amber,
//                inactiveBorderColor: Colors.purple,
                    activeBorderColor: GFColors.SUCCESS,
//                radioColor: Colors.black87,
//                custombgColor: Colors.red,
                    value: 8,
                    groupValue: groupValue,
                    onChanged: (dynamic val) {
                      setState(() {
                        groupValue = val;
                      });
                    },
                    inactiveIcon: null,
                    customBgColor: GFColors.SUCCESS),
                GFRadio(
                  type: GFRadioType.blunt,
                  size: GFSize.MEDIUM,
                  value: 9,
                  groupValue: groupValue,
                  onChanged: (dynamic val) {
                    setState(() {
                      groupValue = val;
                    });
                  },
                  inactiveIcon: null,
                  activeBorderColor: GFColors.SUCCESS,
                  customBgColor: GFColors.SUCCESS,
                ),
                GFRadio(
                  type: GFRadioType.blunt,
                  size: GFSize.SMALL,
                  value: 10,
                  groupValue: groupValue,
                  onChanged: (dynamic val) {
                    setState(() {
                      groupValue = val;
                    });
                  },
                  inactiveIcon: null,
                  activeBorderColor: GFColors.SUCCESS,
                  customBgColor: GFColors.SUCCESS,
                ),
                GFRadio(
                  type: GFRadioType.blunt,
                  size: 25,
                  value: 11,
                  groupValue: groupValue,
                  onChanged: (dynamic val) {
                    setState(() {
                      groupValue = val;
                    });
                  },
                  inactiveIcon: null,
                  activeBorderColor: GFColors.SUCCESS,
                  customBgColor: GFColors.SUCCESS,
                )
              ],
            )),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 30),
              child: GFTypography(
                text: 'Custom Type 2 Radio Button',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),
            GFCard(
                content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GFRadio(
                  type: GFRadioType.custom,
                  activeIcon: Icon(Icons.check),
                  radioColor: Colors.red,
                  size: GFSize.LARGE,
                  activeBgColor: GFColors.SUCCESS,
                  inactiveBorderColor: GFColors.DARK,
                  activeBorderColor: GFColors.SUCCESS,
                  value: 12,
                  groupValue: groupValue,
                  onChanged: (dynamic val) {
                    setState(() {
                      groupValue = val;
                    });
                  },
                ),
                GFRadio(
                  type: GFRadioType.custom,
                  activeIcon: Icon(Icons.sentiment_satisfied),
                  size: GFSize.MEDIUM,
                  value: 13,
                  groupValue: groupValue,
                  onChanged: (dynamic val) {
                    setState(() {
                      groupValue = val;
                    });
                  },
                  inactiveIcon: Icon(Icons.sentiment_dissatisfied),
                  customBgColor: GFColors.WARNING,
                  activeBgColor: GFColors.SUCCESS,
                  activeBorderColor: GFColors.SUCCESS,
                ),
                GFRadio(
                  type: GFRadioType.blunt,
                  size: GFSize.SMALL,
                  value: 14,
                  groupValue: groupValue,
                  onChanged: (dynamic val) {
                    setState(() {
                      groupValue = val;
                    });
                  },
                  inactiveIcon: null,
                  customBgColor: GFColors.SUCCESS,
                  activeBorderColor: GFColors.SUCCESS,
                ),
                GFRadio(
                  type: GFRadioType.blunt,
                  size: 25,
                  value: 15,
                  groupValue: groupValue,
                  onChanged: (dynamic val) {
                    setState(() {
                      groupValue = val;
                    });
                  },
                  inactiveIcon: null,
                  activeBorderColor: GFColors.SUCCESS,
                  customBgColor: GFColors.SUCCESS,
                ),
              ],
            ))
          ],
        ),
      );
}
