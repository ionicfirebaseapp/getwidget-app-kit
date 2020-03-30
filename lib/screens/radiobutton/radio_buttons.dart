import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';
import 'package:flutter/cupertino.dart';

class RadioButtonPage extends StatefulWidget {
  @override
  _RadioButtonPageState createState() => _RadioButtonPageState();
}

class _RadioButtonPageState extends State<RadioButtonPage> {
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
          content:    Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GFRadioButton(


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
                },
                value: true,
                inactiveIcon: null,
                radioColor: GFColors.INFO,
              ),
              GFRadioButton(


                size: GFSize.MEDIUM,
                onChanged: (val) {
                  print('on change val $val');
                },
                value: true,
                inactiveIcon: null,
                radioColor: GFColors.DANGER,
              ),
              GFRadioButton(

                size: GFSize.SMALL,
                onChanged: (val) {
                  print('on change val $val');
                },
                value: false,
                inactiveIcon: null,
                radioColor: GFColors.WARNING,
              ),

              GFRadioButton(


                size: 20,
                onChanged: (val) {
                  print('on change val $val');
                },
                value: true,
                inactiveIcon: null,
                radioColor: GFColors.SUCCESS,
              )
            ],
          )
        ),

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
            content:    Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GFRadioButton(

                type: GFRadioButtonType.square,
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
                  radioColor: GFColors.SECONDARY,
                ),
                GFRadioButton(

                  type: GFRadioButtonType.square,
                  size: GFSize.MEDIUM,
                  onChanged: (val) {
                    print('on change val $val');
                  },
                  value: true,
                  inactiveIcon: null,
                  radioColor: GFColors.ALT,
                ),
                GFRadioButton(

                  type: GFRadioButtonType.square,
                  size: GFSize.SMALL,
                  onChanged: (val) {
                    print('on change val $val');
                  },
                  value: false,
                  inactiveIcon: null,
                  radioColor: GFColors.PRIMARY,
                ),

                GFRadioButton(

                  type: GFRadioButtonType.square,
                  size: 20,
                  onChanged: (val) {
                    print('on change val $val');
                  },
                  value: true,
                  inactiveIcon: null,
                  radioColor: GFColors.INFO,
                  activeIcon: Icon(Icons.close),

                )
              ],
            )
        ),

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
            content:    Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GFRadioButton(

                  type: GFRadioButtonType.blunt,
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
                  custombgColor: GFColors.DANGER,
                ),
                GFRadioButton(

                  type: GFRadioButtonType.blunt,
                  size: GFSize.MEDIUM,
                  onChanged: (val) {
                    print('on change val $val');
                  },
                  value: true,
                  inactiveIcon: null,
                  custombgColor: GFColors.WARNING,
                ),
                GFRadioButton(

                  type: GFRadioButtonType.blunt,
                  size: GFSize.SMALL,
                  onChanged: (val) {
                    print('on change val $val');
                  },
                  value: false,
                  inactiveIcon: null,
                  custombgColor: GFColors.DARK,

                ),

                GFRadioButton(

                  type: GFRadioButtonType.blunt,
                  size: 25,
                  onChanged: (val) {
                    print('on change val $val');
                  },
                  value: true,
                  inactiveIcon: null,
                  custombgColor: GFColors.SUCCESS,

                )
              ],
            )
        )
,


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
            content:    Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GFRadioButton(

                  type: GFRadioButtonType.custom,
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
                ),
                GFRadioButton(

                  type: GFRadioButtonType.custom,
                  activeIcon: Icon(Icons.sentiment_satisfied),

                  size: GFSize.MEDIUM,
                  onChanged: (val) {
                    print('on change val $val');
                  },
                  value: true,
                  inactiveIcon: Icon(Icons.sentiment_dissatisfied),
                  custombgColor: GFColors.WARNING,
                ),
                GFRadioButton(

                  type: GFRadioButtonType.blunt,
                  size: GFSize.SMALL,
                  onChanged: (val) {
                    print('on change val $val');
                  },
                  value: false,
                  inactiveIcon: null,
                  custombgColor: GFColors.DARK,
                ),

                GFRadioButton(

                  type: GFRadioButtonType.blunt,
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
            )
        )


      ],
    ),

  );
}
