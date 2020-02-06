import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:getflutter/getflutter.dart';

class SocialButtons extends StatefulWidget {
  @override
  _SocialButtonsState createState() => _SocialButtonsState();
}

class _SocialButtonsState extends State<SocialButtons> {
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
            'Social Buttons',
            style: TextStyle(fontSize: 17),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 20),
              child: GFTypography(
                text: 'Social Buttons Full',
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
                          buttonBoxShadow: true,
                          color: const Color(0xFF3B5998),
                          onPressed: () {},
                          child: const Text(
                            'FB',
                          ),
                          icon: SvgPicture.asset('lib/assets/icons/fb.svg'),
//                        size: GFSize.small,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButton(
                          onPressed: () {},
                          child: const Text('Twitter'),
                          icon:
                              SvgPicture.asset('lib/assets/icons/twitter.svg'),
                          color: const Color(0xFF00ACEE),
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
                            'Whatsap',
                          ),
                          icon:
                              SvgPicture.asset('lib/assets/icons/whatsapp.svg'),
                          color: const Color(0xFF25D366),
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
                          child: const Text(
                            'Google +',
                          ),
                          icon: SvgPicture.asset('lib/assets/icons/google.svg'),
                          color: const Color(0xFFDD4B39),
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
                            'Dribble',
                          ),
                          icon:
                              SvgPicture.asset('lib/assets/icons/dribble.svg'),
                          color: const Color(0xFFEA4C89),
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
                            'LinkedIn',
                          ),
                          icon:
                              SvgPicture.asset('lib/assets/icons/linkedin.svg'),
                          color: const Color(0xFF0E76A8),
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
                          child: const Text(
                            'Youtube',
                          ),
                          icon:
                              SvgPicture.asset('lib/assets/icons/youtube.svg'),
                          color: const Color(0xFFC4302B),
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
                            'Slack',
                            style: TextStyle(
                                color: GFColors.getGFColor(GFColor.white)),
                          ),
                          icon: SvgPicture.asset('lib/assets/icons/slack.svg'),
                          color: const Color(0XFF2EB67D),
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
                            'Pinterest',
                          ),
                          icon: SvgPicture.asset(
                              'lib/assets/icons/pinterest.svg'),
                          color: const Color(0XFFC8232C),
                          buttonBoxShadow: true,
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
                text: 'Social Buttons Icons',
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
                          color: const Color(0xFF3B5998),
                          icon: SvgPicture.asset('lib/assets/icons/fb.svg'),
                          onPressed: () {}),
                      GFIconButton(
                          color: const Color(0xFF00ACEE),
                          icon:
                              SvgPicture.asset('lib/assets/icons/twitter.svg'),
                          onPressed: () {}),
                      GFIconButton(
                          color: const Color(0xFF25D366),
                          icon:
                              SvgPicture.asset('lib/assets/icons/whatsapp.svg'),
                          onPressed: () {}),
                      GFIconButton(
                          color: const Color(0xFFDD4B39),
                          icon: SvgPicture.asset('lib/assets/icons/google.svg'),
                          onPressed: () {}),
                      GFIconButton(
                          color: const Color(0xFFEA4C89),
                          icon:
                              SvgPicture.asset('lib/assets/icons/dribble.svg'),
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
                          color: const Color(0xFF0E76A8),
                          icon:
                              SvgPicture.asset('lib/assets/icons/linkedin.svg'),
                          onPressed: () {}),
                      GFIconButton(
                          color: const Color(0xFFC4302B),
                          icon:
                              SvgPicture.asset('lib/assets/icons/youtube.svg'),
                          onPressed: () {}),
                      GFIconButton(
                          color: const Color(0XFF2EB67D),
                          icon: SvgPicture.asset('lib/assets/icons/slack.svg'),
                          onPressed: () {}),
                      GFIconButton(
                          color: const Color(0XFFC8232C),
                          icon: SvgPicture.asset(
                              'lib/assets/icons/pinterest.svg'),
                          onPressed: () {}),
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
                text: 'Floating Social Buttons',
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
                          color: const Color(0xFF3B5998),
                          shape: GFIconButtonShape.circle,
                          icon: SvgPicture.asset('lib/assets/icons/fb.svg'),
                          onPressed: () {}),
                      GFIconButton(
                          color: const Color(0xFF00ACEE),
                          shape: GFIconButtonShape.circle,
                          icon:
                              SvgPicture.asset('lib/assets/icons/twitter.svg'),
                          onPressed: () {}),
                      GFIconButton(
                          color: const Color(0xFF25D366),
                          shape: GFIconButtonShape.circle,
                          icon:
                              SvgPicture.asset('lib/assets/icons/whatsapp.svg'),
                          onPressed: () {}),
                      GFIconButton(
                          color: const Color(0xFFDD4B39),
                          shape: GFIconButtonShape.circle,
                          icon: SvgPicture.asset('lib/assets/icons/google.svg'),
                          onPressed: () {}),
                      GFIconButton(
                          color: const Color(0xFFEA4C89),
                          shape: GFIconButtonShape.circle,
                          icon:
                              SvgPicture.asset('lib/assets/icons/dribble.svg'),
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
                          color: const Color(0xFF0E76A8),
                          shape: GFIconButtonShape.circle,
                          icon:
                              SvgPicture.asset('lib/assets/icons/linkedin.svg'),
                          onPressed: () {}),
                      GFIconButton(
                          color: const Color(0xFFC4302B),
                          shape: GFIconButtonShape.circle,
                          icon:
                              SvgPicture.asset('lib/assets/icons/youtube.svg'),
                          onPressed: () {}),
                      GFIconButton(
                          color: const Color(0XFF2EB67D),
                          shape: GFIconButtonShape.circle,
                          icon: SvgPicture.asset('lib/assets/icons/slack.svg'),
                          onPressed: () {}),
                      GFIconButton(
                          color: const Color(0XFFC8232C),
                          shape: GFIconButtonShape.circle,
                          icon: SvgPicture.asset(
                              'lib/assets/icons/pinterest.svg'),
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
