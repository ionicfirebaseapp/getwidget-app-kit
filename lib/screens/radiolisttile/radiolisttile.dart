import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:flutter/cupertino.dart';

class RadioListTilePage extends StatefulWidget {
  @override
  _RadioListTilePageState createState() => _RadioListTilePageState();
}

class _RadioListTilePageState extends State<RadioListTilePage> {
  int? groupValue = 0;

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
            'RadioListTile',
            style: TextStyle(fontSize: 17),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            GFRadioListTile(
              titleText: 'Hello',
              subTitleText: 'Happy New Year',
              position: GFPosition.start,
              icon: GFAvatar(
                backgroundImage: AssetImage('lib/assets/images/img1.png'),
              ),
              size: 25,
              activeBorderColor: Colors.green,
              focusColor: Colors.green,
              type: GFRadioType.basic,
              value: 0,
              groupValue: groupValue,
              onChanged: (val) {
                setState(() {
                  groupValue = val;
                });
              },
              // inactiveIcon: null,
            ),
            GFRadioListTile(
              titleText: 'Hello',
              subTitleText: 'Happy New Year',
              avatar: GFAvatar(
                backgroundImage: AssetImage('lib/assets/images/img2.png'),
              ),
              size: 25,
              activeBorderColor: Colors.green,
              focusColor: Colors.green,
              type: GFRadioType.square,
              value: 1,
              groupValue: groupValue,
              onChanged: (val) {
                setState(() {
                  groupValue = val;
                });
              },
              // inactiveIcon: null,
            ),
          ],
        ),
      );
}
