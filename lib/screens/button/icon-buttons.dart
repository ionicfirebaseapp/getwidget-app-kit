import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getflutter/getflutter.dart';

class IconButtons extends StatefulWidget {
  @override
  _IconButtonsState createState() => _IconButtonsState();
}

class _IconButtonsState extends State<IconButtons> {
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
            'Icon Buttons',
            style: TextStyle(fontSize: 17),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 15, top: 30),
              child: GFTypography(
                text: 'Solid Icons',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),
//
//          GFCard(
//            content: Column(
//              children: <Widget>[
//                Row(
//                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                  children: <Widget>[
////    GFIconButton(
////              onPressed: (){},
////              icon: Icon(Icons.ac_unit),
//////              iconSize: 12.0,
////              type: GFButtonType.solid,
////              shape: GFButtonShape.pills,
////              size: GFSize.large,
//////              buttonBoxShadow: true,
//////              color: GFColor.primary,
//////              boxShadow: BoxShadow(
//////                color: Colors.pink,
//////                blurRadius: 2.0,
//////                spreadRadius: 1.0,
//////                offset: Offset.zero,
//////              ),
//////              borderSide: BorderSide(color: Colors.pink, width: 1.0, style: BorderStyle.solid),
//////              borderShape: RoundedRectangleBorder(side: BorderSide(color: Colors.pink, width: 2.0, style: BorderStyle.solid), borderRadius: BorderRadius.zero),
////            ),
//
//
//                  ],
//                ),
//              ],
//            )
//          )

            GFCard(
              content: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: GFButton(
                            onPressed: () {},
                            child: Text(
                              "Primary",
                            ),
                            icon: SvgPicture.asset(
                                'lib/assets/icons/primary.svg')),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: Text("Second"),
                          icon: SvgPicture.asset(
                              'lib/assets/icons/secondary.svg'),
                          color: GFColor.secondary,
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: Text(
                            "Success",
                          ),
                          icon:
                              SvgPicture.asset('lib/assets/icons/success.svg'),
                          color: GFColor.success,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
//                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: Text(
                            "Warning",
                          ),
                          icon:
                              SvgPicture.asset('lib/assets/icons/warning.svg'),
                          color: GFColor.warning,
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: Text(
                            "Danger",
                          ),
                          icon: SvgPicture.asset('lib/assets/icons/danger.svg'),
                          color: GFColor.danger,
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: Text(
                            "Info",
                          ),
                          icon: SvgPicture.asset('lib/assets/icons/info.svg'),
                          color: GFColor.info,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: Text(
                            "Light",
                          ),
                          icon: SvgPicture.asset('lib/assets/icons/light.svg'),
                          type: GFButtonType.solid,
                          color: GFColor.light,
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: Text(
                            "Dark",
                            style: TextStyle(
                                color: GFColors.getGFColor(GFColor.white)),
                          ),
                          icon: SvgPicture.asset('lib/assets/icons/dark.svg'),
                          color: GFColor.dark,
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: Text(
                            "Link",
                          ),
                          icon: SvgPicture.asset('lib/assets/icons/link.svg'),
                          color: GFColor.transparent,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 15, top: 10),
              child: GFTypography(
                text: 'Outline Icons',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),

            GFCard(
              content: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: GFButton(
                            onPressed: () {},
                            type: GFButtonType.outline,
                            child: Text(
                              "Primary",
                            ),
                            icon: SvgPicture.asset(
                              'lib/assets/icons/primary.svg',
                              color: GFColors.getGFColor(GFColor.primary),
                            )),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: Text("Second"),
                          icon: SvgPicture.asset(
                            'lib/assets/icons/secondary.svg',
                            color: GFColors.getGFColor(GFColor.secondary),
                          ),
                          color: GFColor.secondary,
                          type: GFButtonType.outline,
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: Text(
                            "Success",
                          ),
                          icon: SvgPicture.asset(
                            'lib/assets/icons/success.svg',
                            color: GFColors.getGFColor(GFColor.success),
                          ),
                          color: GFColor.success,
                          type: GFButtonType.outline,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: Text(
                            "Warning",
                          ),
                          icon: SvgPicture.asset(
                            'lib/assets/icons/warning.svg',
                            color: GFColors.getGFColor(GFColor.warning),
                          ),
                          color: GFColor.warning,
                          type: GFButtonType.outline,
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: Text(
                            "Danger",
                          ),
                          icon: SvgPicture.asset(
                            'lib/assets/icons/danger.svg',
                            color: GFColors.getGFColor(GFColor.danger),
                          ),
                          color: GFColor.danger,
                          type: GFButtonType.outline,
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: Text(
                            "Info",
                          ),
                          icon: SvgPicture.asset(
                            'lib/assets/icons/info.svg',
                            color: GFColors.getGFColor(GFColor.info),
                          ),
                          color: GFColor.info,
                          type: GFButtonType.outline,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: Text(
                            "Light",
                          ),
                          icon: SvgPicture.asset(
                            'lib/assets/icons/light.svg',
                            color: GFColors.getGFColor(GFColor.light),
                          ),
                          type: GFButtonType.outline,
                          color: GFColor.light,
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: Text(
                            "Dark",
                          ),
                          icon: SvgPicture.asset(
                            'lib/assets/icons/dark.svg',
                            color: GFColors.getGFColor(GFColor.dark),
                          ),
                          color: GFColor.dark,
                          type: GFButtonType.outline,
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: Text(
                            "Link",
                          ),
                          icon: SvgPicture.asset(
                            'lib/assets/icons/link.svg',
                            color: GFColors.getGFColor(GFColor.alt),
                          ),
                          color: GFColor.transparent,
                          type: GFButtonType.outline,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 15, top: 10),
              child: GFTypography(
                text: 'Outline 2x Icons',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),

            GFCard(
              content: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: GFButton(
                            onPressed: () {},
                            type: GFButtonType.outline2x,
                            child: Text(
                              "Primary",
                            ),
                            icon: SvgPicture.asset(
                              'lib/assets/icons/primary.svg',
                              color: GFColors.getGFColor(GFColor.primary),
                            )),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: Text("Second"),
                          icon: SvgPicture.asset(
                            'lib/assets/icons/secondary.svg',
                            color: GFColors.getGFColor(GFColor.secondary),
                          ),
                          color: GFColor.secondary,
                          type: GFButtonType.outline2x,
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: Text(
                            "Success",
                          ),
                          icon: SvgPicture.asset(
                            'lib/assets/icons/success.svg',
                            color: GFColors.getGFColor(GFColor.success),
                          ),
                          color: GFColor.success,
                          type: GFButtonType.outline2x,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: Text(
                            "Warning",
                          ),
                          icon: SvgPicture.asset(
                            'lib/assets/icons/warning.svg',
                            color: GFColors.getGFColor(GFColor.warning),
                          ),
                          color: GFColor.warning,
                          type: GFButtonType.outline2x,
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: Text(
                            "Danger",
                          ),
                          icon: SvgPicture.asset(
                            'lib/assets/icons/danger.svg',
                            color: GFColors.getGFColor(GFColor.danger),
                          ),
                          color: GFColor.danger,
                          type: GFButtonType.outline2x,
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: Text(
                            "Info",
                          ),
                          icon: SvgPicture.asset(
                            'lib/assets/icons/info.svg',
                            color: GFColors.getGFColor(GFColor.info),
                          ),
                          color: GFColor.info,
                          type: GFButtonType.outline2x,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: Text(
                            "Light",
                          ),
                          icon: SvgPicture.asset(
                            'lib/assets/icons/light.svg',
                            color: GFColors.getGFColor(GFColor.light),
                          ),
                          type: GFButtonType.outline2x,
                          color: GFColor.light,
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: Text(
                            "Dark",
                          ),
                          icon: SvgPicture.asset(
                            'lib/assets/icons/dark.svg',
                            color: GFColors.getGFColor(GFColor.dark),
                          ),
                          color: GFColor.dark,
                          type: GFButtonType.outline2x,
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: Text(
                            "Link",
                          ),
                          icon: SvgPicture.asset(
                            'lib/assets/icons/link.svg',
                            color: GFColors.getGFColor(GFColor.alt),
                          ),
                          color: GFColor.transparent,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 15, top: 10),
              child: GFTypography(
                text: 'Square Icons',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),

            GFCard(
              content: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: GFButton(
                            onPressed: () {},
                            shape: GFButtonShape.square,
                            child: Text(
                              "Primary",
                            ),
                            icon: SvgPicture.asset(
                                'lib/assets/icons/primary.svg')),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          shape: GFButtonShape.square,
                          child: Text("Second"),
                          icon: SvgPicture.asset(
                              'lib/assets/icons/secondary.svg'),
                          color: GFColor.secondary,
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          shape: GFButtonShape.square,
                          onPressed: () {},
                          child: Text(
                            "Success",
                          ),
                          icon:
                              SvgPicture.asset('lib/assets/icons/success.svg'),
                          color: GFColor.success,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          shape: GFButtonShape.square,
                          child: Text(
                            "Warning",
                          ),
                          icon:
                              SvgPicture.asset('lib/assets/icons/warning.svg'),
                          color: GFColor.warning,
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          shape: GFButtonShape.square,
                          child: Text(
                            "Danger",
                          ),
                          icon: SvgPicture.asset('lib/assets/icons/danger.svg'),
                          color: GFColor.danger,
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          shape: GFButtonShape.square,
                          child: Text(
                            "Info",
                          ),
                          icon: SvgPicture.asset('lib/assets/icons/info.svg'),
                          color: GFColor.info,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          shape: GFButtonShape.square,
                          child: Text(
                            "Light",
                          ),
                          icon: SvgPicture.asset('lib/assets/icons/light.svg'),
                          type: GFButtonType.solid,
                          color: GFColor.light,
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          shape: GFButtonShape.square,
                          child: Text(
                            "Dark",
                            style: TextStyle(
                                color: GFColors.getGFColor(GFColor.white)),
                          ),
                          icon: SvgPicture.asset('lib/assets/icons/dark.svg'),
                          color: GFColor.dark,
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          shape: GFButtonShape.square,
                          child: Text(
                            "Link",
                          ),
                          icon: SvgPicture.asset('lib/assets/icons/link.svg'),
                          color: GFColor.transparent,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 15, top: 10),
              child: GFTypography(
                text: 'Pills Icons',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),

            GFCard(
              content: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: GFButton(
                            onPressed: () {},
                            shape: GFButtonShape.pills,
                            child: Text(
                              "Primary",
                            ),
                            icon: SvgPicture.asset(
                                'lib/assets/icons/primary.svg')),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          shape: GFButtonShape.pills,
                          child: Text("Second"),
                          icon: SvgPicture.asset(
                              'lib/assets/icons/secondary.svg'),
                          color: GFColor.secondary,
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          shape: GFButtonShape.pills,
                          onPressed: () {},
                          child: Text(
                            "Success",
                          ),
                          icon:
                              SvgPicture.asset('lib/assets/icons/success.svg'),
                          color: GFColor.success,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          shape: GFButtonShape.pills,
                          child: Text(
                            "Warning",
                          ),
                          icon:
                              SvgPicture.asset('lib/assets/icons/warning.svg'),
                          color: GFColor.warning,
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          shape: GFButtonShape.pills,
                          child: Text(
                            "Danger",
                          ),
                          icon: SvgPicture.asset('lib/assets/icons/danger.svg'),
                          color: GFColor.danger,
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          shape: GFButtonShape.pills,
                          child: Text(
                            "Info",
                          ),
                          icon: SvgPicture.asset('lib/assets/icons/info.svg'),
                          color: GFColor.info,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          shape: GFButtonShape.pills,
                          child: Text(
                            "Light",
                          ),
                          icon: SvgPicture.asset('lib/assets/icons/light.svg'),
                          type: GFButtonType.solid,
                          color: GFColor.light,
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          shape: GFButtonShape.pills,
                          child: Text(
                            "Dark",
                            style: TextStyle(
                                color: GFColors.getGFColor(GFColor.white)),
                          ),
                          icon: SvgPicture.asset('lib/assets/icons/dark.svg'),
                          color: GFColor.dark,
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          shape: GFButtonShape.pills,
                          child: Text(
                            "Link",
                          ),
                          icon: SvgPicture.asset('lib/assets/icons/link.svg'),
                          color: GFColor.transparent,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 15, top: 10),
              child: GFTypography(
                text: 'Shadow Buttons',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),

            GFCard(
              content: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: Text(
                            "Primary",
                          ),
                          icon:
                              SvgPicture.asset('lib/assets/icons/primary.svg'),
                          buttonBoxShadow: true,
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: Text("Second"),
                          icon: SvgPicture.asset(
                              'lib/assets/icons/secondary.svg'),
                          color: GFColor.secondary,
                          buttonBoxShadow: true,
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: Text(
                            "Success",
                          ),
                          icon:
                              SvgPicture.asset('lib/assets/icons/success.svg'),
                          color: GFColor.success,
                          buttonBoxShadow: true,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: Text(
                            "Warning",
                          ),
                          icon:
                              SvgPicture.asset('lib/assets/icons/warning.svg'),
                          color: GFColor.warning,
                          buttonBoxShadow: true,
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: Text(
                            "Danger",
                          ),
                          icon: SvgPicture.asset('lib/assets/icons/danger.svg'),
                          color: GFColor.danger,
                          buttonBoxShadow: true,
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: Text(
                            "Info",
                          ),
                          icon: SvgPicture.asset('lib/assets/icons/info.svg'),
                          color: GFColor.info,
                          buttonBoxShadow: true,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: Text(
                            "Light",
                          ),
                          icon: SvgPicture.asset('lib/assets/icons/light.svg'),
                          type: GFButtonType.solid,
                          color: GFColor.light,
                          buttonBoxShadow: true,
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: Text(
                            "Dark",
                            style: TextStyle(
                                color: GFColors.getGFColor(GFColor.white)),
                          ),
                          icon: SvgPicture.asset('lib/assets/icons/dark.svg'),
                          color: GFColor.dark,
                          buttonBoxShadow: true,
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: Text(
                            "Link",
                          ),
                          icon: SvgPicture.asset('lib/assets/icons/link.svg'),
                          color: GFColor.transparent,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 15, top: 10),
              child: GFTypography(
                text: 'Button Sizes',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),

            GFCard(
              content: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GFButton(
                        onPressed: () {},
                        child: Text("Large",
                            style: TextStyle(
                                color: GFColors.getGFColor(GFColor.white))),
                        color: GFColor.primary,
                        size: GFSize.large,
                        icon: SvgPicture.asset('lib/assets/icons/primary.svg'),
                      ),
                      GFButton(
                        onPressed: () {},
                        child: Text("Normal",
                            style: TextStyle(
                                color: GFColors.getGFColor(GFColor.white))),
                        color: GFColor.primary,
                        size: GFSize.medium,
                        icon:
                            SvgPicture.asset('lib/assets/icons/secondary.svg'),
                      ),
                      GFButton(
                        onPressed: () {},
                        child: Text("Small",
                            style: TextStyle(
                                color: GFColors.getGFColor(GFColor.white))),
                        color: GFColor.primary,
                        size: GFSize.small,
                        icon: SvgPicture.asset('lib/assets/icons/info.svg'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 15, top: 10),
              child: GFTypography(
                text: 'Block Buttons',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),
            GFCard(
              content: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  GFButton(
                    onPressed: () {},
                    blockButton: true,
                    child: Text(
                      "Large",
                    ),
                    size: GFSize.large,
                    icon: SvgPicture.asset('lib/assets/icons/primary.svg'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GFButton(
                    onPressed: () {},
                    blockButton: true,
                    child: Text(
                      "Normal",
                    ),
                    size: GFSize.medium,
                    icon: SvgPicture.asset('lib/assets/icons/secondary.svg'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GFButton(
                    onPressed: () {},
                    blockButton: true,
                    child: Text(
                      "Small",
                    ),
                    size: GFSize.small,
                    icon: SvgPicture.asset('lib/assets/icons/success.svg'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 15, top: 20),
              child: GFTypography(
                text: 'Icons Only',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),

            GFCard(
              content: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GFIconButton(
                          icon:
                              SvgPicture.asset('lib/assets/icons/primary.svg'),
                          onPressed: () {}),
                      GFIconButton(
                          color: GFColor.secondary,
                          icon: SvgPicture.asset(
                              'lib/assets/icons/secondary.svg'),
                          onPressed: () {}),
                      GFIconButton(
                          color: GFColor.success,
                          icon:
                              SvgPicture.asset('lib/assets/icons/success.svg'),
                          onPressed: () {}),
                      GFIconButton(
                          color: GFColor.warning,
                          icon:
                              SvgPicture.asset('lib/assets/icons/warning.svg'),
                          onPressed: () {}),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GFIconButton(
                          color: GFColor.danger,
                          icon: SvgPicture.asset('lib/assets/icons/danger.svg'),
                          onPressed: () {}),
                      GFIconButton(
                          color: GFColor.info,
                          icon: SvgPicture.asset('lib/assets/icons/info.svg'),
                          onPressed: () {}),
                      GFIconButton(
                          color: GFColor.light,
                          icon: SvgPicture.asset('lib/assets/icons/light.svg'),
                          onPressed: () {}),
                      GFIconButton(
                          color: GFColor.dark,
                          icon: SvgPicture.asset('lib/assets/icons/dark.svg'),
                          onPressed: () {}),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GFIconButton(
                          type: GFButtonType.outline,
                          icon: Icon(Icons.settings),
                          onPressed: () {}),
                      GFIconButton(
                          type: GFButtonType.outline,
                          color: GFColor.secondary,
                          icon: Icon(Icons.send),
                          onPressed: () {}),
                      GFIconButton(
                          type: GFButtonType.outline,
                          color: GFColor.success,
                          icon: Icon(Icons.file_download),
                          onPressed: () {}),
                      GFIconButton(
                          type: GFButtonType.outline,
                          color: GFColor.warning,
                          icon: Icon(Icons.warning),
                          onPressed: () {}),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GFIconButton(
                          type: GFButtonType.outline,
                          color: GFColor.danger,
                          icon: Icon(Icons.insert_drive_file),
                          onPressed: () {}),
                      GFIconButton(
                          type: GFButtonType.outline,
                          color: GFColor.info,
                          icon: Icon(Icons.delete),
                          onPressed: () {}),
                      GFIconButton(
                          type: GFButtonType.outline,
                          color: GFColor.light,
                          icon: Icon(Icons.info),
                          onPressed: () {}),
                      GFIconButton(
                          type: GFButtonType.outline,
                          color: GFColor.dark,
                          icon: Icon(Icons.apps),
                          onPressed: () {}),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
