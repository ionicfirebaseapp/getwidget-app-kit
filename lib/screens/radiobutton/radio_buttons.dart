import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:flutter/cupertino.dart';

class RadioButtonPage extends StatefulWidget {
  @override
  _RadioButtonPageState createState() => _RadioButtonPageState();
}

class _RadioButtonPageState extends State<RadioButtonPage> {
  int selectedRadio;
  bool isChecked = false;
  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  void initState() {
    super.initState();
    selectedRadio = 1;
  }

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
                  onChanged: (val) {
                    print('on change val $val');
                    setSelectedRadio(val);
                  },
                  value: 0,
                  inactiveIcon: null,
                  radioColor: GFColors.INFO, groupValue: selectedRadio,
                ),
                GFRadio(
                  size: GFSize.MEDIUM,
                  onChanged: (val) {
                    print('on change val $val');
                    setSelectedRadio(val);
                  },
                  value: 1,
                  inactiveIcon: null,
                  radioColor: GFColors.DANGER,
                  groupValue: selectedRadio,
                ),
                GFRadio(
                  size: GFSize.SMALL,
                  onChanged: (val) {
                    print('on change val $val');
                    setSelectedRadio(val);
                  },
                  value: 2,
                  inactiveIcon: null,
                  radioColor: GFColors.WARNING,
                  groupValue: selectedRadio,
                ),
                GFRadio(
                  size: 20,
                  onChanged: (val) {
                    print('on change val $val');
                    setSelectedRadio(val);
                  },
                  value: 3,
                  inactiveIcon: null,
                  radioColor: GFColors.SUCCESS,
                  groupValue: selectedRadio,
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
                  onChanged: (val) {
                    print('on change val $val');
                  },
                  value: true,
                  inactiveIcon: null,
                  radioColor: GFColors.SECONDARY, groupValue: null,
                ),
                GFRadio(
                  type: GFRadioType.square,
                  size: GFSize.MEDIUM,
                  onChanged: (val) {
                    print('on change val $val');
                  },
                  value: true,
                  inactiveIcon: null,
                  radioColor: GFColors.ALT,
                  groupValue: null,
                ),
                GFRadio(
                  type: GFRadioType.square,
                  size: GFSize.SMALL,
                  onChanged: (val) {
                    print('on change val $val');
                  },
                  value: false,
                  inactiveIcon: null,
                  radioColor: GFColors.PRIMARY,
                  groupValue: null,
                ),
                GFRadio(
                  type: GFRadioType.square,
                  size: 20,
                  onChanged: (val) {
                    print('on change val $val');
                  },
                  value: true,
                  inactiveIcon: null,
                  radioColor: GFColors.INFO,
                  activeIcon: Icon(Icons.close),
                  groupValue: null,
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
                  onChanged: (val) {
                    print('on change val $val');
                  },
                  value: true,
                  inactiveIcon: null,
                  custombgColor: GFColors.DANGER, groupValue: null,
                ),
                GFRadio(
                  type: GFRadioType.blunt,
                  size: GFSize.MEDIUM,
                  onChanged: (val) {
                    print('on change val $val');
                  },
                  value: true,
                  inactiveIcon: null,
                  custombgColor: GFColors.WARNING,
                  groupValue: null,
                ),
                GFRadio(
                  type: GFRadioType.blunt,
                  size: GFSize.SMALL,
                  onChanged: (val) {
                    print('on change val $val');
                  },
                  value: false,
                  inactiveIcon: null,
                  custombgColor: GFColors.DARK,
                  groupValue: null,
                ),
                GFRadio(
                  type: GFRadioType.blunt,
                  size: 25,
                  onChanged: (val) {
                    print('on change val $val');
                  },
                  value: true,
                  inactiveIcon: null,
                  custombgColor: GFColors.SUCCESS,
                  groupValue: null,
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
                  onChanged: (val) {
                    print('on change val $val');
                  },
                  value: true,
                  groupValue: null,
                ),
                GFRadio(
                  type: GFRadioType.custom,
                  activeIcon: Icon(Icons.sentiment_satisfied),
                  size: GFSize.MEDIUM,
                  onChanged: (val) {
                    print('on change val $val');
                  },
                  value: true,
                  inactiveIcon: Icon(Icons.sentiment_dissatisfied),
                  custombgColor: GFColors.WARNING,
                  groupValue: null,
                ),
                GFRadio(
                  type: GFRadioType.blunt,
                  size: GFSize.SMALL,
                  onChanged: (val) {
                    print('on change val $val');
                  },
                  value: false,
                  inactiveIcon: null,
                  custombgColor: GFColors.DARK,
                  groupValue: null,
                ),
                GFRadio(
                  type: GFRadioType.blunt,
                  size: 25,
                  onChanged: (val) {
                    print('on change val $val');
                  },
                  value: true,
                  inactiveIcon: null,
                  custombgColor: GFColors.SUCCESS,
                  groupValue: false,
                ),
              ],
            ))
          ],
        ),
      );
}
