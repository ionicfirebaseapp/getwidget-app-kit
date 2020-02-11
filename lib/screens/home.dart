import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getflutter/getflutter.dart';
import 'accordian/accordian.dart';
import 'alert/alert.dart';
import 'appbar/app_home.dart';
import 'avatar/avatars.dart';
import 'badges/badges.dart';
import 'button/button_types.dart';
import 'cards/cards.dart';
import 'carousel/carousel.dart';
import 'drawer/drawer.dart';
import 'floating_widget/floating_widget.dart';
import 'images/images.dart';
import 'loader/loaders.dart';
import 'progress_indicator/progress_indicator.dart';
import 'rating/rating.dart';
import 'searchbar/seachbar.dart';
import 'tabs/tab_types.dart';
import 'tiles/tiles_page.dart';
import 'toast/toasts.dart';
import 'toggle/toggles.dart';
import 'typography/typography.dart';




class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
      drawer: DrawerPage(),
      appBar: AppBar(
        backgroundColor: GFColors.getGFColor(GFColor.dark),
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
//                     color:GFColors.getGFColor( GFColor.dark,),
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
                          const SizedBox(
                            height: 10,
                          ),
//                            Image.asset('lib/assets/icons/buttons.png'),
                          SvgPicture.asset('lib/assets/icons/buttons.svg'),
                          Text(
                            'Buttons',
                            style: TextStyle(
                                fontSize: 20,
                                color: GFColors.getGFColor(
                                  GFColor.white,
                                )),
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
                            builder: (BuildContext context) => BadgesPage()),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 23),
                      decoration: BoxDecoration(
//                     color:GFColors.getGFColor( GFColor.dark,),
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
//                            Image.asset('lib/assets/icons/badge.png'),
                          SvgPicture.asset('lib/assets/icons/badges.svg'),
                          Text(
                            'Badges',
                            style: TextStyle(
                                fontSize: 20,
                                color: GFColors.getGFColor(
                                  GFColor.white,
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
//                  Expanded(
//                      child: GestureDetector(
//                    onTap: () {
//                      Navigator.push(
//                        context,
//                        MaterialPageRoute(
//                            builder: (BuildContext context) => CardPage()),
//                      );
//                    },
//                    child: Container(
//                      margin: EdgeInsets.only(top: 23),
//                      decoration: BoxDecoration(
////                     color:GFColors.getGFColor( GFColor.dark,),
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
//                          SizedBox(
//                            height: 10,
//                          ),
//                          Image.asset('lib/assets/icons/card.png'),
//////                      SvgPicture.asset('lib/assets/icons/buttons.svg', color: GFColors.getGFColor(GFColor.success),),
//                          Text(
//                            'Cards',
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
//                     color:GFColors.getGFColor( GFColor.dark,),
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
//                            Image.asset('lib/assets/icons/avatar.png'),
                          SvgPicture.asset('lib/assets/icons/avatars.svg'),
                          Text(
                            'Avatar',
                            style: TextStyle(
                                fontSize: 20,
                                color: GFColors.getGFColor(
                                  GFColor.white,
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
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
////                     color:GFColors.getGFColor( GFColor.dark,),
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
//                            Image.asset('lib/assets/icons/chips.png'),
//                            Text(
//                              'Chips',
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
                const SizedBox(
                  width: 23,
                ),
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
//                     color:GFColors.getGFColor( GFColor.dark,),
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
//                            Image.asset('lib/assets/icons/images.png'),
                          SvgPicture.asset('lib/assets/icons/images.svg'),
                          Text(
                            'Images',
                            style: TextStyle(
                                fontSize: 20,
                                color: GFColors.getGFColor(
                                  GFColor.white,
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
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
////                     color:GFColors.getGFColor( GFColor.dark,),
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
//                          SizedBox(
//                            height: 10,
//                          ),
//                          Image.asset('lib/assets/icons/items.png'),
//////                      SvgPicture.asset('lib/assets/icons/buttons.svg', color: GFColors.getGFColor(GFColor.success),),
//                          Text(
//                            'Items',
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
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
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
////                     color:GFColors.getGFColor( GFColor.dark,),
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
//                            Image.asset('lib/assets/icons/lists.png'),
//                            Text(
//                              'Lists',
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
//                     color:GFColors.getGFColor( GFColor.dark,),
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
//                          Image.asset('lib/assets/icons/card.png'),
                        SvgPicture.asset('lib/assets/icons/cards.svg'),
////                      SvgPicture.asset('lib/assets/icons/buttons.svg', color: GFColors.getGFColor(GFColor.success),),
                        Text(
                          'Cards',
                          style: TextStyle(
                              fontSize: 20,
                              color: GFColors.getGFColor(
                                GFColor.white,
                              )),
                        )
                      ],
                    ),
                  ),
                )),
                const SizedBox(
                  width: 23,
                ),

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
//                     color:GFColors.getGFColor( GFColor.dark,),
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
//                            Image.asset('lib/assets/icons/slider.png'),
                          SvgPicture.asset('lib/assets/icons/carousels.svg'),
                          Text(
                            'Carousels',
                            style: TextStyle(
                                fontSize: 20,
                                color: GFColors.getGFColor(
                                  GFColor.white,
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
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
////                     color:GFColors.getGFColor( GFColor.dark,),
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
//                          SizedBox(
//                            height: 10,
//                          ),
//                          Image.asset('lib/assets/icons/menu.png'),
//////                      SvgPicture.asset('lib/assets/icons/buttons.svg', color: GFColors.getGFColor(GFColor.success),),
//                          Text(
//                            'Menu',
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
//                     color:GFColors.getGFColor( GFColor.dark,),
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
//                            Image.asset('lib/assets/icons/menu.png'),
                          SvgPicture.asset('lib/assets/icons/tiles.svg'),
                          Text(
                            'Tiles',
                            style: TextStyle(
                                fontSize: 20,
                                color: GFColors.getGFColor(
                                  GFColor.white,
                                )),
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
                          builder: (BuildContext context) => TabTypes()),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 23),
                    decoration: BoxDecoration(
//                     color:GFColors.getGFColor( GFColor.dark,),
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
//                          Image.asset('lib/assets/icons/tabs.png'),
                        SvgPicture.asset('lib/assets/icons/tabs.svg'),
////                      SvgPicture.asset('lib/assets/icons/buttons.svg', color: GFColors.getGFColor(GFColor.success),),
                        Text(
                          'Tabs',
                          style: TextStyle(
                              fontSize: 20,
                              color: GFColors.getGFColor(
                                GFColor.white,
                              )),
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
////                     color:GFColors.getGFColor( GFColor.dark,),
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
////                     color:GFColors.getGFColor( GFColor.dark,),
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
//////                      SvgPicture.asset('lib/assets/icons/buttons.svg', color: GFColors.getGFColor(GFColor.success),),
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
////                     color:GFColors.getGFColor( GFColor.dark,),
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
////                     color:GFColors.getGFColor( GFColor.dark,),
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
//////                      SvgPicture.asset('lib/assets/icons/buttons.svg', color: GFColors.getGFColor(GFColor.success),),
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
//                     color:GFColors.getGFColor( GFColor.dark,),
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
//
                          SvgPicture.asset('lib/assets/icons/toggle.svg'),
                          Text(
                            'Toggle',
                            style: TextStyle(
                                fontSize: 20,
                                color: GFColors.getGFColor(
                                  GFColor.white,
                                )),
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
//                     color:GFColors.getGFColor( GFColor.dark,),
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
//                          Icon(Icons.notifications, color: GFColors.getGFColor(GFColor.success), size: 30,),
                        SvgPicture.asset('lib/assets/icons/toast.svg'),
////                      SvgPicture.asset('lib/assets/icons/buttons.svg', color: GFColors.getGFColor(GFColor.success),),
                        Text(
                          'Toast',
                          style: TextStyle(
                              fontSize: 20,
                              color: GFColors.getGFColor(
                                GFColor.white,
                              )),
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
//                     color:GFColors.getGFColor( GFColor.dark,),
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
                            style: TextStyle(
                                fontSize: 20,
                                color: GFColors.getGFColor(
                                  GFColor.white,
                                )),
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
//                     color:GFColors.getGFColor( GFColor.dark,),
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
//                           Icon(Icons.list, color: GFColors.getGFColor(GFColor.success), size: 30,),

                          SvgPicture.asset('lib/assets/icons/accordion.svg'),
                          Text(
                            'Accordion',
                            style: TextStyle(
                                fontSize: 20,
                                color: GFColors.getGFColor(
                                  GFColor.white,
                                )),
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
//                     color:GFColors.getGFColor( GFColor.dark,),
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
                            style: TextStyle(
                                fontSize: 20,
                                color: GFColors.getGFColor(
                                  GFColor.white,
                                )),
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
//                     color:GFColors.getGFColor( GFColor.dark,),
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
                            style: TextStyle(
                                fontSize: 20,
                                color: GFColors.getGFColor(
                                  GFColor.white,
                                )),
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
                            builder: (BuildContext context) =>
                               RatingPage()),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 23),
                      decoration: BoxDecoration(
//                     color:GFColors.getGFColor( GFColor.dark,),
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
//                        Icon(Icons.mobile_screen_share, color: GFColors.getGFColor(GFColor.success), size: 30,),
                          Text(
                            'Rating',
                            style: TextStyle(
                                fontSize: 20,
                                color: GFColors.getGFColor(
                                  GFColor.white,
                                )),
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
//                     color:GFColors.getGFColor( GFColor.dark,),
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
                            style: TextStyle(
                                fontSize: 20,
                                color: GFColors.getGFColor(
                                  GFColor.white,
                                )),
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
////                     color:GFColors.getGFColor( GFColor.dark,),
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
//                     color:GFColors.getGFColor( GFColor.dark,),
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
                            style: TextStyle(
                                fontSize: 20,
                                color: GFColors.getGFColor(
                                  GFColor.white,
                                )),
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
