import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:flutter/cupertino.dart';

class TilesPage extends StatefulWidget {
  @override
  _TilesPageState createState() => _TilesPageState();
}

class _TilesPageState extends State<TilesPage> {
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
            'Tiles',
            style: TextStyle(fontSize: 17),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            const Padding(
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
                subTitleText: 'Open source UI library',
                icon: Icon(Icons.favorite),
              ),
            ),
            GFCard(
              content: GFListTile(
                avatar: Icon(Icons.favorite),
                titleText: 'Title',
                icon: const Text('Caption'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 5),
              child: GFTypography(
                text: 'With Avatar',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),
            const GFCard(
              content: GFListTile(
                avatar: GFAvatar(
                  backgroundImage: AssetImage('lib/assets/images/avatar5.png'),
                ),
                titleText: 'Title',
                subTitleText: 'Open source UI library',
              ),
            ),
            const GFCard(
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
