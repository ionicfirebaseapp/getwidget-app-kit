import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getflutter/components/accordian/gf_accordian.dart';
import 'package:getflutter/getflutter.dart';
import 'package:getflutter_app/screens/button/icon-buttons.dart';
import 'package:getflutter_app/screens/button/pill-buttons.dart';
import 'package:getflutter_app/screens/button/shadow-buttons.dart';
import 'package:getflutter_app/screens/button/social-buttons.dart';
import 'package:getflutter_app/screens/button/square-buttons.dart';
import 'package:getflutter_app/screens/button/standard-buttons.dart';
import 'package:getflutter_app/screens/drawer/webview.dart';
import 'package:getflutter_app/screens/tabs/tab-types.dart';
import '../accordian/accordian.dart';
import '../alert/alert.dart';
import '../avatar/avatars.dart';
import '../badges/badges.dart';
import '../button/button-types.dart';
import '../cards/cards.dart';
import '../carousel/carousel.dart';
import '../images/images.dart';
import '../tiles/tilesPage.dart';
import '../toast/toasts.dart';
import '../toggle/toggles.dart';
import '../typography/typography.dart';

class DrawerPage extends StatefulWidget {
  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return GFDrawer(
      color: Colors.white,
//          colorFilter: new ColorFilter.mode(
//              Colors.black.withOpacity(0.6), BlendMode.darken),
//          backgroundImage: NetworkImage(
//              "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg"),
//          gradient: LinearGradient(
//            begin: Alignment.topRight,
//            end: Alignment.bottomLeft,
//            stops: [0.1, 0.5, 0.7, 0.9],
//            colors: [
//              Colors.teal[800],
//              Colors.teal[600],
//              Colors.teal[400],
//              Colors.teal[200],
//            ],
//          ),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFFD685FF), Color(0xFF7466CC)])),
            height: 250,
            child: GFDrawerHeader(
              closeButton: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  CupertinoIcons.back,
                  color: GFColors.getGFColor(GFColors.SUCCESS),
                ),
              ),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFFD685FF), Color(0xFF7466CC)])),
              otherAccountsPictures: <Widget>[
                GFAvatar(
                  backgroundColor: Colors.green,

                  child: Text("G"),
                  // backgroundImage: AssetImage('lib/assets/images/avatar5.png'),
                ),
                GFAvatar(
                  backgroundColor: Colors.black,

                  child: Text("F"),
                  // backgroundImage: AssetImage('lib/assets/images/avatar7.png'),
                ),

//                        SizedBox(
//                          height: 40,
//                        ),
              ],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  GFAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(
                      'lib/assets/images/gflogo.png',
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'GetFlutter',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'info@getflutter.dev',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
//                   color: Colors.red,
          ),
          Container(
            padding: EdgeInsets.only(
              left: 10,
            ),
            // height: MediaQuery.of(context).size.height - 300,
            color: Colors.white,
            child: Column(
//                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GFAccordion(
                    title: 'Components',
                    expandedTitlebackgroundColor: Colors.white,
                    textStyle: TextStyle(color: Colors.black87, fontSize: 16),
                    contentChild: Padding(
                      padding: const EdgeInsets.all(0),
                      child: Column(children: <Widget>[
                        GFAccordion(
                            margin: EdgeInsets.all(0),
                            titlePadding: EdgeInsets.only(left: 7, top: 10, bottom: 10, right: 0),
                            expandedTitlebackgroundColor: Colors.white,
                            // title: 'Buttons',
                            child: Row(children: [
                              SvgPicture.asset(
                                'lib/assets/icons/buttons.svg',
                                height: 17,
                                width: 17,
                                color: Colors.black87,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 9.0),
                                child: Text(
                                  "Buttons",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.black87,
                                  ),
                                ),
                              )
                            ]),
                            textStyle: TextStyle(fontSize: 15),
                            contentChild: Padding(
                              padding: const EdgeInsets.only(left: 10.0),
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
                                    // avatar: Icon(Icons.format_list_bulleted),
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
                            )),
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
                            title: Text(
                              'Badge',
                              style: TextStyle(
                                color: Colors.black87,
                              ),
                            ),
                            avatar: SvgPicture.asset(
                              'lib/assets/icons/badges.svg',
                              height: 17,
                              width: 17,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => Avatar()),
                            );
                          },
                          child: GFListTile(
                            title: Text(
                              'Avatar',
                              style: TextStyle(
                                color: Colors.black87,
                              ),
                            ),
                            avatar: SvgPicture.asset(
                              'lib/assets/icons/avatars.svg',
                              height: 17,
                              width: 17,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => Images()),
                            );
                          },
                          child: GFListTile(
                            title: Text(
                              'Images',
                              style: TextStyle(
                                color: Colors.black87,
                              ),
                            ),
                            avatar: SvgPicture.asset(
                              'lib/assets/icons/images.svg',
                              height: 17,
                              width: 17,
                              color: Colors.black87,
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
                            title: Text(
                              'Cards',
                              style: TextStyle(
                                color: Colors.black87,
                              ),
                            ),
                            avatar: SvgPicture.asset(
                              'lib/assets/icons/cards.svg',
                              height: 17,
                              width: 17,
                              color: Colors.black87,
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
                            title: Text(
                              'Carousels',
                              style: TextStyle(
                                color: Colors.black87,
                              ),
                            ),
                            avatar: SvgPicture.asset(
                              'lib/assets/icons/carousels.svg',
                              height: 17,
                              width: 17,
                              color: Colors.black87,
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
                            title: Text(
                              'Tiles',
                              style: TextStyle(
                                color: Colors.black87,
                              ),
                            ),
                            avatar: SvgPicture.asset(
                              'lib/assets/icons/tiles.svg',
                              height: 17,
                              width: 17,
                              color: Colors.black87,
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
                            title: Text(
                              'Tabs',
                              style: TextStyle(
                                color: Colors.black87,
                              ),
                            ),
                            avatar: SvgPicture.asset(
                              'lib/assets/icons/tabs.svg',
                              height: 17,
                              width: 17,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => Toggles()),
                            );
                          },
                          child: GFListTile(
                            title: Text(
                              'Toggle',
                              style: TextStyle(
                                color: Colors.black87,
                              ),
                            ),
                            avatar: SvgPicture.asset(
                              'lib/assets/icons/toggle.svg',
                              height: 17,
                              width: 17,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => Toasts()),
                            );
                          },
                          child: GFListTile(
                            title: Text(
                              'Toast',
                              style: TextStyle(
                                color: Colors.black87,
                              ),
                            ),
                            avatar: SvgPicture.asset(
                              'lib/assets/icons/toast.svg',
                              height: 17,
                              width: 17,
                              color: Colors.black87,
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
                            title: Text(
                              'Alert',
                              style: TextStyle(
                                color: Colors.black87,
                              ),
                            ),
                            avatar: SvgPicture.asset(
                              'lib/assets/icons/alert.svg',
                              height: 17,
                              width: 17,
                              color: Colors.black87,
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
                            title: Text(
                              'Accordion',
                              style: TextStyle(
                                color: Colors.black87,
                              ),
                            ),
                            avatar: SvgPicture.asset(
                              'lib/assets/icons/accordion.svg',
                              height: 17,
                              width: 17,
                              color: Colors.black87,
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
                            title: Text(
                              'Typography',
                              style: TextStyle(
                                color: Colors.black87,
                              ),
                            ),
                            avatar: SvgPicture.asset(
                              'lib/assets/icons/typography.svg',
                              height: 17,
                              width: 17,
                              color: Colors.black87,
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
                          builder: (BuildContext context) =>
                              WebView(url: "https://docs.getflutter.dev/")),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 2.0),
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
                          builder: (BuildContext context) => WebView(
                              url: "https://www.getflutter.dev/features")),
                    );
                  },
                  child: Padding(
                      padding: const EdgeInsets.only(left: 2.0),
                      child: GFListTile(
                        title: Text('Features',
                            style:
                                TextStyle(fontSize: 16, color: Colors.black87)),
                      )),
                ),
              ],
            ),
          ),
          // Container(
          //   height: 50,
          //   child: GFButton(
          //     onPressed: () {},
          //     child: Text('Logout',
          //         style: TextStyle(
          //           fontSize: 20,
          //           color: GFColors.getGFColor(GFColor.dark),
          //         )),
          //     icon: Icon(
          //       Icons.power_settings_new,
          //       color: GFColors.getGFColor(GFColor.danger),
          //     ),
          //     fullWidthButton: true,
          //     color: GFColor.light,
          //   ),
          // )
        ],
      ),
    );
  }
}
