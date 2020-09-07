import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

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
                          icon: const Icon(
                            IconData(
                              0xe917,
                              fontFamily: 'GFIconFonts',
                            ),
                            color: GFColors.WHITE,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: const Text('Secondary'),
                          icon: const Icon(
                            IconData(
                              0xe91a,
                              fontFamily: 'GFIconFonts',
                            ),
                            color: GFColors.WHITE,
                          ),
                          color: GFColors.SECONDARY,
                        ),
                      ),
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
                          child: const Text('Success'),
                          icon: const Icon(
                            IconData(
                              0xe91c,
                              fontFamily: 'GFIconFonts',
                            ),
                            color: GFColors.WHITE,
                          ),
                          color: GFColors.SUCCESS,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: const Text('Warning'),
                          icon: const Icon(
                            IconData(
                              0xe924,
                              fontFamily: 'GFIconFonts',
                            ),
                            color: GFColors.WHITE,
                          ),
                          color: GFColors.WARNING,
                        ),
                      ),
                      // const SizedBox(
                      //   width: 6,
                      // ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: const Text('Danger'),
                          icon: const Icon(
                            IconData(
                              0xe908,
                              fontFamily: 'GFIconFonts',
                            ),
                            color: GFColors.WHITE,
                          ),
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
                          icon: const Icon(
                            IconData(
                              0xe911,
                              fontFamily: 'GFIconFonts',
                            ),
                            color: GFColors.WHITE,
                          ),
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
                          icon: const Icon(
                            IconData(
                              0xe912,
                              fontFamily: 'GFIconFonts',
                            ),
                            color: GFColors.WHITE,
                          ),
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
                          child: const Text(
                            'Dark',
                            style: TextStyle(color: GFColors.WHITE),
                          ),
                          icon: const Icon(
                            IconData(
                              0xe909,
                              fontFamily: 'GFIconFonts',
                            ),
                            color: GFColors.WHITE,
                          ),
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
                          icon: const Icon(
                            IconData(
                              0xe913,
                              fontFamily: 'GFIconFonts',
                            ),
                            // color: GFColors.WHITE,
                          ),
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
                          icon: const Icon(
                            IconData(
                              0xe917,
                              fontFamily: 'GFIconFonts',
                            ),
                            // color: getGFColor(GFColor.white),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: const Text('Secondary'),
                          icon: const Icon(
                            IconData(
                              0xe91a,
                              fontFamily: 'GFIconFonts',
                            ),
                            // color: getGFColor(GFColor.white),
                          ),
                          color: GFColors.SECONDARY,
                          type: GFButtonType.outline,
                        ),
                      ),
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
                          child: const Text('Success'),
                          icon: const Icon(
                            IconData(
                              0xe91c,
                              fontFamily: 'GFIconFonts',
                            ),
                            // color: getGFColor(GFColor.white),
                          ),
                          color: GFColors.SUCCESS,
                          type: GFButtonType.outline,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: const Text('Warning'),
                          icon: const Icon(
                            IconData(
                              0xe924,
                              fontFamily: 'GFIconFonts',
                            ),
                            // color: getGFColor(GFColor.white),
                          ),
                          color: GFColors.WARNING,
                          type: GFButtonType.outline,
                        ),
                      ),
                      // const SizedBox(
                      //   width: 6,
                      // ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: const Text('Danger'),
                          icon: const Icon(
                            IconData(
                              0xe908,
                              fontFamily: 'GFIconFonts',
                            ),
                            // color: getGFColor(GFColor.white),
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
                          icon: const Icon(
                            IconData(
                              0xe911,
                              fontFamily: 'GFIconFonts',
                            ),
                            // color: getGFColor(GFColor.white),
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
                          icon: const Icon(
                            IconData(
                              0xe912,
                              fontFamily: 'GFIconFonts',
                            ),
                            // color: getGFColor(GFColor.white),
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
                          icon: const Icon(
                            IconData(
                              0xe909,
                              fontFamily: 'GFIconFonts',
                            ),
                            // color: getGFColor(GFColor.white),
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
                          icon: const Icon(
                            IconData(
                              0xe913,
                              fontFamily: 'GFIconFonts',
                            ),
                            // color: getGFColor(GFColor.white),
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
                          icon: const Icon(
                            IconData(
                              0xe917,
                              fontFamily: 'GFIconFonts',
                            ),
                            // color: getGFColor(GFColor.white),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: const Text('Secondary'),
                          icon: const Icon(
                            IconData(
                              0xe91a,
                              fontFamily: 'GFIconFonts',
                            ),
                            // color: getGFColor(GFColor.white),
                          ),
                          color: GFColors.SECONDARY,
                          type: GFButtonType.outline2x,
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
                          child: const Text('Success'),
                          icon: const Icon(
                            IconData(
                              0xe91c,
                              fontFamily: 'GFIconFonts',
                            ),
                            // color: getGFColor(GFColor.white),
                          ),
                          color: GFColors.SUCCESS,
                          type: GFButtonType.outline2x,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: const Text('Warning'),
                          icon: const Icon(
                            IconData(
                              0xe924,
                              fontFamily: 'GFIconFonts',
                            ),
                            // color: getGFColor(GFColor.white),
                          ),
                          color: GFColors.WARNING,
                          type: GFButtonType.outline2x,
                        ),
                      ),
                      // const SizedBox(
                      //   width: 6,
                      // ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: const Text('Danger'),
                          icon: const Icon(
                            IconData(
                              0xe908,
                              fontFamily: 'GFIconFonts',
                            ),
                            // color: getGFColor(GFColor.white),
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
                          icon: const Icon(
                            IconData(
                              0xe911,
                              fontFamily: 'GFIconFonts',
                            ),
                            // color: getGFColor(GFColor.white),
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
                          icon: const Icon(
                            IconData(
                              0xe912,
                              fontFamily: 'GFIconFonts',
                            ),
                            // color: getGFColor(GFColor.white),
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
                          icon: const Icon(
                            IconData(
                              0xe909,
                              fontFamily: 'GFIconFonts',
                            ),
                            // color: getGFColor(GFColor.white),
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
                          icon: const Icon(
                            IconData(
                              0xe913,
                              fontFamily: 'GFIconFonts',
                            ),
                            // color: getGFColor(GFColor.white),
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
                          icon: const Icon(
                            IconData(
                              0xe917,
                              fontFamily: 'GFIconFonts',
                            ),
                            color: GFColors.WHITE,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          shape: GFButtonShape.square,
                          child: const Text('Secondary'),
                          icon: const Icon(
                            IconData(
                              0xe91a,
                              fontFamily: 'GFIconFonts',
                            ),
                            color: GFColors.WHITE,
                          ),
                          color: GFColors.SECONDARY,
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
                          shape: GFButtonShape.square,
                          onPressed: () {},
                          child: const Text('Success'),
                          icon: const Icon(
                            IconData(
                              0xe91c,
                              fontFamily: 'GFIconFonts',
                            ),
                            color: GFColors.WHITE,
                          ),
                          color: GFColors.SUCCESS,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          shape: GFButtonShape.square,
                          child: const Text('Warning'),
                          icon: const Icon(
                            IconData(
                              0xe924,
                              fontFamily: 'GFIconFonts',
                            ),
                            color: GFColors.WHITE,
                          ),
                          color: GFColors.WARNING,
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
                          shape: GFButtonShape.square,
                          child: const Text('Danger'),
                          icon: const Icon(
                            IconData(
                              0xe908,
                              fontFamily: 'GFIconFonts',
                            ),
                            color: GFColors.WHITE,
                          ),
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
                          icon: const Icon(
                            IconData(
                              0xe911,
                              fontFamily: 'GFIconFonts',
                            ),
                            color: GFColors.WHITE,
                          ),
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
                          icon: const Icon(
                            IconData(
                              0xe912,
                              fontFamily: 'GFIconFonts',
                            ),
                            color: GFColors.WHITE,
                          ),
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
                          child: const Text(
                            'Dark',
                            style: TextStyle(color: GFColors.WHITE),
                          ),
                          icon: const Icon(
                            IconData(
                              0xe909,
                              fontFamily: 'GFIconFonts',
                            ),
                            color: GFColors.WHITE,
                          ),
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
                          icon: const Icon(
                            IconData(
                              0xe913,
                              fontFamily: 'GFIconFonts',
                            ),
                            // color: GFColors.WHITE,
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
                          icon: const Icon(
                            IconData(
                              0xe917,
                              fontFamily: 'GFIconFonts',
                            ),
                            color: GFColors.WHITE,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          shape: GFButtonShape.pills,
                          child: const Text('Secondary'),
                          icon: const Icon(
                            IconData(
                              0xe91a,
                              fontFamily: 'GFIconFonts',
                            ),
                            color: GFColors.WHITE,
                          ),
                          color: GFColors.SECONDARY,
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
                          shape: GFButtonShape.pills,
                          onPressed: () {},
                          child: const Text('Success'),
                          icon: const Icon(
                            IconData(
                              0xe91c,
                              fontFamily: 'GFIconFonts',
                            ),
                            color: GFColors.WHITE,
                          ),
                          color: GFColors.SUCCESS,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          shape: GFButtonShape.pills,
                          child: const Text('Warning'),
                          icon: const Icon(
                            IconData(
                              0xe924,
                              fontFamily: 'GFIconFonts',
                            ),
                            color: GFColors.WHITE,
                          ),
                          color: GFColors.WARNING,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
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
                          shape: GFButtonShape.pills,
                          child: const Text('Danger'),
                          icon: const Icon(
                            IconData(
                              0xe908,
                              fontFamily: 'GFIconFonts',
                            ),
                            color: GFColors.WHITE,
                          ),
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
                          icon: const Icon(
                            IconData(
                              0xe911,
                              fontFamily: 'GFIconFonts',
                            ),
                            color: GFColors.WHITE,
                          ),
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
                          icon: const Icon(
                            IconData(
                              0xe912,
                              fontFamily: 'GFIconFonts',
                            ),
                            color: GFColors.WHITE,
                          ),
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
                          child: const Text(
                            'Dark',
                            style: TextStyle(color: GFColors.WHITE),
                          ),
                          icon: const Icon(
                            IconData(
                              0xe909,
                              fontFamily: 'GFIconFonts',
                            ),
                            color: GFColors.WHITE,
                          ),
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
                          icon: const Icon(
                            IconData(
                              0xe913,
                              fontFamily: 'GFIconFonts',
                            ),
                            // color: GFColors.WHITE,
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
                          icon: const Icon(
                            IconData(
                              0xe917,
                              fontFamily: 'GFIconFonts',
                            ),
                            color: GFColors.WHITE,
                          ),
                          buttonBoxShadow: true,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: const Text('Secondary'),
                          icon: const Icon(
                            IconData(
                              0xe91a,
                              fontFamily: 'GFIconFonts',
                            ),
                            color: GFColors.WHITE,
                          ),
                          color: GFColors.SECONDARY,
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
                          child: const Text('Success'),
                          icon: const Icon(
                            IconData(
                              0xe91c,
                              fontFamily: 'GFIconFonts',
                            ),
                            color: GFColors.WHITE,
                          ),
                          color: GFColors.SUCCESS,
                          buttonBoxShadow: true,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: const Text('Warning'),
                          icon: const Icon(
                            IconData(
                              0xe924,
                              fontFamily: 'GFIconFonts',
                            ),
                            color: GFColors.WHITE,
                          ),
                          color: GFColors.WARNING,
                          buttonBoxShadow: true,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
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
                          child: const Text('Danger'),
                          icon: const Icon(
                            IconData(
                              0xe908,
                              fontFamily: 'GFIconFonts',
                            ),
                            color: GFColors.WHITE,
                          ),
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
                          icon: const Icon(
                            IconData(
                              0xe911,
                              fontFamily: 'GFIconFonts',
                            ),
                            color: GFColors.WHITE,
                          ),
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
                          icon: const Icon(
                            IconData(
                              0xe912,
                              fontFamily: 'GFIconFonts',
                            ),
                            color: GFColors.WHITE,
                          ),
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
                          child: const Text(
                            'Dark',
                            style: TextStyle(color: GFColors.WHITE),
                          ),
                          icon: const Icon(
                            IconData(
                              0xe909,
                              fontFamily: 'GFIconFonts',
                            ),
                            color: GFColors.WHITE,
                          ),
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
                          icon: const Icon(
                            IconData(
                              0xe913,
                              fontFamily: 'GFIconFonts',
                            ),
                            // color: GFColors.WHITE,
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
                        child: const Text('Large',
                            style: TextStyle(color: GFColors.WHITE)),
                        color: GFColors.PRIMARY,
                        size: GFSize.LARGE,
                        icon: const Icon(
                          IconData(
                            0xe91a,
                            fontFamily: 'GFIconFonts',
                          ),
                          color: GFColors.WHITE,
                        ),
                      ),
                      GFButton(
                        onPressed: () {},
                        child: const Text('Normal',
                            style: TextStyle(color: GFColors.WHITE)),
                        color: GFColors.PRIMARY,
                        size: GFSize.MEDIUM,
                        icon: const Icon(
                          IconData(
                            0xe91c,
                            fontFamily: 'GFIconFonts',
                          ),
                          color: GFColors.WHITE,
                        ),
                      ),
                      GFButton(
                        onPressed: () {},
                        child: const Text('Small',
                            style: TextStyle(color: GFColors.WHITE)),
                        color: GFColors.PRIMARY,
                        size: GFSize.SMALL,
                        icon: const Icon(
                          IconData(
                            0xe909,
                            fontFamily: 'GFIconFonts',
                          ),
                          color: GFColors.WHITE,
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
                    icon: const Icon(
                      IconData(
                        0xe91a,
                        fontFamily: 'GFIconFonts',
                      ),
                      color: GFColors.WHITE,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GFButton(
                    onPressed: () {},
                    blockButton: true,
                    child: const Text('Normal'),
                    size: GFSize.MEDIUM,
                    icon: const Icon(
                      IconData(
                        0xe91c,
                        fontFamily: 'GFIconFonts',
                      ),
                      color: GFColors.WHITE,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GFButton(
                    onPressed: () {},
                    blockButton: true,
                    child: const Text('Small'),
                    size: GFSize.SMALL,
                    icon: const Icon(
                      IconData(
                        0xe909,
                        fontFamily: 'GFIconFonts',
                      ),
                      color: GFColors.WHITE,
                    ),
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
                          icon: const Icon(
                            IconData(
                              0xe917,
                              fontFamily: 'GFIconFonts',
                            ),
                            // color: getGFColor(GFColor.white),
                          ),
                          onPressed: () {}),
                      GFIconButton(
                          color: GFColors.SECONDARY,
                          icon: const Icon(
                            IconData(
                              0xe91a,
                              fontFamily: 'GFIconFonts',
                            ),
                            // color: getGFColor(GFColor.white),
                          ),
                          onPressed: () {}),
                      GFIconButton(
                          color: GFColors.SUCCESS,
                          icon: const Icon(
                            IconData(
                              0xe91c,
                              fontFamily: 'GFIconFonts',
                            ),
                            // color: getGFColor(GFColor.white),
                          ),
                          onPressed: () {}),
                      GFIconButton(
                          color: GFColors.WARNING,
                          icon: const Icon(
                            IconData(
                              0xe924,
                              fontFamily: 'GFIconFonts',
                            ),
                            // color: getGFColor(GFColor.white),
                          ),
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
                          icon: const Icon(
                            IconData(
                              0xe908,
                              fontFamily: 'GFIconFonts',
                            ),
                            // color: getGFColor(GFColor.white),
                          ),
                          onPressed: () {}),
                      GFIconButton(
                          color: GFColors.INFO,
                          icon: const Icon(
                            IconData(
                              0xe911,
                              fontFamily: 'GFIconFonts',
                            ),
                            // color: getGFColor(GFColor.white),
                          ),
                          onPressed: () {}),
                      GFIconButton(
                          color: GFColors.LIGHT,
                          icon: const Icon(
                            IconData(
                              0xe912,
                              fontFamily: 'GFIconFonts',
                            ),
                            // color: getGFColor(GFColor.white),
                          ),
                          onPressed: () {}),
                      GFIconButton(
                          color: GFColors.DARK,
                          icon: const Icon(
                            IconData(
                              0xe909,
                              fontFamily: 'GFIconFonts',
                            ),
                            // color: getGFColor(GFColor.white),
                          ),
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
