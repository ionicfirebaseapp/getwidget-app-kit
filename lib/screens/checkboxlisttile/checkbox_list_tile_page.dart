import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class CheckBoxListTilePage extends StatefulWidget {
  @override
  _CheckBoxListTilePageState createState() => _CheckBoxListTilePageState();
}

class _CheckBoxListTilePageState extends State<CheckBoxListTilePage> {
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
        'CheckboxListTile',
        style: TextStyle(fontSize: 17),
      ),
      centerTitle: true,
    ),

//    body: GFCheckBoxListTile(),
  body: ListView(
    children: <Widget>[

      GFCheckboxListTile(
        titleText: 'hi',
        subtitleText: 'Happy Ugadi',
        avatar: GFAvatar(),
        size: GFSize.SMALL,
        activebgColor: GFColors.DANGER,
        activeBorderColor: Colors.purple,
        type: GFCheckboxType.circle,
        inactiveBorderColor: Colors.deepOrangeAccent,
        onChanged: (val) {
          print('on change val $val');
        },
        value: false,
        inactiveIcon: null,
      ),

      GFCheckboxListTile(
        titleText: 'hi',
        subtitleText: 'Happy Ugadi',
        avatar: GFAvatar(),
        size: GFSize.SMALL,
        activebgColor: GFColors.DANGER,
        activeBorderColor: Colors.purple,
        type: GFCheckboxType.circle,
        inactiveBorderColor: Colors.deepOrangeAccent,
        onChanged: (val) {
          print('on change val $val');
        },
        value: true,
        inactiveIcon: null,
      )
    ],
  ),
  );
}
