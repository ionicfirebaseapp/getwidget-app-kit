import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getflutter/colors/gf_color.dart';
import 'package:getflutter/components/badge/gf_badge.dart';
import 'package:getflutter/components/badge/gf_button_badge.dart';
import 'package:getflutter/components/badge/gf_icon_badge.dart';
import 'package:getflutter/components/card/gf_card.dart';
import 'package:getflutter/components/typography/gf_typography.dart';
import 'package:getflutter/components/button/gf_icon_button.dart';
import 'package:getflutter/shape/gf_badge_shape.dart';
import 'package:getflutter/size/gf_size.dart';
import 'package:getflutter/types/gf_typography_type.dart';
import 'package:getflutter/types/gf_button_type.dart';
import 'package:flutter/cupertino.dart';

class BadgesPage extends StatefulWidget {
  @override
  _BadgesPageState createState() => _BadgesPageState();
}

class _BadgesPageState extends State<BadgesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            CupertinoIcons.back,
            color: GFColors.getGFColor(GFColor.success),
          ),
        ),
        backgroundColor: GFColors.getGFColor(GFColor.dark),
        title: Text(
          'Badges',
          style: TextStyle(fontSize: 17),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 15, top: 20),
            child: GFTypography(
              text: 'With Buttons',
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
//                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: GFButtonBadge(
                        icon: GFBadge(
                          size: GFSize.medium,
                          text: '6',
                          shape: GFBadgeShape.pills,
                        ),
                        onPressed: () {},
                        text: 'Primary',
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Expanded(
                      child: GFButtonBadge(
                        icon: GFBadge(
                          text: '6',
                          shape: GFBadgeShape.pills,
                        ),
                        onPressed: () {},
                        text: 'Second',
                        color: GFColor.secondary,
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Expanded(
                      child: GFButtonBadge(
                        icon: GFBadge(
                          text: '6',
                          shape: GFBadgeShape.pills,
                        ),
                        onPressed: () {},
                        text: 'Success',
                        color: GFColor.success,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
//                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: GFButtonBadge(
                        icon: GFBadge(
                          text: '6',
                          shape: GFBadgeShape.pills,
                        ),
                        onPressed: () {},
                        text: 'Warning',
                        color: GFColor.warning,
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Expanded(
                      child: GFButtonBadge(
                        icon: GFBadge(
                          text: '6',
                          shape: GFBadgeShape.pills,
                        ),
                        onPressed: () {},
                        text: 'Danger',
                        color: GFColor.danger,
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Expanded(
                      child: GFButtonBadge(
                        icon: GFBadge(
                          text: '6',
                          shape: GFBadgeShape.pills,
                        ),
                        onPressed: () {},
                        text: 'Info',
                        color: GFColor.info,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: GFButtonBadge(
                        icon: GFBadge(
                          text: '6',
                          shape: GFBadgeShape.pills,
                        ),
                        onPressed: () {},
                        text: 'Light',
                        color: GFColor.light,
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Expanded(
                      child: GFButtonBadge(
                        icon: GFBadge(
                          text: '6',
                          shape: GFBadgeShape.pills,
                        ),
                        onPressed: () {},
                        text: 'Dark',
                        textStyle: TextStyle(
                            color: GFColors.getGFColor(GFColor.white)),
                        color: GFColor.dark,
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Expanded(
                      child: GFButtonBadge(
                        icon: GFBadge(
                          text: '6',
                          shape: GFBadgeShape.pills,
                        ),
                        onPressed: () {},
                        text: 'Link',
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
            padding: EdgeInsets.only(left: 15, top: 20),
            child: GFTypography(
              text: 'Icon with Badges',
              type: GFTypographyType.typo5,
              dividerWidth: 25,
              dividerColor: Color(0xFF19CA4B),
            ),
          ),
          GFCard(
            content: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    GFIconBadge(
                        child: GFIconButton(
                            type: GFButtonType.transparent,
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              'lib/assets/icons/primary.svg',
                              color: GFColors.getGFColor(GFColor.primary),
                            )),
                        counterChild: GFBadge(
                          text: '12',
                          shape: GFBadgeShape.circle,
                        )),
                    GFIconBadge(
                        child: GFIconButton(
                            type: GFButtonType.transparent,
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              'lib/assets/icons/secondary.svg',
                              color: GFColors.getGFColor(GFColor.secondary),
                            )),
                        counterChild: GFBadge(
                          text: '12',
                          shape: GFBadgeShape.circle,
                        )),
                    GFIconBadge(
                        child: GFIconButton(
                            type: GFButtonType.transparent,
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              'lib/assets/icons/success.svg',
                              color: GFColors.getGFColor(GFColor.success),
                            )),
                        counterChild: GFBadge(
                          text: '12',
                          shape: GFBadgeShape.circle,
                        )),
                    GFIconBadge(
                        child: GFIconButton(
                            type: GFButtonType.transparent,
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              'lib/assets/icons/warning.svg',
                              color: GFColors.getGFColor(GFColor.warning),
                            )),
                        counterChild: GFBadge(
                          text: '12',
                          shape: GFBadgeShape.circle,
                        )),
                    GFIconBadge(
                        child: GFIconButton(
                            type: GFButtonType.transparent,
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              'lib/assets/icons/danger.svg',
                              color: GFColors.getGFColor(GFColor.danger),
                            )),
                        counterChild: GFBadge(
                          text: '12',
                          shape: GFBadgeShape.circle,
                        )),
                  ],
                ),
                Row(
                  children: <Widget>[
                    GFIconBadge(
                        child: GFIconButton(
                            type: GFButtonType.transparent,
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              'lib/assets/icons/info.svg',
                              color: GFColors.getGFColor(GFColor.info),
                            )),
                        counterChild: GFBadge(
                          text: '12',
                          shape: GFBadgeShape.standard,
                        )),
                    GFIconBadge(
                        child: GFIconButton(
                            type: GFButtonType.transparent,
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              'lib/assets/icons/light.svg',
                              color: GFColors.getGFColor(GFColor.light),
                            )),
                        counterChild: GFBadge(
                          text: '12',
                          shape: GFBadgeShape.square,
                        )),
                    GFIconBadge(
                        child: GFIconButton(
                            type: GFButtonType.transparent,
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              'lib/assets/icons/dark.svg',
                              color: GFColors.getGFColor(GFColor.dark),
                            )),
                        counterChild: GFBadge(
                            text: '124',
                            shape: GFBadgeShape.pills,
                            size: 25.0)),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
