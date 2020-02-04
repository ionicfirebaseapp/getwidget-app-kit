import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';


class Searchbar extends StatefulWidget {
  @override
  _SearchbarState createState() => _SearchbarState();
}

class _SearchbarState extends State<Searchbar> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GFAppBar(
        backgroundColor: Colors.teal,
        title: const Text('UI Kit'),
searchBar: true,
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
}
