
import 'package:flutter/material.dart';
import 'package:getflutter/colors/gf_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:getflutter/getflutter.dart';


class Toasts extends StatefulWidget {
  @override
  _ToastsState createState() => _ToastsState();
}

class _ToastsState extends State<Toasts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GFColors.getGFColor(GFColor.dark),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: Icon(
                CupertinoIcons.back,
                color: GFColors.getGFColor(GFColor.success),
              ),
            )),
        title: Text(
          'Toasts',
          style: TextStyle(fontSize: 17),
        ),
        centerTitle: true,
      ),
      body:
      ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 15, top: 30, bottom: 10),
            child: GFTypography(
              text: 'Animated Toasts (Auto Dismissable)',
              type: GFTypographyType.typo5,
              dividerWidth: 25,
              dividerColor: Color(0xFF19CA4B),
            ),
          ),
          GFToast(
            text: 'Auto Dismissable after the given duration !',
            button: GFButton(
              onPressed: () {},
              text: 'OK',
              type: GFButtonType.transparent,
              color: GFColor.success,
            ),
            autoDismiss: true,
//            duration: Duration(seconds: 6),
          ),
          SizedBox(
            height: 15,
          ),
          GFToast(
            text: 'Pass true to autoDismiss property to use this effect !',
            autoDismiss: true,
//            duration: Duration(seconds: 8),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, top: 30, bottom: 10),
            child: GFTypography(
              text: 'Basic Toasts',
              type: GFTypographyType.typo5,
              dividerWidth: 25,
              dividerColor: Color(0xFF19CA4B),
            ),
          ),
          GFToast(
            text: 'Paired Succesfully !',
            button: GFButton(
              onPressed: () {},
              text: 'OK',
              type: GFButtonType.transparent,
              color: GFColor.success,
            ),
            autoDismiss: false,
            duration: Duration(milliseconds: 300),
            alignment: Alignment.topLeft,
          ),
          SizedBox(
            height: 15,
          ),
          GFToast(
            text:
                'This item already has the label “travel”. You can add a new label. !',
            button: GFButton(
              onPressed: () {},
              text: 'OK',
              type: GFButtonType.transparent,
              color: GFColor.success,
            ),
            autoDismiss: false,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, top: 30, bottom: 10),
            child: GFTypography(
              text: 'Rounded Toasts',
              type: GFTypographyType.typo5,
              dividerWidth: 25,
              dividerColor: Color(0xFF19CA4B),
            ),
          ),
          GFToast(
            text: 'Paired Succesfully !',
            button: GFButton(
              onPressed: () {},
              text: 'OK',
              type: GFButtonType.transparent,
              color: GFColor.success,
            ),
            type: GFToastType.rounded,
            autoDismiss: false,
            alignment: Alignment.topLeft,
          ),
          SizedBox(
            height: 15,
          ),
          GFToast(
            text:
                'This item already has the label “travel”. You can add a new label. !',
            button: GFButton(
              onPressed: () {},
              text: 'OK',
              type: GFButtonType.transparent,
              color: GFColor.success,
            ),
            autoDismiss: false,
            type: GFToastType.rounded,
            alignment: Alignment.topLeft,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, top: 30, bottom: 10),
            child: GFTypography(
              text: 'Full Width Toasts',
              type: GFTypographyType.typo5,
              dividerWidth: 25,
              dividerColor: Color(0xFF19CA4B),
            ),
          ),
          GFToast(
            text: 'Paired Succesfully !',
            button: GFButton(
              onPressed: () {},
              text: 'OK',
              type: GFButtonType.transparent,
              color: GFColor.success,
            ),
            type: GFToastType.fullWidth,
            autoDismiss: false,
          ),
          SizedBox(
            height: 15,
          ),
          GFToast(
            text:
                'This item already has the label “travel”. You can add a new label. !',
            button: GFButton(
              onPressed: () {},
              text: 'OK',
              type: GFButtonType.transparent,
              color: GFColor.success,
            ),
            autoDismiss: false,
            type: GFToastType.fullWidth,
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),

    );
  }
}
