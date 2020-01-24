import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:getflutter/getflutter.dart';

class Avatar extends StatefulWidget {
  @override
  _AvatarState createState() => _AvatarState();
}

class _AvatarState extends State<Avatar> {
  bool showToast = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GFColors.getGFColor(GFColor.dark),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            CupertinoIcons.back,
            color: GFColors.getGFColor(GFColor.success),
          ),
        ),
        title: Text(
          'Avatar',
          style: TextStyle(fontSize: 17),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 15, top: 30),
            child: GFTypography(
              text: 'Basic Avatar',
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
                    GFAvatar(
                      backgroundImage:
                          AssetImage('lib/assets/images/avatar5.png'),
                    ),
                    GFAvatar(
                      backgroundImage: AssetImage('lib/assets/images/img.png'),
                    ),
                    GFAvatar(
                      backgroundImage: AssetImage('lib/assets/images/img1.png'),
                    ),
                    GFAvatar(
                      backgroundImage: AssetImage('lib/assets/images/img2.png'),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GFAvatar(
                      backgroundImage:
                          AssetImage('lib/assets/images/avatar6.png'),
                      shape: GFAvatarShape.standard,
                    ),
                    GFAvatar(
                      backgroundImage:
                          AssetImage('lib/assets/images/avatar11.png'),
                      shape: GFAvatarShape.standard,
                    ),
                    GFAvatar(
                      backgroundImage:
                          AssetImage('lib/assets/images/avatar9.png'),
                      shape: GFAvatarShape.standard,
                    ),
                    GFAvatar(
                      backgroundImage:
                          AssetImage('lib/assets/images/avatar12.png'),
                      shape: GFAvatarShape.standard,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GFAvatar(
                      backgroundImage: AssetImage(
                        'lib/assets/images/avatar10.png',
                      ),
                      shape: GFAvatarShape.square,
                    ),
                    GFAvatar(
                      backgroundImage:
                          AssetImage('lib/assets/images/avatar12.png'),
                      shape: GFAvatarShape.square,
                    ),
                    GFAvatar(
                      backgroundImage:
                          AssetImage('lib/assets/images/avatar11.png'),
                      shape: GFAvatarShape.square,
                    ),
                    GFAvatar(
                      backgroundImage:
                          AssetImage('lib/assets/images/avatar6.png'),
                      shape: GFAvatarShape.square,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
