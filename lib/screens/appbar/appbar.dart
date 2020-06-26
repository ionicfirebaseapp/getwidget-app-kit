import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:flutter/cupertino.dart';

class Appbar extends StatefulWidget {
  @override
  _AppbarState createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
  List list = [
    'Flutter',
    'React',
    'Ionic',
    'Xamarin',
    'Flutter2',
    'React2',
    'Ionic2',
    'Xamarin2',
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: GFAppBar(
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              CupertinoIcons.back,
              color: GFColors.WHITE,
            ),
          ),
          backgroundColor: GFColors.DARK,
          title: const Text('UI Kit'),
          actions: <Widget>[
            GFIconButton(
              icon: Icon(
                Icons.favorite,
                color: Colors.white,
              ),
              onPressed: () {},
              type: GFButtonType.transparent,
            ),
          ],
        ),
      );
}
