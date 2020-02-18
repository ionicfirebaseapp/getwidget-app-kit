import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:getflutter/getflutter.dart';

class BadgesPage extends StatefulWidget {
  @override
  _BadgesPageState createState() => _BadgesPageState();
}

class _BadgesPageState extends State<BadgesPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              CupertinoIcons.back,
              color: GFColors.SUCCESS,
            ),
          ),
          backgroundColor: GFColors.DARK,
          title: const Text(
            'Badges',
            style: TextStyle(fontSize: 17),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            const Padding(
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
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: GFButtonBadge(
                          icon: const GFBadge(
                            size: GFSize.MEDIUM,
                            text: '6',
                            shape: GFBadgeShape.pills,
                          ),
                          onPressed: () {},
                          text: 'Primary',
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButtonBadge(
                          icon: const GFBadge(
                            text: '6',
                            shape: GFBadgeShape.pills,
                          ),
                          onPressed: () {},
                          text: 'Second',
                          color: GFColors.SECONDARY,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButtonBadge(
                          icon: const GFBadge(
                            text: '6',
                            shape: GFBadgeShape.pills,
                          ),
                          onPressed: () {},
                          text: 'Success',
                          color: GFColors.SUCCESS,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: GFButtonBadge(
                          icon: const GFBadge(
                            text: '6',
                            shape: GFBadgeShape.pills,
                          ),
                          onPressed: () {},
                          text: 'Warning',
                          color: GFColors.WARNING,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButtonBadge(
                          icon: const GFBadge(
                            text: '6',
                            shape: GFBadgeShape.pills,
                          ),
                          onPressed: () {},
                          text: 'Danger',
                          color: GFColors.DANGER,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButtonBadge(
                          icon: const GFBadge(
                            text: '6',
                            shape: GFBadgeShape.pills,
                          ),
                          onPressed: () {},
                          text: 'Info',
                          color: GFColors.INFO,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: GFButtonBadge(
                          icon: const GFBadge(
                            text: '6',
                            shape: GFBadgeShape.pills,
                          ),
                          onPressed: () {},
                          text: 'Light',
                          color: GFColors.LIGHT,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButtonBadge(
                          icon: const GFBadge(
                            text: '6',
                            shape: GFBadgeShape.pills,
                          ),
                          onPressed: () {},
                          text: 'Dark',
                          textStyle: const TextStyle(color: GFColors.WHITE),
                          color: GFColors.DARK,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButtonBadge(
                          icon: const GFBadge(
                            text: '6',
                            shape: GFBadgeShape.pills,
                          ),
                          onPressed: () {},
                          text: 'Link',
                          color: GFColors.TRANSPARENT,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            const Padding(
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
                  const SizedBox(
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
                                color: GFColors.PRIMARY,
                              )),
                          counterChild: const GFBadge(
                            text: '12',
                            shape: GFBadgeShape.circle,
                          )),
                      GFIconBadge(
                          child: GFIconButton(
                              type: GFButtonType.transparent,
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                'lib/assets/icons/secondary.svg',
                                color: GFColors.SECONDARY,
                              )),
                          counterChild: const GFBadge(
                            text: '12',
                            shape: GFBadgeShape.circle,
                          )),
                      GFIconBadge(
                          child: GFIconButton(
                              type: GFButtonType.transparent,
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                'lib/assets/icons/success.svg',
                                color: GFColors.SUCCESS,
                              )),
                          counterChild: const GFBadge(
                            text: '12',
                            shape: GFBadgeShape.circle,
                          )),
                      GFIconBadge(
                          child: GFIconButton(
                              type: GFButtonType.transparent,
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                'lib/assets/icons/warning.svg',
                                color: GFColors.WARNING,
                              )),
                          counterChild: const GFBadge(
                            text: '12',
                            shape: GFBadgeShape.circle,
                          )),
                      GFIconBadge(
                        child: GFIconButton(
                            type: GFButtonType.transparent,
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              'lib/assets/icons/danger.svg',
                              color: GFColors.DANGER,
                            )),
                        counterChild: const GFBadge(
                          text: '12',
                          shape: GFBadgeShape.circle,
                        ),
                      ),
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
                                color: GFColors.INFO,
                              )),
                          counterChild: const GFBadge(
                            text: '12',
                            shape: GFBadgeShape.standard,
                          )),
                      GFIconBadge(
                          child: GFIconButton(
                              type: GFButtonType.transparent,
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                'lib/assets/icons/light.svg',
                                color: GFColors.LIGHT,
                              )),
                          counterChild: const GFBadge(
                            text: '12',
                            shape: GFBadgeShape.square,
                          )),
                      GFIconBadge(
                        child: GFIconButton(
                            type: GFButtonType.transparent,
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              'lib/assets/icons/dark.svg',
                              color: GFColors.DARK,
                            )),
                        counterChild: const GFBadge(
                            text: '124', shape: GFBadgeShape.standard, size: 25),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      );
}
