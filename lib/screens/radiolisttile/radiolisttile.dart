import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:flutter/cupertino.dart';

class RadioListTilePage extends StatefulWidget {
  @override
  _RadioListTilePageState createState() => _RadioListTilePageState();
}

class _RadioListTilePageState extends State<RadioListTilePage> {
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
            // GFRadioListTile(),
            // GFSlidable()
            GFListTile(
              titleText: 'Hello',
              subtitleText: 'Happy New Year',
              avatar: GFAvatar(),

              // size: GFSize.SMALL,
              // activebgColor: GFColors.DANGER,
              // activeBorderColor: Colors.purple,
              // type: GFCheckboxType.circle,
              // inactiveBorderColor: Colors.deepOrangeAccent,
              // onChanged: (val) {
              //   print('on change val $val');
              // },
              // value: true,
              // inactiveIcon: null,
            )
          ],
        ),
      );
}
