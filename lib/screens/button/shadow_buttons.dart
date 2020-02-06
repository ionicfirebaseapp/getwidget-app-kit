import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:getflutter/getflutter.dart';

class ShadowButtons extends StatefulWidget {
  @override
  _ShadowButtonsState createState() => _ShadowButtonsState();
}

class _ShadowButtonsState extends State<ShadowButtons> {
  @override
  Widget build(BuildContext context) => Scaffold(
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
          title: const Text(
            'Shadow Buttons',
            style: TextStyle(fontSize: 17),
          ),
          centerTitle: true,
        ),
//      body: GFTabs(
//        height: MediaQuery.of(context).size.height,
//        tabBarColor: Color(0xFFD3E9ED),
//        initialIndex: 0,
//        length: 3,
//        indicatorColor: GFColors.getGFColor(GFColor.info),
//        unselectedLabelColor: GFColors.getGFColor(GFColor.danger),
//        labelColor: GFColors.getGFColor(GFColor.warning),
//        tabs: <Widget>[
//          GFButton(
//            onPressed: (){},
//            child: Text(
//              "Solid",
//              style: TextStyle(fontSize: 12),
//            ),
//            buttonBoxShadow: true,
//            textColor: GFColor.white,
//          ),
//          GFButton(
//            onPressed: null,
//            child: Text(
//              "Outline",
//              style: TextStyle(fontSize: 12),
//            ),
//            type: GFType.outline,
//          ),
//          GFButton(
//            onPressed: null,
//            text: 'Outline 2x',
//            textStyle: TextStyle(fontSize: 12, color: GFColors.getGFColor(GFColor.dark)),
//            type: GFType.outline2x,
//          ),
//        ],
//        tabBarView: GFTabBarView(
//          children: <Widget>[
//            Container(
////              color: Colors.red,
//              child: ListView(
//                children: <Widget>[
//                  Padding(padding: EdgeInsets.only(left:15, top:30),
//                    child:   GFTypography(
//                      text: 'Default',
//                      type: GFTypographyType.typo5,
//                      dividerWidth: 25,
//                      dividerColor: Color(0xFF19CA4B),
//
//                    ),
//                  ),
//                  GFCard(
//                    content: Column(
//                      mainAxisAlignment: MainAxisAlignment.start,
//                      crossAxisAlignment: CrossAxisAlignment.start,
//                      children: <Widget>[
//
//                        SizedBox(
//                          height: 10,
//                        ),
//                        Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                          children: <Widget>[
//                            GFButton(
//                              onPressed: (){},
//                              shape: GFButtonShape.standard,
//
//                              buttonBoxShadow: true,
//                              child: Text("Primary",
//                                  ),
//
//                              color: GFColor.primary,
//                            ),
//                            GFButton(
//                              onPressed: (){},
//                              child: Text("Secondary",
//                                  ),
//
//                              color: GFColor.secondary,
//                              buttonBoxShadow: true,
//                            ),
//                            GFButton(
//                              onPressed: (){},
//                              child: Text(
//                                "Success",
//                              ),
//                              buttonBoxShadow: true,
//                              color: GFColor.success,
//                            ),
//                          ],
//                        ),
//
//                        SizedBox(
//                          height: 10,
//                        ),
//                        Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                          children: <Widget>[
//                            GFButton(
//                              onPressed: (){},
//                              child: Text(
//                                "Warning",
//                              ),
//                              buttonBoxShadow: true,
//                              color: GFColor.warning,
//                            ),
//                            GFButton(
//                              onPressed: (){},
//                              child: Text("Danger",
//                                  ),
//                              buttonBoxShadow: true,
//                              color: GFColor.danger,
//                            ),
//                            GFButton(
//                              onPressed: (){},
//                              child: Text(
//                                "Info",
//                              ),
//                              buttonBoxShadow: true,
//                              color: GFColor.info,
//                            ),
//                          ],
//                        ),
//                        SizedBox(
//                          height: 10,
//                        ),
//                        Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                          children: <Widget>[
//                            GFButton(
//                              onPressed: (){},
//                              child: Text(
//                                "Light",
//                              ),
//                              buttonBoxShadow: true,
//                              color: GFColor.light,
//                            ),
//
//                            GFButton(
//                              onPressed: (){},
//                              child: Text(
//                                "Dark",
//                                style:
//                                TextStyle(color: GFColors.getGFColor(GFColor.white)),
//                              ),
//                              buttonBoxShadow: true,
//                              color: GFColor.dark,
//                            ),
//                            GFButton(
//                              onPressed: (){},
//                              child: Text("Link",
//                                  ),
//                              buttonBoxShadow: false,
//                              color: GFColor.transparent,
//                            ),
//                          ],
//                        ),
//SizedBox(
//  height: 10,
//)
//
//                      ],
//                    ),
//                  ),
//
//
//
//
//                  Padding(padding: EdgeInsets.only(left:15, top:10),
//                    child:   GFTypography(
//                      text: 'Button Sizes',
//                      type: GFTypographyType.typo5,
//                      dividerWidth: 25,
//                      dividerColor: Color(0xFF19CA4B),
//
//                    ),
//                  ),
//
//
//                  GFCard(
//                    content: Column(
//                      mainAxisAlignment: MainAxisAlignment.start,
//                      crossAxisAlignment: CrossAxisAlignment.start,
//                      children: <Widget>[
//                        SizedBox(
//                          height: 10,
//                        ),
//                        Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                          children: <Widget>[
//                            GFButton(
//                              onPressed: (){},
//                              child: Text("Large",
//                                  ),
//                              color: GFColor.primary,
//                              size: GFSize.large,
//                              buttonBoxShadow: true,
//                            ),
//                            GFButton(
//                              onPressed: (){},
//                              child: Text("Normal",
//                                 ),
//                              color: GFColor.primary,
//                              size: GFSize.medium,
//                              buttonBoxShadow: true,
//                            ),
//                            GFButton(
//                              onPressed: (){},
//                              child: Text("Small",
//                                  ),
//                              color: GFColor.primary,
//                              size: GFSize.small,
//                              buttonBoxShadow: true,
//                            ),
//                          ],
//                        ),
//                        SizedBox(
//                          height: 10,
//                        ),
//
//                      ],
//                    ),
//                  ),
//
//
//                  Padding(padding: EdgeInsets.only(left:15, top:10),
//                    child:   GFTypography(
//                      text: 'Block Buttons',
//                      type: GFTypographyType.typo5,
//                      dividerWidth: 25,
//                      dividerColor: Color(0xFF19CA4B),
//
//                    ),
//                  ),
//
//
//                  GFCard(
//                    content: Column(
//                      mainAxisAlignment: MainAxisAlignment.start,
//                      crossAxisAlignment: CrossAxisAlignment.start,
//                      children: <Widget>[
//                        SizedBox(
//                          height: 10,
//                        ),
//                        GFButton(
//                          onPressed: (){},
//                          blockButton: true,
//                          child: Text("Large",
//                              style: TextStyle(
//                                  color: GFColors.getGFColor(GFColor.white))),
//                          color: GFColor.primary,
//                          size: GFSize.large,
//                          buttonBoxShadow: true,
//                        ),
//
//                        SizedBox(
//                          height: 10,
//                        ),
//
//                        GFButton(
//                          onPressed: (){},
//                          blockButton: true,
//                          child: Text("Normal",
//                              style: TextStyle(
//                                  color: GFColors.getGFColor(GFColor.white))),
//                          color: GFColor.primary,
//                          size: GFSize.medium,
//                          buttonBoxShadow: true,
//                        ),
//
//                        SizedBox(
//                          height: 10,
//                        ),
//
//
//                        GFButton(
//                          onPressed: (){},
//                          blockButton: true,
//                          child: Text("Small",
//                              style: TextStyle(
//                                  color: GFColors.getGFColor(GFColor.white))),
//                          color: GFColor.primary,
//                          size: GFSize.small,
//                          buttonBoxShadow: true,
//                        ),
//                        SizedBox(
//                          height: 10,
//                        ),
//
//                      ],
//                    ),
//                  ),
//                ],
//              ),
//            ),
//
//
//            //tab 2
//            Container(
////              color: Colors.red,
//              child: ListView(
//                children: <Widget>[
//
//                  Padding(padding: EdgeInsets.only(left:15, top:30),
//                    child:   GFTypography(
//                      text: 'Default',
//                      type: GFTypographyType.typo5,
//                      dividerWidth: 25,
//                      dividerColor: Color(0xFF19CA4B),
//
//                    ),
//                  ),
//                  GFCard(
//                    content: Column(
//                      mainAxisAlignment: MainAxisAlignment.start,
//                      crossAxisAlignment: CrossAxisAlignment.start,
//                      children: <Widget>[
//                        SizedBox(
//                          height: 10,
//                        ),
//                        Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                          children: <Widget>[
//                            GFButton(
//                              onPressed: (){},
//                              child: Text(
//                                "Primary",
//
//                              ),
//
//                              type: GFType.outline,
//
//                            ),
//
//
//                            GFButton(
//                              onPressed: (){},
//                              child: Text("Secondary"),
//                              type: GFType.outline,
//                              color: GFColor.secondary,
//                            ),
//                            GFButton(
//                              onPressed: (){},
//                              child: Text(
//                                "Success",
//                              ),
//                              type: GFType.outline,
//                              color: GFColor.success,
//                            ),
//                          ],
//                        ),
//                        Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                          children: <Widget>[
//                            GFButton(
//                              onPressed: (){},
//                              child: Text(
//                                "Warning",
//                              ),
//                              type: GFType.outline,
//                              color: GFColor.warning,
//                            ),
//                            GFButton(
//                              onPressed: (){},
//                              child: Text(
//                                "Danger",
//                              ),
//                              type: GFType.outline,
//                              color: GFColor.danger,
//                            ),
//                            GFButton(
//                              onPressed: (){},
//                              child: Text(
//                                "Info",
//                              ),
//                              type: GFType.outline,
//                              color: GFColor.info,
//                            ),
//                          ],
//                        ),
//                        Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                          children: <Widget>[
//                            GFButton(
//                              onPressed: (){},
//                              child: Text(
//                                "Light",
//                              ),
//                              type: GFType.outline,
//                              color: GFColor.light,
//                            ),
//
//                            GFButton(
//                              onPressed: (){},
//                              child: Text(
//                                "Dark",
//                              ),
//                              type: GFType.outline,
//                              color: GFColor.dark,
//                            ),
//                            GFButton(
//                              onPressed: (){},
//                              child: Text(
//                                "Link",
//                              ),
//                              color: GFColor.transparent,
//                            ),
//                          ],
//                        ),
//                      ],
//                    ),
//                  ),
//
//
//
//                  Padding(padding: EdgeInsets.only(left:15, top:10),
//                    child:   GFTypography(
//                      text: 'Button Sizes',
//                      type: GFTypographyType.typo5,
//                      dividerWidth: 25,
//                      dividerColor: Color(0xFF19CA4B),
//
//                    ),
//                  ),
//
//
//                  GFCard(
//                    content: Column(
//                      mainAxisAlignment: MainAxisAlignment.start,
//                      crossAxisAlignment: CrossAxisAlignment.start,
//                      children: <Widget>[
//                        SizedBox(
//                          height: 10,
//                        ),
//                        Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                          children: <Widget>[
//                            GFButton(
//                              onPressed: (){},
//                              child: Text("Large",
//                              ),
//                              color: GFColor.primary,
//                              size: GFSize.large,
//                              type: GFType.outline,
//                            ),
//                            GFButton(
//                              onPressed: (){},
//                              child: Text("Normal",
//                              ),
//                              color: GFColor.primary,
//                              size: GFSize.medium,
//                              type: GFType.outline,
//                            ),
//                            GFButton(
//                              onPressed: (){},
//                              child: Text("Small",
//                              ),
//                              color: GFColor.primary,
//                              size: GFSize.small,
//                              type: GFType.outline,
//                            ),
//                          ],
//                        ),
//
//                      ],
//                    ),
//                  ),
//
//
//                  Padding(padding: EdgeInsets.only(left:15, top:10),
//                    child:   GFTypography(
//                      text: 'Block Buttons',
//                      type: GFTypographyType.typo5,
//                      dividerWidth: 25,
//                      dividerColor: Color(0xFF19CA4B),
//
//                    ),
//                  ),
//
//
//                  GFCard(
//                    content: Column(
//                      mainAxisAlignment: MainAxisAlignment.start,
//                      crossAxisAlignment: CrossAxisAlignment.start,
//                      children: <Widget>[
//                        SizedBox(
//                          height: 10,
//                        ),
//                        GFButton(
//                          onPressed: (){},
//                          blockButton: true,
//                          child: Text("Large",
//                          ),
//                          color: GFColor.primary,
//                          size: GFSize.large,
//                          type: GFType.outline,
//                        ),
//
//                        SizedBox(
//                          height: 10,
//                        ),
//
//                        GFButton(
//                          onPressed: (){},
//                          blockButton: true,
//                          child: Text("Normal",
//                          ),
//                          color: GFColor.primary,
//                          size: GFSize.medium,
//                          type: GFType.outline,
//                        ),
//
//                        SizedBox(
//                          height: 10,
//                        ),
//
//
//                        GFButton(
//                          onPressed: (){},
//                          blockButton: true,
//                          child: Text("Small",
//                          ),
//                          color: GFColor.primary,
//                          size: GFSize.small,
//                          type: GFType.outline,
//                        ),
//
//                      ],
//                    ),
//                  ),
//
//                ],
//              ),
//            ),
//
//
//            //tab 3
//            Container(
////              color: Colors.red,
//              child: ListView(
//                children: <Widget>[
//
//                  Padding(padding: EdgeInsets.only(left:15, top:30),
//                    child:   GFTypography(
//                      text: 'Default',
//                      type: GFTypographyType.typo5,
//                      dividerWidth: 25,
//                      dividerColor: Color(0xFF19CA4B),
//
//                    ),
//                  ),
//                  GFCard(
//                    content: Column(
//                      mainAxisAlignment: MainAxisAlignment.start,
//                      crossAxisAlignment: CrossAxisAlignment.start,
//                      children: <Widget>[
//                        SizedBox(
//                          height: 10,
//                        ),
//                        Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                          children: <Widget>[
//                            GFButton(
//                              onPressed: (){},
//                              child: Text(
//                                "Primary",
//
//                              ),
//
//                              type: GFType.outline2x,
//
//                            ),
//
//
//                            GFButton(
//                              onPressed: (){},
//                              child: Text("Secondary"),
//                              type: GFType.outline2x,
//                              color: GFColor.secondary,
//                            ),
//                            GFButton(
//                              onPressed: (){},
//                              child: Text(
//                                "Success",
//                              ),
//                              type: GFType.outline2x,
//                              color: GFColor.success,
//                            ),
//                          ],
//                        ),
//                        Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                          children: <Widget>[
//                            GFButton(
//                              onPressed: (){},
//                              child: Text(
//                                "Warning",
//                              ),
//                              type: GFType.outline2x,
//                              color: GFColor.warning,
//                            ),
//                            GFButton(
//                              onPressed: (){},
//                              child: Text(
//                                "Danger",
//                              ),
//                              type: GFType.outline2x,
//                              color: GFColor.danger,
//                            ),
//                            GFButton(
//                              onPressed: (){},
//                              child: Text(
//                                "Info",
//                              ),
//                              type: GFType.outline2x,
//                              color: GFColor.info,
//                            ),
//                          ],
//                        ),
//                        Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                          children: <Widget>[
//                            GFButton(
//                              onPressed: (){},
//                              child: Text(
//                                "Light",
//                              ),
//                              type: GFType.outline2x,
//                              color: GFColor.light,
//                            ),
//
//                            GFButton(
//                              onPressed: (){},
//                              child: Text(
//                                "Dark",
//                              ),
//                              type: GFType.outline2x,
//                              color: GFColor.dark,
//                            ),
//                            GFButton(
//                              onPressed: (){},
//                              child: Text(
//                                "Link",
//                              ),
//
//                              color: GFColor.transparent,
//                            ),
//                          ],
//                        ),
//                      ],
//                    ),
//                  ),
//
//
//
//                  Padding(padding: EdgeInsets.only(left:15, top:10),
//                    child:   GFTypography(
//                      text: 'Button Sizes',
//                      type: GFTypographyType.typo5,
//                      dividerWidth: 25,
//                      dividerColor: Color(0xFF19CA4B),
//
//                    ),
//                  ),
//
//
//                  GFCard(
//                    content: Column(
//                      mainAxisAlignment: MainAxisAlignment.start,
//                      crossAxisAlignment: CrossAxisAlignment.start,
//                      children: <Widget>[
//                        SizedBox(
//                          height: 10,
//                        ),
//                        Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                          children: <Widget>[
//                            GFButton(
//                              onPressed: (){},
//                              child: Text("Large",
//                              ),
//                              color: GFColor.primary,
//                              size: GFSize.large,
//                              type: GFType.outline2x,
//                            ),
//                            GFButton(
//                              onPressed: (){},
//                              child: Text("Normal",
//                              ),
//                              color: GFColor.primary,
//                              size: GFSize.medium,
//                              type: GFType.outline2x,
//                            ),
//                            GFButton(
//                              onPressed: (){},
//                              child: Text("Small",
//                              ),
//                              color: GFColor.primary,
//                              size: GFSize.small,
//                              type: GFType.outline2x,
//                            ),
//                          ],
//                        ),
//
//                      ],
//                    ),
//                  ),
//
//
//                  Padding(padding: EdgeInsets.only(left:15, top:10),
//                    child:   GFTypography(
//                      text: 'Block Buttons',
//                      type: GFTypographyType.typo5,
//                      dividerWidth: 25,
//                      dividerColor: Color(0xFF19CA4B),
//
//                    ),
//                  ),
//
//
//                  GFCard(
//                    content: Column(
//                      mainAxisAlignment: MainAxisAlignment.start,
//                      crossAxisAlignment: CrossAxisAlignment.start,
//                      children: <Widget>[
//                        SizedBox(
//                          height: 10,
//                        ),
//                        GFButton(
//                          onPressed: (){},
//                          blockButton: true,
//                          child: Text("Large",
//                          ),
//                          color: GFColor.primary,
//                          size: GFSize.large,
//                          type: GFType.outline2x,
//                        ),
//
//                        SizedBox(
//                          height: 10,
//                        ),
//
//                        GFButton(
//                          onPressed: (){},
//                          blockButton: true,
//                          child: Text("Normal",
//                          ),
//                          color: GFColor.primary,
//                          size: GFSize.medium,
//                          type: GFType.outline2x,
//                        ),
//
//                        SizedBox(
//                          height: 10,
//                        ),
//
//
//                        GFButton(
//                          onPressed: (){},
//                          blockButton: true,
//                          child: Text("Small",
//                          ),
//                          color: GFColor.primary,
//                          size: GFSize.small,
//                          type: GFType.outline2x,
//                        ),
//
//                      ],
//                    ),
//                  ),
//
//                ],
//              ),
//            ),
//          ],
//        ),
//      ),

        body: Container(
//              color: Colors.red,
          child: ListView(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 30),
                child: GFTypography(
                  text: 'Default',
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
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GFButton(
                          onPressed: () {},
                          shape: GFButtonShape.standard,
                          buttonBoxShadow: true,
                          child: const Text(
                            'Primary',
                          ),
                          color: GFColor.primary,
                        ),
                        GFButton(
                          onPressed: () {},
                          child: const Text(
                            'Secondary',
                          ),
                          color: GFColor.secondary,
                          buttonBoxShadow: true,
                        ),
                        GFButton(
                          onPressed: () {},
                          child: const Text(
                            'Success',
                          ),
                          buttonBoxShadow: true,
                          color: GFColor.success,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GFButton(
                          onPressed: () {},
                          child: const Text(
                            'Warning',
                          ),
                          buttonBoxShadow: true,
                          color: GFColor.warning,
                        ),
                        GFButton(
                          onPressed: () {},
                          child: const Text(
                            'Danger',
                          ),
                          buttonBoxShadow: true,
                          color: GFColor.danger,
                        ),
                        GFButton(
                          onPressed: () {},
                          child: const Text(
                            'Info',
                          ),
                          buttonBoxShadow: true,
                          color: GFColor.info,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GFButton(
                          onPressed: () {},
                          child: const Text(
                            'Light',
                          ),
                          buttonBoxShadow: true,
                          color: GFColor.light,
                        ),
                        GFButton(
                          onPressed: () {},
                          child: Text(
                            'Dark',
                            style: TextStyle(
                                color: GFColors.getGFColor(GFColor.white)),
                          ),
                          buttonBoxShadow: true,
                          color: GFColor.dark,
                        ),
                        GFButton(
                          onPressed: () {},
                          child: const Text(
                            'Link',
                          ),
                          buttonBoxShadow: false,
                          color: GFColor.transparent,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
              const Padding(
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
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GFButton(
                          onPressed: () {},
                          child: const Text(
                            'Large',
                          ),
                          color: GFColor.primary,
                          size: GFSize.large,
                          buttonBoxShadow: true,
                        ),
                        GFButton(
                          onPressed: () {},
                          child: const Text(
                            'Normal',
                          ),
                          color: GFColor.primary,
                          size: GFSize.medium,
                          buttonBoxShadow: true,
                        ),
                        GFButton(
                          onPressed: () {},
                          child: const Text(
                            'Small',
                          ),
                          color: GFColor.primary,
                          size: GFSize.small,
                          buttonBoxShadow: true,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              const Padding(
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
                    const SizedBox(
                      height: 10,
                    ),
                    GFButton(
                      onPressed: () {},
                      blockButton: true,
                      child: Text('Large',
                          style: TextStyle(
                              color: GFColors.getGFColor(GFColor.white))),
                      color: GFColor.primary,
                      size: GFSize.large,
                      buttonBoxShadow: true,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GFButton(
                      onPressed: () {},
                      blockButton: true,
                      child: Text('Normal',
                          style: TextStyle(
                              color: GFColors.getGFColor(GFColor.white))),
                      color: GFColor.primary,
                      size: GFSize.medium,
                      buttonBoxShadow: true,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GFButton(
                      onPressed: () {},
                      blockButton: true,
                      child: Text('Small',
                          style: TextStyle(
                              color: GFColors.getGFColor(GFColor.white))),
                      color: GFColor.primary,
                      size: GFSize.small,
                      buttonBoxShadow: true,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
