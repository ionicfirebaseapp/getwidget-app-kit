import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';

class Searchbar extends StatefulWidget {
  @override
  _SearchbarState createState() => _SearchbarState();
}

class _SearchbarState extends State<Searchbar> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: GFAppBar(
          backgroundColor: GFColors.getGFColor(GFColor.dark),
          title: const Text('UI Kit'),
          searchBar: true,
//        searchBarColorTheme: Colors.deepOrange,
          actions: <Widget>[
            GFIconButton(
              icon: Icon(
                Icons.share,
                color: Colors.white,
              ),
              onPressed: () {},
              type: GFButtonType.transparent,
            ),
          ],
        ),
      );
}
