import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:flutter/cupertino.dart';

class RadioButtonPage extends StatefulWidget {
  @override
  _RadioButtonPageState createState() => _RadioButtonPageState();
}

class _RadioButtonPageState extends State<RadioButtonPage> {
  // int selectedRadio;
  // bool isChecked = false;
  // setSelectedRadio(int val) {
  //   setState(() {
  //     selectedRadio = val;
  //   });
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   selectedRadio = 1;
  // }

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
//        Radio(value: null, groupValue: null, onChanged: null),

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
//                activeBorderColor: Colors.pink,
//                radioColor: Colors.black87,
//                custombgColor: Colors.red,
                  value: 0,
                  groupValue: groupValue,
                  onChanged: (val) {
                    setState(() {
                      groupValue = val;
                    });
                  },
                  inactiveIcon: null,
                  radioColor: GFColors.INFO,
                ),
                GFRadio(
                  size: GFSize.MEDIUM,
                  value: 1,
                  groupValue: groupValue,
                  onChanged: (val) {
                    setState(() {
                      groupValue = val;
                    });
                  },
                  inactiveIcon: null,
                  radioColor: GFColors.DANGER,
                ),
                GFRadio(
                  size: GFSize.SMALL,
                  value: 2,
                  groupValue: groupValue,
                  onChanged: (val) {
                    setState(() {
                      groupValue = val;
                    });
                  },
                  inactiveIcon: null,
                  radioColor: GFColors.WARNING,
                ),
                GFRadio(
                  size: 20,
                  value: 3,
                  groupValue: groupValue,
                  onChanged: (val) {
                    setState(() {
                      groupValue = val;
                    });
                  },
                  inactiveIcon: null,
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
                  onChanged: (val) {
                    setState(() {
                      groupValue = val;
                    });
                  },
                  inactiveIcon: null,
                  radioColor: GFColors.SECONDARY,
                ),
                GFRadio(
                  type: GFRadioType.square,
                  size: GFSize.MEDIUM,
                  value: 5,
                  groupValue: groupValue,
                  onChanged: (val) {
                    setState(() {
                      groupValue = val;
                    });
                  },
                  inactiveIcon: null,
                  radioColor: GFColors.ALT,
                ),
                GFRadio(
                  type: GFRadioType.square,
                  size: GFSize.SMALL,
                  value: 6,
                  groupValue: groupValue,
                  onChanged: (val) {
                    setState(() {
                      groupValue = val;
                    });
                  },
                  inactiveIcon: null,
                  radioColor: GFColors.PRIMARY,
                ),
                GFRadio(
                  type: GFRadioType.square,
                  size: 20,
                  value: 7,
                  groupValue: groupValue,
                  onChanged: (val) {
                    setState(() {
                      groupValue = val;
                    });
                  },
                  inactiveIcon: null,
                  radioColor: GFColors.INFO,
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
//                activeBorderColor: Colors.pink,
//                radioColor: Colors.black87,
//                custombgColor: Colors.red,
                    value: 8,
                    groupValue: groupValue,
                    onChanged: (val) {
                      setState(() {
                        groupValue = val;
                      });
                    },
                    inactiveIcon: null,
                    custombgColor: GFColors.DANGER),
                GFRadio(
                  type: GFRadioType.blunt,
                  size: GFSize.MEDIUM,
                  value: 9,
                  groupValue: groupValue,
                  onChanged: (val) {
                    setState(() {
                      groupValue = val;
                    });
                  },
                  inactiveIcon: null,
                  custombgColor: GFColors.WARNING,
                ),
                GFRadio(
                  type: GFRadioType.blunt,
                  size: GFSize.SMALL,
                  value: 10,
                  groupValue: groupValue,
                  onChanged: (val) {
                    setState(() {
                      groupValue = val;
                    });
                  },
                  inactiveIcon: null,
                  custombgColor: GFColors.DARK,
                ),
                GFRadio(
                  type: GFRadioType.blunt,
                  size: 25,
                  value: 11,
                  groupValue: groupValue,
                  onChanged: (val) {
                    setState(() {
                      groupValue = val;
                    });
                  },
                  inactiveIcon: null,
                  custombgColor: GFColors.SUCCESS,
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
                  inactivebgColor: Colors.amber,
                  inactiveBorderColor: Colors.purple,
                  activeBorderColor: Colors.pink,
                  value: 12,
                  groupValue: groupValue,
                  onChanged: (val) {
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
                  onChanged: (val) {
                    setState(() {
                      groupValue = val;
                    });
                  },
                  inactiveIcon: Icon(Icons.sentiment_dissatisfied),
                  custombgColor: GFColors.WARNING,
                ),
                GFRadio(
                  type: GFRadioType.blunt,
                  size: GFSize.SMALL,
                  value: 14,
                  groupValue: groupValue,
                  onChanged: (val) {
                    setState(() {
                      groupValue = val;
                    });
                  },
                  inactiveIcon: null,
                  custombgColor: GFColors.DARK,
                ),
                GFRadio(
                  type: GFRadioType.blunt,
                  size: 25,
                  value: 15,
                  groupValue: groupValue,
                  onChanged: (val) {
                    setState(() {
                      groupValue = val;
                    });
                  },
                  inactiveIcon: null,
                  custombgColor: GFColors.SUCCESS,
                ),
              ],
            ))
          ],
        ),
      );
}
