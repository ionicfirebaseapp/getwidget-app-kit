import 'package:flutter/material.dart';
import 'package:getflutter/colors/gf_color.dart';
import 'package:getflutter/components/avatar/gf_avatar.dart';
import 'package:getflutter/components/card/gf_card.dart';
import 'package:getflutter/components/list_tile/gf_list_tile.dart';
import 'package:getflutter/components/typography/gf_typography.dart';
import 'package:getflutter/shape/gf_avatar_shape.dart';
import 'package:getflutter/types/gf_typography_type.dart';
import 'package:flutter/cupertino.dart';

class TilesPage extends StatefulWidget {
  @override
  _TilesPageState createState() => _TilesPageState();
}

class _TilesPageState extends State<TilesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: getGFColor(GFColor.dark),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: Icon(
                CupertinoIcons.back,
                color: getGFColor(GFColor.success),
              ),
            )),
        title: Text(
          'Tiles',
          style: TextStyle(fontSize: 17),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 15, top: 30),
            child: GFTypography(
              text: 'With Label',
              type: GFTypographyType.typo5,
              dividerWidth: 25,
              dividerColor: Color(0xFF19CA4B),
            ),
          ),
          GFCard(
            content: GFListTile(
              titleText: 'Title',
              subtitleText: 'Lorem ipsum dolor sit amet, consectetur adipiscing',
              icon: Icon(Icons.favorite),
            ),
          ),
          GFCard(
            content: GFListTile(
              avatar: Icon(Icons.favorite),
              titleText: 'Title',
              icon: Text('Caption'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15,top:5),
            child: GFTypography(
              text: 'With Avatar',
              type: GFTypographyType.typo5,
              dividerWidth: 25,
              dividerColor: Color(0xFF19CA4B),
            ),
          ),
          GFCard(
            content: GFListTile(
              avatar: GFAvatar(
                backgroundImage: AssetImage('lib/assets/images/avatar5.png'),
              ),
              titleText: 'Title',
              subtitleText: 'Lorem ipsum dolor sit amet, consectetur adipiscing',
            ),
          ),
          GFCard(
            content: GFListTile(
              avatar: GFAvatar(
                shape: GFAvatarShape.standard,
                backgroundImage: AssetImage('lib/assets/images/avatar11.png'),
              ),
              titleText: 'Title',
              icon: Text('Caption'),
            ),
          ),
        ],
      ),
    );
  }
}
