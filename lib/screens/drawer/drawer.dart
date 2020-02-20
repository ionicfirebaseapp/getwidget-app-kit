import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';
import 'package:getflutter_app/screens/appbar/app_home.dart';
import 'package:getflutter_app/screens/button/icon_buttons.dart';
import 'package:getflutter_app/screens/button/pill_buttons.dart';
import 'package:getflutter_app/screens/button/shadow_buttons.dart';
import 'package:getflutter_app/screens/button/social_buttons.dart';
import 'package:getflutter_app/screens/button/square_buttons.dart';
import 'package:getflutter_app/screens/button/standard_buttons.dart';
import 'package:getflutter_app/screens/drawer/webview.dart';
import 'package:getflutter_app/screens/floating_widget/floating_widget.dart';
import 'package:getflutter_app/screens/loader/loaders.dart';
import 'package:getflutter_app/screens/progress_bar/progress_bar.dart';
import 'package:getflutter_app/screens/rating/rating.dart';
import 'package:getflutter_app/screens/searchbar/seachbar.dart';
import 'package:getflutter_app/screens/tabs/tab_types.dart';
import 'package:getflutter_app/screens/accordian/accordian.dart';
import 'package:getflutter_app/screens/alert/alert.dart';
import 'package:getflutter_app/screens/avatar/avatars.dart';
import 'package:getflutter_app/screens/badges/badges.dart';
import 'package:getflutter_app/screens/cards/cards.dart';
import 'package:getflutter_app/screens/carousel/carousel.dart';
import 'package:getflutter_app/screens/images/images.dart';
import 'package:getflutter_app/screens/tiles/tiles_page.dart';
import 'package:getflutter_app/screens/toast/toasts.dart';
import 'package:getflutter_app/screens/toggle/toggles.dart';
import 'package:getflutter_app/screens/typography/typography.dart';

class DrawerPage extends StatefulWidget {
  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) => GFDrawer(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: const [Color(0xFFD685FF), Color(0xFF7466CC)])),
              height: 250,
              child: GFDrawerHeader(
                closeButton: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    CupertinoIcons.back,
                    color: GFColors.SUCCESS,
                  ),
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: const [Color(0xFFD685FF), Color(0xFF7466CC)],
                  ),
                ),
                otherAccountsPictures: <Widget>[
                  GFAvatar(
                    backgroundColor: Colors.green,
                    child: const Text('G'),
                  ),
                  const GFAvatar(
                    backgroundColor: Colors.black,
                    child: Text('F'),
                  ),
                ],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const GFAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(
                        'lib/assets/images/gflogo.png',
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'GetFlutter',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'info@getflutter.dev',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                left: 10,
              ),
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  GFAccordion(
                      title: 'Components',
                      expandedTitlebackgroundColor: Colors.white,
                      textStyle:
                          const TextStyle(color: Colors.black87, fontSize: 16),
                      contentChild: Padding(
                        padding: const EdgeInsets.all(0),
                        child: Column(children: <Widget>[
                          GFAccordion(
                            margin: const EdgeInsets.all(0),
                            titlePadding: const EdgeInsets.only(
                                left: 7, top: 10, bottom: 10, right: 0),
                            expandedTitlebackgroundColor: Colors.white,
                            child: Row(children: [
                              Icon(
                                const IconData(
                                  0xe904,
                                  fontFamily: 'GFFontIcons',
                                ),
                                color: GFColors.DARK,
                                size: 17,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 9),
                                child: Text(
                                  'Buttons',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                  ),
                                ),
                              )
                            ]),
                            textStyle: const TextStyle(fontSize: 15),
                            contentChild: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(children: <Widget>[
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              StandardButtons()),
                                    );
                                  },
                                  child: GFListTile(
                                    title: Text(
                                      'Standard',
                                      style: TextStyle(
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              PillsButtons()),
                                    );
                                  },
                                  child: GFListTile(
                                    title: Text(
                                      'Pills',
                                      style: TextStyle(
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              SquareButtons()),
                                    );
                                  },
                                  child: GFListTile(
                                    title: Text(
                                      'Square',
                                      style: TextStyle(
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              ShadowButtons()),
                                    );
                                  },
                                  child: GFListTile(
                                    title: Text(
                                      'Shadow',
                                      style: TextStyle(
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              IconButtons()),
                                    );
                                  },
                                  child: GFListTile(
                                    title: Text(
                                      'Icons',
                                      style: TextStyle(
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              SocialButtons()),
                                    );
                                  },
                                  child: GFListTile(
                                    title: Text(
                                      'Social Buttons',
                                      style: TextStyle(
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        BadgesPage()),
                              );
                            },
                            child: GFListTile(
                              title: const Text(
                                'Badge',
                                style: TextStyle(
                                  color: Colors.black87,
                                ),
                              ),
                              avatar: Icon(
                                const IconData(
                                  0xe902,
                                  fontFamily: 'GFFontIcons',
                                ),
                                color: GFColors.DARK,
                                size: 17,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Avatar()),
                              );
                            },
                            child: GFListTile(
                              title: const Text(
                                'Avatar',
                                style: TextStyle(
                                  color: Colors.black87,
                                ),
                              ),
                              avatar: Icon(
                                const IconData(
                                  0xe903,
                                  fontFamily: 'GFFontIcons',
                                ),
                                color: GFColors.DARK,
                                size: 17,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Images()),
                              );
                            },
                            child: GFListTile(
                              title: const Text(
                                'Images',
                                style: TextStyle(
                                  color: Colors.black87,
                                ),
                              ),
                              avatar: Icon(
                                const IconData(
                                  0xe90d,
                                  fontFamily: 'GFFontIcons',
                                ),
                                color: GFColors.DARK,
                                size: 17,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        CardPage()),
                              );
                            },
                            child: GFListTile(
                              title: const Text(
                                'Cards',
                                style: TextStyle(
                                  color: Colors.black87,
                                ),
                              ),
                              avatar: Icon(
                                const IconData(
                                  0xe905,
                                  fontFamily: 'GFFontIcons',
                                ),
                                color: GFColors.DARK,
                                size: 17,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Carousel()),
                              );
                            },
                            child: GFListTile(
                              title: const Text(
                                'Carousels',
                                style: TextStyle(
                                  color: Colors.black87,
                                ),
                              ),
                              avatar: Icon(
                                const IconData(
                                  0xe906,
                                  fontFamily: 'GFFontIcons',
                                ),
                                color: GFColors.DARK,
                                size: 17,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        TilesPage()),
                              );
                            },
                            child: GFListTile(
                              title: const Text(
                                'Tiles',
                                style: TextStyle(
                                  color: Colors.black87,
                                ),
                              ),
                              avatar: Icon(
                                const IconData(
                                  0xe90e,
                                  fontFamily: 'GFFontIcons',
                                ),
                                color: GFColors.DARK,
                                size: 17,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        TabTypes()),
                              );
                            },
                            child: GFListTile(
                              title: const Text(
                                'Tabs',
                                style: TextStyle(
                                  color: Colors.black87,
                                ),
                              ),
                              avatar: Icon(
                                const IconData(
                                  0xe91d,
                                  fontFamily: 'GFFontIcons',
                                ),
                                color: GFColors.DARK,
                                size: 17,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Toggles()),
                              );
                            },
                            child: GFListTile(
                              title: const Text(
                                'Toggle',
                                style: TextStyle(
                                  color: Colors.black87,
                                ),
                              ),
                              avatar: Icon(
                                const IconData(
                                  0xe910,
                                  fontFamily: 'GFFontIcons',
                                ),
                                color: GFColors.DARK,
                                size: 17,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Toasts()),
                              );
                            },
                            child: GFListTile(
                              title: const Text(
                                'Toast',
                                style: TextStyle(
                                  color: Colors.black87,
                                ),
                              ),
                              avatar: Icon(
                                const IconData(
                                  0xe920,
                                  fontFamily: 'GFFontIcons',
                                ),
                                color: GFColors.DARK,
                                size: 17,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        AlertPage()),
                              );
                            },
                            child: GFListTile(
                              title: const Text(
                                'Alert',
                                style: TextStyle(
                                  color: Colors.black87,
                                ),
                              ),
                              avatar: Icon(
                                const IconData(
                                  0xe901,
                                  fontFamily: 'GFFontIcons',
                                ),
                                color: GFColors.DARK,
                                size: 17,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Accordion()),
                              );
                            },
                            child: GFListTile(
                              title: const Text(
                                'Accordion',
                                style: TextStyle(
                                  color: Colors.black87,
                                ),
                              ),
                              avatar: Icon(
                                const IconData(
                                  0xe900,
                                  fontFamily: 'GFFontIcons',
                                ),
                                color: GFColors.DARK,
                                size: 17,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        SearchbarPage()),
                              );
                            },
                            child: GFListTile(
                              title: const Text(
                                'SearchBar',
                                style: TextStyle(
                                  color: Colors.black87,
                                ),
                              ),
                              avatar: Icon(
                                const IconData(
                                  0xe919,
                                  fontFamily: 'GFFontIcons',
                                ),
                                color: GFColors.DARK,
                                size: 17,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        AppHome()),
                              );
                            },
                            child: GFListTile(
                              title: const Text(
                                'Appbar',
                                style: TextStyle(
                                  color: Colors.black87,
                                ),
                              ),
                              avatar: Icon(
                                const IconData(
                                  0xe91e,
                                  fontFamily: 'GFFontIcons',
                                ),
                                color: GFColors.DARK,
                                size: 17,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        TypographyPage()),
                              );
                            },
                            child: GFListTile(
                              title: const Text(
                                'Typography',
                                style: TextStyle(
                                  color: Colors.black87,
                                ),
                              ),
                              avatar: Icon(
                                const IconData(
                                  0xe923,
                                  fontFamily: 'GFFontIcons',
                                ),
                                color: GFColors.DARK,
                                size: 17,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Loaders()),
                              );
                            },
                            child: GFListTile(
                              title: const Text(
                                'Loader',
                                style: TextStyle(
                                  color: Colors.black87,
                                ),
                              ),
                              avatar: Icon(
                                const IconData(
                                  0xe901,
                                  fontFamily: 'GFIcons',
                                ),
                                color: GFColors.DARK,
                                size: 17,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        RatingPage()),
                              );
                            },
                            child: GFListTile(
                              title: const Text(
                                'Rating',
                                style: TextStyle(
                                  color: Colors.black87,
                                ),
                              ),
                              avatar: Icon(
                                const IconData(
                                  0xe901,
                                  fontFamily: 'GFFontIcons2',
                                ),
                                color: GFColors.DARK,
                                size: 17,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        FloatingWidgetHome()),
                              );
                            },
                            child: GFListTile(
                              title: const Text(
                                'Floating Widget',
                                style: TextStyle(
                                  color: Colors.black87,
                                ),
                              ),
                              avatar: Icon(
                                const IconData(
                                  0xe900,
                                  fontFamily: 'GFFontIcons2',
                                ),
                                color: GFColors.DARK,
                                size: 17,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        ProgressBar()),
                              );
                            },
                            child: GFListTile(
                              title: const Text(
                                'Progress Bar',
                                style: TextStyle(
                                  color: Colors.black87,
                                ),
                              ),
                              avatar: Icon(
                                const IconData(
                                  0xe900,
                                  fontFamily: 'GFIcons',
                                ),
                                color: GFColors.DARK,
                                size: 17,
                              ),
                            ),
                          ),
                        ]),
                      )),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => const WebViews(
                              url: 'https://docs.getflutter.dev/'),
                        ),
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(left: 2),
                      child: GFListTile(
                        title: Text('Documents',
                            style:
                                TextStyle(fontSize: 16, color: Colors.black87)),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => const WebViews(
                              url: 'https://www.getflutter.dev/features'),
                        ),
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(left: 2),
                      child: GFListTile(
                        title: Text('Features',
                            style:
                                TextStyle(fontSize: 16, color: Colors.black87)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
