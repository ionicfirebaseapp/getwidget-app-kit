import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getflutter/getflutter.dart';
import 'package:getflutter_app/screens/accordian/accordian.dart';
import 'package:getflutter_app/screens/alert/alert.dart';
import 'package:getflutter_app/screens/appbar/app_home.dart';
import 'package:getflutter_app/screens/avatar/avatars.dart';
import 'package:getflutter_app/screens/badges/badges.dart';
import 'package:getflutter_app/screens/button/button_types.dart';
import 'package:getflutter_app/screens/cards/cards.dart';
import 'package:getflutter_app/screens/carousel/carousel.dart';
import 'package:getflutter_app/screens/drawer/drawer.dart';
import 'package:getflutter_app/screens/images/images.dart';
import 'package:getflutter_app/screens/loader/loaders.dart';
import 'package:getflutter_app/screens/rating/rating.dart';
import 'package:getflutter_app/screens/searchbar/seachbar.dart';
import 'package:getflutter_app/screens/tabs/tab_types.dart';
import 'package:getflutter_app/screens/tiles/tiles_page.dart';
import 'package:getflutter_app/screens/toast/toasts.dart';
import 'package:getflutter_app/screens/toggle/toggles.dart';
import 'package:getflutter_app/screens/typography/typography.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
      drawer: DrawerPage(),
      appBar: AppBar(
        backgroundColor: GFColors.DARK,
        title: SvgPicture.asset('lib/assets/icons/gflogo.svg'),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 15, right: 15),
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => ButtonTypes()),
                      );
                    },
                    child: Container(
                      height: 160,
                      margin: const EdgeInsets.only(top: 23),
                      decoration: BoxDecoration(
                          color: const Color(0xFF333333),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(7)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.61),
                                blurRadius: 8,
                                spreadRadius: 0),
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          const SizedBox(height: 10),
                          SvgPicture.asset('lib/assets/icons/buttons.svg'),
                          Text(
                            'Buttons',
                            style:
                                TextStyle(fontSize: 20, color: GFColors.WHITE),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 23),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => BadgesPage()),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 23),
                      decoration: BoxDecoration(
                          color: const Color(0xFF333333),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(7)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.61),
                                blurRadius: 8,
                                spreadRadius: 0),
                          ]),
                      height: 160,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          const SizedBox(
                            height: 10,
                          ),
                          SvgPicture.asset('lib/assets/icons/badges.svg'),
                          Text(
                            'Badges',
                            style:
                                TextStyle(fontSize: 20, color: GFColors.WHITE),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Avatar()),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 23),
                      decoration: BoxDecoration(
                          color: const Color(0xFF333333),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(7)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.61),
                              blurRadius: 8,
                              spreadRadius: 0,
                            ),
                          ]),
                      height: 160,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          const SizedBox(
                            height: 10,
                          ),
                          SvgPicture.asset('lib/assets/icons/avatars.svg'),
                          Text(
                            'Avatar',
                            style: TextStyle(
                              fontSize: 20,
                              color: GFColors.WHITE,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 23),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Images()),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 23),
                      decoration: BoxDecoration(
                        color: const Color(0xFF333333),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(7)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.61),
                              blurRadius: 8,
                              spreadRadius: 0),
                        ],
                      ),
                      height: 160,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          const SizedBox(height: 10),
                          SvgPicture.asset('lib/assets/icons/images.svg'),
                          Text(
                            'Images',
                            style:
                                TextStyle(fontSize: 20, color: GFColors.WHITE),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => CardPage()),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 23),
                      decoration: BoxDecoration(
                          color: const Color(0xFF333333),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(7)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.61),
                              blurRadius: 8,
                              spreadRadius: 0,
                            ),
                          ]),
                      height: 160,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          const SizedBox(
                            height: 10,
                          ),
                          SvgPicture.asset('lib/assets/icons/cards.svg'),
                          Text(
                            'Cards',
                            style:
                                TextStyle(fontSize: 20, color: GFColors.WHITE),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 23),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Carousel()),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 23),
                      decoration: BoxDecoration(
                          color: const Color(0xFF333333),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(7)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.61),
                              blurRadius: 8,
                              spreadRadius: 0,
                            ),
                          ]),
                      height: 160,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          const SizedBox(
                            height: 10,
                          ),
                          SvgPicture.asset('lib/assets/icons/carousels.svg'),
                          Text(
                            'Carousels',
                            style:
                                TextStyle(fontSize: 20, color: GFColors.WHITE),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => TilesPage()),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 23),
                      decoration: BoxDecoration(
                          color: const Color(0xFF333333),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(7)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.61),
                                blurRadius: 8,
                                spreadRadius: 0),
                          ]),
                      height: 160,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          const SizedBox(height: 10),
                          SvgPicture.asset('lib/assets/icons/tiles.svg'),
                          Text(
                            'Tiles',
                            style: TextStyle(
                              fontSize: 20,
                              color: GFColors.WHITE,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 23),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => TabTypes()),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 23),
                    decoration: BoxDecoration(
                        color: const Color(0xFF333333),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(7)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.61),
                            blurRadius: 8,
                            spreadRadius: 0,
                          ),
                        ]),
                    height: 160,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        const SizedBox(
                          height: 10,
                        ),
                        SvgPicture.asset('lib/assets/icons/tabs.svg'),
                        Text(
                          'Tabs',
                          style: TextStyle(
                            fontSize: 20,
                            color: GFColors.WHITE,
                          ),
                        )
                      ],
                    ),
                  ),
                ))
              ],
            ),
//              Row(
//                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                children: <Widget>[
//                  Expanded(
//                    child: GestureDetector(
//                      onTap: () {
//                        Navigator.push(
//                          context,
//                          MaterialPageRoute(
////                         builder: (BuildContext context) => Buttons()
//                              ),
//                        );
//                      },
//                      child: Container(
//                        margin: EdgeInsets.only(top: 23),
//                        decoration: BoxDecoration(
////                     color:GFColors.getGFColor( GFColors.DARK,),
//                            color: Color(0xFF333333),
//                            borderRadius: BorderRadius.all(Radius.circular(7)),
//                            boxShadow: [
//                              new BoxShadow(
//                                  color: Colors.black.withOpacity(0.61),
//                                  blurRadius: 8.0,
//                                  spreadRadius: 0.0),
//                            ]),
//                        height: 160,
//                        child: Column(
//                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                          children: <Widget>[
//                            SizedBox(
//                              height: 10,
//                            ),
//                            Image.asset('lib/assets/icons/toast.png'),
//                            Text(
//                              'Toasts',
//                              style: TextStyle(
//                                  fontSize: 20,
//                                  color: GFColors.getGFColor(
//                                    GFColor.white,
//                                  )),
//                            )
//                          ],
//                        ),
//                      ),
//                    ),
//                  ),
//                  SizedBox(
//                    width: 23,
//                  ),
//                  Expanded(
//                      child: GestureDetector(
//                    onTap: () {
//                      Navigator.push(
//                        context,
//                        MaterialPageRoute(
////                         builder: (BuildContext context) => Buttons()
//                            ),
//                      );
//                    },
//                    child: Container(
//                      margin: EdgeInsets.only(top: 23),
//                      decoration: BoxDecoration(
////                     color:GFColors.getGFColor( GFColors.DARK,),
//                          color: Color(0xFF333333),
//                          borderRadius: BorderRadius.all(Radius.circular(7)),
//                          boxShadow: [
//                            new BoxShadow(
//                                color: Colors.black.withOpacity(0.61),
//                                blurRadius: 8.0,
//                                spreadRadius: 0.0),
//                          ]),
//                      height: 160,
//                      child: Column(
//                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                        children: <Widget>[
//                          Image.asset('lib/assets/icons/toggle.png'),
//////                      SvgPicture.asset('lib/assets/icons/buttons.svg', color: GFColors.SUCCESS,),
//                          Text(
//                            'Toggle',
//                            style: TextStyle(
//                                fontSize: 20,
//                                color: GFColors.getGFColor(
//                                  GFColor.white,
//                                )),
//                          )
//                        ],
//                      ),
//                    ),
//                  ))
//                ],
//              ),
//              Row(
//                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                children: <Widget>[
//                  Expanded(
//                    child: GestureDetector(
//                      onTap: () {
//                        Navigator.push(
//                          context,
//                          MaterialPageRoute(
//                         builder: (BuildContext context) => Badges()
//                              ),
//                        );
//                      },
//                      child: Container(
//                        margin: EdgeInsets.only(top: 23),
//                        decoration: BoxDecoration(
////                     color:GFColors.getGFColor( GFColors.DARK,),
//                            color: Color(0xFF333333),
//                            borderRadius: BorderRadius.all(Radius.circular(7)),
//                            boxShadow: [
//                              new BoxShadow(
//                                  color: Colors.black.withOpacity(0.61),
//                                  blurRadius: 8.0,
//                                  spreadRadius: 0.0),
//                            ]),
//                        height: 160,
//                        child: Column(
//                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                          children: <Widget>[
//                            SizedBox(
//                              height: 10,
//                            ),
//                            Image.asset('lib/assets/icons/badge.png'),
//                            Text(
//                              'Badges',
//                              style: TextStyle(
//                                  fontSize: 20,
//                                  color: GFColors.getGFColor(
//                                    GFColor.white,
//                                  )),
//                            )
//                          ],
//                        ),
//                      ),
//                    ),
//                  ),
//                  SizedBox(
//                    width: 23,
//                  ),
//                  Expanded(
//                      child: GestureDetector(
//                    onTap: () {
//                      Navigator.push(
//                        context,
//                        MaterialPageRoute(
//                         builder: (BuildContext context) => Avatar()
//                            ),
//                      );
//                    },
//                    child: Container(
//                      margin: EdgeInsets.only(top: 23),
//                      decoration: BoxDecoration(
////                     color:GFColors.getGFColor( GFColors.DARK,),
//                          color: Color(0xFF333333),
//                          borderRadius: BorderRadius.all(Radius.circular(7)),
//                          boxShadow: [
//                            new BoxShadow(
//                                color: Colors.black.withOpacity(0.61),
//                                blurRadius: 8.0,
//                                spreadRadius: 0.0),
//                          ]),
//                      height: 160,
//                      child: Column(
//                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                        children: <Widget>[
//                          Image.asset('lib/assets/icons/avatar.png'),
//////                      SvgPicture.asset('lib/assets/icons/buttons.svg', color: GFColors.SUCCESS,),
//                          Text(
//                            'Avatars',
//                            style: TextStyle(
//                                fontSize: 20,
//                                color: GFColors.getGFColor(
//                                  GFColor.white,
//                                )),
//                          )
//                        ],
//                      ),
//                    ),
//                  ))
//                ],
//              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Toggles()),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 23),
                      decoration: BoxDecoration(
//                     color:GFColors.getGFColor( GFColors.DARK,),
                          color: const Color(0xFF333333),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(7)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.61),
                                blurRadius: 8,
                                spreadRadius: 0),
                          ]),
                      height: 160,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          const SizedBox(height: 10),
//
                          SvgPicture.asset('lib/assets/icons/toggle.svg'),
                          Text(
                            'Toggle',
                            style: TextStyle(
                              fontSize: 20,
                              color: GFColors.WHITE,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 23,
                ),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Toasts()),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 23),
                    decoration: BoxDecoration(
//                     color:GFColors.getGFColor( GFColors.DARK,),
                        color: const Color(0xFF333333),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(7)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.61),
                              blurRadius: 8,
                              spreadRadius: 0),
                        ]),
                    height: 160,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        const SizedBox(
                          height: 10,
                        ),
//                          Icon(Icons.notifications, color: GFColors.SUCCESS, size: 30,),
                        SvgPicture.asset('lib/assets/icons/toast.svg'),
////                      SvgPicture.asset('lib/assets/icons/buttons.svg', color: GFColors.SUCCESS,),
                        Text(
                          'Toast',
                          style: TextStyle(fontSize: 20, color: GFColors.WHITE),
                        )
                      ],
                    ),
                  ),
                ))
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => AlertPage()),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 23),
                      decoration: BoxDecoration(
//                     color:GFColors.getGFColor( GFColors.DARK,),
                          color: const Color(0xFF333333),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(7)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.61),
                                blurRadius: 8,
                                spreadRadius: 0),
                          ]),
                      height: 160,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          const SizedBox(
                            height: 10,
                          ),
                          SvgPicture.asset('lib/assets/icons/alert.svg'),
                          Text(
                            'Alert',
                            style:
                                TextStyle(fontSize: 20, color: GFColors.WHITE),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Accordion()),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 23),
                      decoration: BoxDecoration(
//                     color:GFColors.getGFColor( GFColors.DARK,),
                          color: const Color(0xFF333333),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(7)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.61),
                                blurRadius: 8,
                                spreadRadius: 0),
                          ]),
                      height: 160,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          const SizedBox(
                            height: 10,
                          ),
//                           Icon(Icons.list, color: GFColors.SUCCESS, size: 30,),

                          SvgPicture.asset('lib/assets/icons/accordion.svg'),
                          Text(
                            'Accordion',
                            style:
                                TextStyle(fontSize: 20, color: GFColors.WHITE),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
//              SizedBox(
//                height: 10,
//              ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => SearchbarPage()),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 23),
                      decoration: BoxDecoration(
//                     color:GFColors.getGFColor( GFColors.DARK,),
                          color: const Color(0xFF333333),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(7)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.61),
                                blurRadius: 8,
                                spreadRadius: 0),
                          ]),
                      height: 160,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          const SizedBox(
                            height: 10,
                          ),
//                            Image.asset('lib/assets/icons/menu.png'),
                          SvgPicture.asset('lib/assets/icons/search-bar.svg'),
                          Text(
                            'Searchbar',
                            style:
                                TextStyle(fontSize: 20, color: GFColors.WHITE),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => AppHome()),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 23),
                      decoration: BoxDecoration(
//                     color:GFColors.getGFColor( GFColors.DARK,),
                          color: const Color(0xFF333333),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(7)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.61),
                                blurRadius: 8,
                                spreadRadius: 0),
                          ]),
                      height: 160,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          const SizedBox(
                            height: 10,
                          ),
//                            Image.asset('lib/assets/icons/menu.png'),
                          SvgPicture.asset('lib/assets/icons/appbar.svg'),
                          Text(
                            'Appbar',
                            style:
                                TextStyle(fontSize: 20, color: GFColors.WHITE),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => RatingPage()),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 23),
                      decoration: BoxDecoration(
//                     color:GFColors.getGFColor( GFColors.DARK,),
                          color: const Color(0xFF333333),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(7)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.61),
                                blurRadius: 8,
                                spreadRadius: 0),
                          ]),
                      height: 160,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          const SizedBox(
                            height: 10,
                          ),
//                            Image.asset('lib/assets/icons/menu.png'),
                          SvgPicture.asset('lib/assets/icons/rating.svg'),
//                        Icon(Icons.mobile_screen_share, color: GFColors.SUCCESS, size: 30,),
                          Text(
                            'Rating',
                            style:
                                TextStyle(fontSize: 20, color: GFColors.WHITE),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Loaders()),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 23),
                      decoration: BoxDecoration(
//                     color:GFColors.getGFColor( GFColors.DARK,),
                          color: const Color(0xFF333333),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(7)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.61),
                                blurRadius: 8,
                                spreadRadius: 0),
                          ]),
                      height: 160,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          const SizedBox(
                            height: 10,
                          ),
//                            Image.asset('lib/assets/icons/menu.png'),
                          SvgPicture.asset('lib/assets/icons/loader.svg'),
                          Text(
                            'Loaders',
                            style:
                                TextStyle(fontSize: 20, color: GFColors.WHITE),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
//                Expanded(
//                  child: GestureDetector(
//                    onTap: () {
//                      Navigator.push(
//                        context,
//                        MaterialPageRoute(
//                            builder: (BuildContext context) =>
//                                RatingPage()),
//                      );
//                    },
//                    child: Container(
//                      margin: const EdgeInsets.only(top: 23),
//                      decoration: BoxDecoration(
////                     color:GFColors.getGFColor( GFColors.DARK,),
//                          color: const Color(0xFF333333),
//                          borderRadius:
//                          const BorderRadius.all(Radius.circular(7)),
//                          boxShadow: [
//                            BoxShadow(
//                                color: Colors.black.withOpacity(0.61),
//                                blurRadius: 8,
//                                spreadRadius: 0),
//                          ]),
//                      height: 160,
//                      width: MediaQuery.of(context).size.width,
//                      child: Column(
//                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                        children: <Widget>[
//                          const SizedBox(
//                            height: 10,
//                          ),
////                            Image.asset('lib/assets/icons/menu.png'),
//                          SvgPicture.asset('lib/assets/icons/rating.svg'),
//                          Text(
//                            'Rating',
//                            style: TextStyle(
//                                fontSize: 20,
//                                color: GFColors.getGFColor(
//                                  GFColor.white,
//                                )),
//                          )
//                        ],
//                      ),
//                    ),
//                  ),
//                ),
//                SizedBox(
//                  width: 20,
//                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                TypographyPage()),
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(top: 23),
                      decoration: BoxDecoration(
//                     color:GFColors.getGFColor( GFColors.DARK,),
                          color: const Color(0xFF333333),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(7)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.61),
                                blurRadius: 8,
                                spreadRadius: 0),
                          ]),
                      height: 160,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const SizedBox(
                            height: 10,
                          ),
//                            Image.asset('lib/assets/icons/menu.png'),
                          SvgPicture.asset('lib/assets/icons/typography.svg'),
                          Text(
                            'Typography',
                            style:
                                TextStyle(fontSize: 20, color: GFColors.WHITE),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ));
}
