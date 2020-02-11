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
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: GFColors.DARK,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              CupertinoIcons.back,
              color: GFColors.SUCCESS,
            ),
          ),
          title: const Text(
            'Icon Buttons',
            style: TextStyle(fontSize: 17),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 30),
              child: GFTypography(
                text: 'Solid Icons',
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
                      Expanded(
                        child: GFButton(
                            onPressed: () {},
                            child: const Text('Primary'),
                            icon: SvgPicture.asset(
                                'lib/assets/icons/primary.svg')),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: const Text('Second'),
                          icon: SvgPicture.asset(
                              'lib/assets/icons/secondary.svg'),
                          color: GFColors.SECONDARY,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: const Text('Success'),
                          icon:
                              SvgPicture.asset('lib/assets/icons/success.svg'),
                          color: GFColors.SUCCESS,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: const Text('Warning'),
                          icon:
                              SvgPicture.asset('lib/assets/icons/warning.svg'),
                          color: GFColors.WARNING,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: const Text('Danger'),
                          icon: SvgPicture.asset('lib/assets/icons/danger.svg'),
                          color: GFColors.DANGER,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: const Text('Info'),
                          icon: SvgPicture.asset('lib/assets/icons/info.svg'),
                          color: GFColors.INFO,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: const Text('Light'),
                          icon: SvgPicture.asset('lib/assets/icons/light.svg'),
                          type: GFButtonType.solid,
                          color: GFColors.LIGHT,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: Text(
                            'Dark',
                            style: TextStyle(color: GFColors.WHITE),
                          ),
                          icon: SvgPicture.asset('lib/assets/icons/dark.svg'),
                          color: GFColors.DARK,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: const Text('Link'),
                          icon: SvgPicture.asset('lib/assets/icons/link.svg'),
                          color: GFColors.TRANSPARENT,
                        ),
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
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          type: GFButtonType.outline,
                          child: const Text('Primary'),
                          icon: SvgPicture.asset(
                            'lib/assets/icons/primary.svg',
                            color: GFColors.PRIMARY,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: const Text('Second'),
                          icon: SvgPicture.asset(
                            'lib/assets/icons/secondary.svg',
                            color: GFColors.SECONDARY,
                          ),
                          color: GFColors.SECONDARY,
                          type: GFButtonType.outline,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: const Text('Success'),
                          icon: SvgPicture.asset(
                            'lib/assets/icons/success.svg',
                            color: GFColors.SUCCESS,
                          ),
                          color: GFColors.SUCCESS,
                          type: GFButtonType.outline,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: const Text('Warning'),
                          icon: SvgPicture.asset(
                            'lib/assets/icons/warning.svg',
                            color: GFColors.WARNING,
                          ),
                          color: GFColors.WARNING,
                          type: GFButtonType.outline,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: const Text('Danger'),
                          icon: SvgPicture.asset(
                            'lib/assets/icons/danger.svg',
                            color: GFColors.DANGER,
                          ),
                          color: GFColors.DANGER,
                          type: GFButtonType.outline,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: const Text('Info'),
                          icon: SvgPicture.asset(
                            'lib/assets/icons/info.svg',
                            color: GFColors.INFO,
                          ),
                          color: GFColors.INFO,
                          type: GFButtonType.outline,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: const Text('Light'),
                          icon: SvgPicture.asset(
                            'lib/assets/icons/light.svg',
                            color: GFColors.LIGHT,
                          ),
                          type: GFButtonType.outline,
                          color: GFColors.LIGHT,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: const Text('Dark'),
                          icon: SvgPicture.asset(
                            'lib/assets/icons/dark.svg',
                            color: GFColors.DARK,
                          ),
                          color: GFColors.DARK,
                          type: GFButtonType.outline,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: const Text('Link'),
                          icon: SvgPicture.asset(
                            'lib/assets/icons/link.svg',
                            color: GFColors.ALT,
                          ),
                          color: GFColors.TRANSPARENT,
                          type: GFButtonType.outline,
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
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: GFButton(
                            onPressed: () {},
                            type: GFButtonType.outline2x,
                            child: const Text('Primary'),
                            icon: SvgPicture.asset(
                              'lib/assets/icons/primary.svg',
                              color: GFColors.PRIMARY,
                            )),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: const Text('Second'),
                          icon: SvgPicture.asset(
                            'lib/assets/icons/secondary.svg',
                            color: GFColors.SECONDARY,
                          ),
                          color: GFColors.SECONDARY,
                          type: GFButtonType.outline2x,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: const Text('Success'),
                          icon: SvgPicture.asset(
                            'lib/assets/icons/success.svg',
                            color: GFColors.SUCCESS,
                          ),
                          color: GFColors.SUCCESS,
                          type: GFButtonType.outline2x,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: const Text('Warning'),
                          icon: SvgPicture.asset(
                            'lib/assets/icons/warning.svg',
                            color: GFColors.WARNING,
                          ),
                          color: GFColors.WARNING,
                          type: GFButtonType.outline2x,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: const Text('Danger'),
                          icon: SvgPicture.asset(
                            'lib/assets/icons/danger.svg',
                            color: GFColors.DANGER,
                          ),
                          color: GFColors.DANGER,
                          type: GFButtonType.outline2x,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: const Text('Info'),
                          icon: SvgPicture.asset(
                            'lib/assets/icons/info.svg',
                            color: GFColors.INFO,
                          ),
                          color: GFColors.INFO,
                          type: GFButtonType.outline2x,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: const Text('Light'),
                          icon: SvgPicture.asset(
                            'lib/assets/icons/light.svg',
                            color: GFColors.LIGHT,
                          ),
                          type: GFButtonType.outline2x,
                          color: GFColors.LIGHT,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: const Text('Dark'),
                          icon: SvgPicture.asset(
                            'lib/assets/icons/dark.svg',
                            color: GFColors.DARK,
                          ),
                          color: GFColors.DARK,
                          type: GFButtonType.outline2x,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: const Text('Link'),
                          icon: SvgPicture.asset(
                            'lib/assets/icons/link.svg',
                            color: GFColors.ALT,
                          ),
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
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: GFButton(
                            onPressed: () {},
                            shape: GFButtonShape.square,
                            child: const Text('Primary'),
                            icon: SvgPicture.asset(
                                'lib/assets/icons/primary.svg')),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          shape: GFButtonShape.square,
                          child: const Text('Second'),
                          icon: SvgPicture.asset(
                              'lib/assets/icons/secondary.svg'),
                          color: GFColors.SECONDARY,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          shape: GFButtonShape.square,
                          onPressed: () {},
                          child: const Text('Success'),
                          icon:
                              SvgPicture.asset('lib/assets/icons/success.svg'),
                          color: GFColors.SUCCESS,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          shape: GFButtonShape.square,
                          child: const Text('Warning'),
                          icon:
                              SvgPicture.asset('lib/assets/icons/warning.svg'),
                          color: GFColors.WARNING,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          shape: GFButtonShape.square,
                          child: const Text('Danger'),
                          icon: SvgPicture.asset('lib/assets/icons/danger.svg'),
                          color: GFColors.DANGER,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          shape: GFButtonShape.square,
                          child: const Text('Info'),
                          icon: SvgPicture.asset('lib/assets/icons/info.svg'),
                          color: GFColors.INFO,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          shape: GFButtonShape.square,
                          child: const Text('Light'),
                          icon: SvgPicture.asset('lib/assets/icons/light.svg'),
                          type: GFButtonType.solid,
                          color: GFColors.LIGHT,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          shape: GFButtonShape.square,
                          child: Text(
                            'Dark',
                            style: TextStyle(color: GFColors.WHITE),
                          ),
                          icon: SvgPicture.asset('lib/assets/icons/dark.svg'),
                          color: GFColors.DARK,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          shape: GFButtonShape.square,
                          child: const Text('Link'),
                          icon: SvgPicture.asset('lib/assets/icons/link.svg'),
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
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: GFButton(
                            onPressed: () {},
                            shape: GFButtonShape.pills,
                            child: const Text('Primary'),
                            icon: SvgPicture.asset(
                                'lib/assets/icons/primary.svg')),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          shape: GFButtonShape.pills,
                          child: const Text('Second'),
                          icon: SvgPicture.asset(
                              'lib/assets/icons/secondary.svg'),
                          color: GFColors.SECONDARY,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          shape: GFButtonShape.pills,
                          onPressed: () {},
                          child: const Text('Success'),
                          icon:
                              SvgPicture.asset('lib/assets/icons/success.svg'),
                          color: GFColors.SUCCESS,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          shape: GFButtonShape.pills,
                          child: const Text('Warning'),
                          icon:
                              SvgPicture.asset('lib/assets/icons/warning.svg'),
                          color: GFColors.WARNING,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          shape: GFButtonShape.pills,
                          child: const Text('Danger'),
                          icon: SvgPicture.asset('lib/assets/icons/danger.svg'),
                          color: GFColors.DANGER,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          shape: GFButtonShape.pills,
                          child: const Text('Info'),
                          icon: SvgPicture.asset('lib/assets/icons/info.svg'),
                          color: GFColors.INFO,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          shape: GFButtonShape.pills,
                          child: const Text('Light'),
                          icon: SvgPicture.asset('lib/assets/icons/light.svg'),
                          type: GFButtonType.solid,
                          color: GFColors.LIGHT,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          shape: GFButtonShape.pills,
                          child: Text(
                            'Dark',
                            style: TextStyle(color: GFColors.WHITE),
                          ),
                          icon: SvgPicture.asset('lib/assets/icons/dark.svg'),
                          color: GFColors.DARK,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          shape: GFButtonShape.pills,
                          child: const Text('Link'),
                          icon: SvgPicture.asset('lib/assets/icons/link.svg'),
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
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: const Text('Primary'),
                          icon:
                              SvgPicture.asset('lib/assets/icons/primary.svg'),
                          buttonBoxShadow: true,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: const Text('Second'),
                          icon: SvgPicture.asset(
                              'lib/assets/icons/secondary.svg'),
                          color: GFColors.SECONDARY,
                          buttonBoxShadow: true,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: const Text('Success'),
                          icon:
                              SvgPicture.asset('lib/assets/icons/success.svg'),
                          color: GFColors.SUCCESS,
                          buttonBoxShadow: true,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: const Text('Warning'),
                          icon:
                              SvgPicture.asset('lib/assets/icons/warning.svg'),
                          color: GFColors.WARNING,
                          buttonBoxShadow: true,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: const Text('Danger'),
                          icon: SvgPicture.asset('lib/assets/icons/danger.svg'),
                          color: GFColors.DANGER,
                          buttonBoxShadow: true,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: const Text('Info'),
                          icon: SvgPicture.asset('lib/assets/icons/info.svg'),
                          color: GFColors.INFO,
                          buttonBoxShadow: true,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: const Text(
                            'Light',
                          ),
                          icon: SvgPicture.asset('lib/assets/icons/light.svg'),
                          type: GFButtonType.solid,
                          color: GFColors.LIGHT,
                          buttonBoxShadow: true,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: Text(
                            'Dark',
                            style: TextStyle(color: GFColors.WHITE),
                          ),
                          icon: SvgPicture.asset('lib/assets/icons/dark.svg'),
                          color: GFColors.DARK,
                          buttonBoxShadow: true,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: const Text('Link'),
                          icon: SvgPicture.asset('lib/assets/icons/link.svg'),
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
                        child: Text('Large',
                            style: TextStyle(color: GFColors.WHITE)),
                        color: GFColors.PRIMARY,
                        size: GFSize.LARGE,
                        icon: SvgPicture.asset('lib/assets/icons/primary.svg'),
                      ),
                      GFButton(
                        onPressed: () {},
                        child: Text('Normal',
                            style: TextStyle(color: GFColors.WHITE)),
                        color: GFColors.PRIMARY,
                        size: GFSize.MEDIUM,
                        icon:
                            SvgPicture.asset('lib/assets/icons/secondary.svg'),
                      ),
                      GFButton(
                        onPressed: () {},
                        child: Text('Small',
                            style: TextStyle(color: GFColors.WHITE)),
                        color: GFColors.PRIMARY,
                        size: GFSize.SMALL,
                        icon: SvgPicture.asset('lib/assets/icons/info.svg'),
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
                    child: const Text('Large'),
                    size: GFSize.LARGE,
                    icon: SvgPicture.asset('lib/assets/icons/primary.svg'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GFButton(
                    onPressed: () {},
                    blockButton: true,
                    child: const Text('Normal'),
                    size: GFSize.MEDIUM,
                    icon: SvgPicture.asset('lib/assets/icons/secondary.svg'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GFButton(
                    onPressed: () {},
                    blockButton: true,
                    child: const Text('Small'),
                    size: GFSize.SMALL,
                    icon: SvgPicture.asset('lib/assets/icons/success.svg'),
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
                  const SizedBox(
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
                          color: GFColors.SECONDARY,
                          icon: SvgPicture.asset(
                              'lib/assets/icons/secondary.svg'),
                          onPressed: () {}),
                      GFIconButton(
                          color: GFColors.SUCCESS,
                          icon:
                              SvgPicture.asset('lib/assets/icons/success.svg'),
                          onPressed: () {}),
                      GFIconButton(
                          color: GFColors.WARNING,
                          icon:
                              SvgPicture.asset('lib/assets/icons/warning.svg'),
                          onPressed: () {}),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GFIconButton(
                          color: GFColors.DANGER,
                          icon: SvgPicture.asset('lib/assets/icons/danger.svg'),
                          onPressed: () {}),
                      GFIconButton(
                          color: GFColors.INFO,
                          icon: SvgPicture.asset('lib/assets/icons/info.svg'),
                          onPressed: () {}),
                      GFIconButton(
                          color: GFColors.LIGHT,
                          icon: SvgPicture.asset('lib/assets/icons/light.svg'),
                          onPressed: () {}),
                      GFIconButton(
                          color: GFColors.DARK,
                          icon: SvgPicture.asset('lib/assets/icons/dark.svg'),
                          onPressed: () {}),
                    ],
                  ),
                  const SizedBox(
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
                          color: GFColors.SECONDARY,
                          icon: Icon(Icons.send),
                          onPressed: () {}),
                      GFIconButton(
                          type: GFButtonType.outline,
                          color: GFColors.SUCCESS,
                          icon: Icon(Icons.file_download),
                          onPressed: () {}),
                      GFIconButton(
                          type: GFButtonType.outline,
                          color: GFColors.WARNING,
                          icon: Icon(Icons.warning),
                          onPressed: () {}),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GFIconButton(
                          type: GFButtonType.outline,
                          color: GFColors.DANGER,
                          icon: Icon(Icons.insert_drive_file),
                          onPressed: () {}),
                      GFIconButton(
                          type: GFButtonType.outline,
                          color: GFColors.INFO,
                          icon: Icon(Icons.delete),
                          onPressed: () {}),
                      GFIconButton(
                          type: GFButtonType.outline,
                          color: GFColors.LIGHT,
                          icon: Icon(Icons.info),
                          onPressed: () {}),
                      GFIconButton(
                          type: GFButtonType.outline,
                          color: GFColors.DARK,
                          icon: Icon(Icons.apps),
                          onPressed: () {}),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
