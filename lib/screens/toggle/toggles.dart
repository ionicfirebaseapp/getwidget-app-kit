import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';
import 'package:flutter/cupertino.dart';

class Toggles extends StatefulWidget {
  @override
  _TogglesState createState() => _TogglesState();
}

class _TogglesState extends State<Toggles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GFColors.getGFColor(GFColor.dark),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: Icon(
                CupertinoIcons.back,
                color: GFColors.getGFColor(GFColor.success),
              ),
            )),
        title: Text(
          'Toggle',
          style: TextStyle(fontSize: 17),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 15, top: 30, bottom: 10),
              child: GFTypography(
                text: 'Basic',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),
            GFCard(
              content: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: <Widget>[
                     GFToggle(
                       onChanged: (val) {
                         print('on change val $val');
                       },
                       value: true,
                     ),
                     GFToggle(
                       enabledTrackColor: GFColors.getGFColor(GFColor.danger),
                       onChanged: (val) {
                         print('on change val $val');
                       },
                       value: true,
                     ),
                     GFToggle(
                       enabledTrackColor: GFColors.getGFColor(GFColor.warning),
                       onChanged: (val) {
                         print('on change val $val');
                       },
                       value: true,
                     ),
                     GFToggle(
                       enabledTrackColor: GFColors.getGFColor(GFColor.info),
                       onChanged: (val) {
                         print('on change val $val');
                       },
                       value: true,
                     )
                   ],
                 )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, top: 10),
              child: GFTypography(
                text: 'IOS',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),
            GFCard(
              content: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: <Widget>[
                     GFToggle(
                       onChanged: (v) {
                         print('ios val $v');
                       },
                       value: true,
                       type: GFToggleType.ios,
                     ),
                     GFToggle(
                       enabledTrackColor: GFColors.getGFColor(GFColor.danger),
                       onChanged: (v) {
                         print('ios val $v');
                       },
                       value: true,
                       type: GFToggleType.ios,
                     ),
                     GFToggle(
                       enabledTrackColor: GFColors.getGFColor(GFColor.warning),
                       onChanged: (v) {
                         print('ios val $v');
                       },
                       value: true,
                       type: GFToggleType.ios,
                     ),
                     GFToggle(
                       enabledTrackColor: GFColors.getGFColor(GFColor.info),
                       onChanged: (v) {
                         print('ios val $v');
                       },
                       value: true,
                       type: GFToggleType.ios,
                     )
                   ],
                 )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, top: 10),
              child: GFTypography(
                text: 'Square',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),
            GFCard(
              content: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: <Widget>[
                     GFToggle(
                       onChanged: (val) {
                         print('on change val $val');
                       },
                       value: true,
                       type: GFToggleType.square,
                     ),
                     GFToggle(
                       enabledTrackColor: GFColors.getGFColor(GFColor.danger),
                       onChanged: (val) {
                         print('on change val $val');
                       },
                       value: true,
                       type: GFToggleType.square,
                     ),
                     GFToggle(
                       enabledTrackColor: GFColors.getGFColor(GFColor.warning),
                       onChanged: (val) {
                         print('on change val $val');
                       },
                       value: true,
                       type: GFToggleType.square,
                     ),
                     GFToggle(
                       enabledTrackColor: GFColors.getGFColor(GFColor.info),
                       onChanged: (val) {
                         print('on change val $val');
                       },
                       value: true,
                       type: GFToggleType.square,
                     )
                   ],
                 )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, top: 10),
              child: GFTypography(
                text: 'Custom',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),
            GFCard(
              content: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GFToggle(
                        onChanged: (val) {
                          print('on change val $val');
                        },
                        value: true,
                        type: GFToggleType.custom,
                      ),
                      GFToggle(
                        onChanged: (val) {
                          print('on change val $val');
                        },
                        value: true,
                        type: GFToggleType.android,
                        boxShape: BoxShape.rectangle,
                        enabledTrackColor: GFColors.getGFColor(GFColor.danger),
                      ),
                      GFToggle(
                        onChanged: (val) {
                          print('on change val $val');
                        },
                        value: true,
                        type: GFToggleType.ios,
                        boxShape: BoxShape.rectangle,
                        enabledTrackColor: GFColors.getGFColor(GFColor.warning),
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                      ),
                      GFToggle(
                        onChanged: (val) {
                          print('on change val $val');
                        },
                        value: true,
                        type: GFToggleType.ios,
                        boxShape: BoxShape.rectangle,
                        enabledText: 'ON',
                        disabledText: 'OFF',
                        enabledTrackColor: GFColors.getGFColor(GFColor.info),
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
