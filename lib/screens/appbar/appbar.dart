import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';
import 'package:getflutter_app/screens/appbar/searchbar.dart';
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GFAppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            CupertinoIcons.back,
            color: GFColors.getGFColor(GFColor.success),
          ),
        ),
        backgroundColor: Colors.teal,
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
}
