import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:getwidget/getwidget.dart';

class TypographyPage extends StatefulWidget {
  @override
  _TypographyPageState createState() => _TypographyPageState();
}

class _TypographyPageState extends State<TypographyPage> {
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
            'Typography',
            style: TextStyle(fontSize: 17),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 30),
              child: GFTypography(
                text: 'Headings Regular',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),
            GFCard(
              content: Column(
                children: const <Widget>[
                  SizedBox(
                    height: 15,
                  ),
                  GFTypography(
                    text: 'GF Header Typo1',
                    type: GFTypographyType.typo1,
                    showDivider: false,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  GFTypography(
                    text: 'GF Header Typo2',
                    type: GFTypographyType.typo2,
                    showDivider: false,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  GFTypography(
                    text: 'GF Header Typo3',
                    type: GFTypographyType.typo3,
                    showDivider: false,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  GFTypography(
                    text: 'GF Header Typo4',
                    type: GFTypographyType.typo4,
                    showDivider: false,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  GFTypography(
                    text: 'GF Header Typo5',
                    type: GFTypographyType.typo5,
                    showDivider: false,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  GFTypography(
                    text: 'GF Header Typo6',
                    type: GFTypographyType.typo6,
                    showDivider: false,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 15,
              ),
              child: GFTypography(
                text: 'Opacity',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),
            GFCard(
              content: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 15,
                  ),
                  const GFTypography(
                    text: 'GF Header Typo1',
                    type: GFTypographyType.typo1,
                    showDivider: false,
                    textColor: Colors.black87,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GFTypography(
                    text: 'GF Header Typo2',
                    type: GFTypographyType.typo2,
                    showDivider: false,
                    textColor: Colors.black54,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GFTypography(
                    text: 'GF Header Typo3',
                    type: GFTypographyType.typo3,
                    showDivider: false,
                    textColor: Colors.black45,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GFTypography(
                    text: 'GF Header Typo4',
                    type: GFTypographyType.typo4,
                    showDivider: false,
                    textColor: Colors.black38,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const GFTypography(
                      text: 'GF Header Typo5',
                      type: GFTypographyType.typo5,
                      showDivider: false,
                      textColor: Colors.black26),
                  const SizedBox(
                    height: 15,
                  ),
                  GFTypography(
                      text: 'GF Header Typo6',
                      type: GFTypographyType.typo6,
                      showDivider: false,
                      textColor: Colors.black12),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: GFTypography(
                text: 'Custom Heading',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),
            GFCard(
              content: Column(
                children: const <Widget>[
                  SizedBox(
                    height: 15,
                  ),
                  GFTypography(
                    text: 'GF Header Typo2',
                    type: GFTypographyType.typo2,
                    showDivider: false,
                    backgroundImage: AssetImage('lib/assets/images/card3.png'),
                    icon: GFAvatar(
                      backgroundImage:
                          AssetImage('lib/assets/images/avatar6.png'),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  GFTypography(
                    text: 'GF Header Typo3',
                    type: GFTypographyType.typo3,
                    backgroundImage: AssetImage('lib/assets/images/card2.png'),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
