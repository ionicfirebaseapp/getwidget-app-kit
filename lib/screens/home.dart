import 'package:flutter/cupertino.dart';
import 'package:getflutter_app/screens/accordian/accordian.dart';
import 'package:getflutter_app/screens/alert/alert.dart';
import 'package:getflutter_app/screens/button/button-types.dart';
import 'package:getflutter_app/screens/cards/cards.dart';
import 'package:getflutter_app/screens/carousel/carousel.dart';
import 'package:getflutter_app/screens/loader/loaders.dart';
import 'package:getflutter_app/screens/tiles/tilesPage.dart';
import 'package:getflutter_app/screens/toast/toasts.dart';
import 'package:getflutter_app/screens/toggle/toggles.dart';
import 'package:getflutter_app/screens/typography/typography.dart';
import 'package:flutter/material.dart';
import 'package:getflutter/colors/gf_color.dart';
import '../screens/badges/badges.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'images/images.dart';
import 'avatar/avatars.dart';
import 'package:getflutter/getflutter.dart';
import 'appbar/appbar.dart';
import 'appbar/app-home.dart';
import '../screens/tabs/tab-types.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: GFDrawer(
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
//
                      backgroundImage:
                          AssetImage('lib/assets/images/avatar5.png'),
                    ),
                    GFAvatar(
                      backgroundImage:
                          AssetImage('lib/assets/images/avatar7.png'),
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
                          'lib/assets/images/avatar6.png',
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'John Doe',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('John@gmail.com'),
                    ],
                  ),
                ),
//                   color: Colors.red,
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 50,
                ),
                height: MediaQuery.of(context).size.height - 300,
                color: Colors.white,
                child: Column(
//                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GFListTile(
                        avatar: Icon(Icons.notifications),
                        titleText: 'Notifications'),
                    GFListTile(
                        avatar: Icon(Icons.comment), titleText: 'Reviews'),
                    GFListTile(
                        avatar: Icon(Icons.credit_card), titleText: 'Payments'),
                    GFListTile(
                        avatar: Icon(Icons.settings), titleText: 'Settings'),
                  ],
                ),
              ),
              Container(
                height: 50,
                child: GFButton(
                  onPressed: () {},
                  child: Text('Logout',
                      style: TextStyle(
                        fontSize: 20,
                        color: GFColors.getGFColor(GFColor.dark),
                      )),
                  icon: Icon(
                    Icons.power_settings_new,
                    color: GFColors.getGFColor(GFColor.danger),
                  ),
                  fullWidthButton: true,
                  color: GFColor.light,
                ),
              )
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: GFColors.getGFColor(GFColor.dark),
          title: SvgPicture.asset('lib/assets/icons/gflogo.svg'),
          centerTitle: true,
        ),
        body: Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          child: ListView(
            children: <Widget>[
              SizedBox(
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
                        margin: EdgeInsets.only(top: 23),
                        decoration: BoxDecoration(
//                     color:GFColors.getGFColor( GFColor.dark,),
                            color: Color(0xFF333333),
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            boxShadow: [
                              new BoxShadow(
                                  color: Colors.black.withOpacity(0.61),
                                  blurRadius: 8.0,
                                  spreadRadius: 0.0),
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            SizedBox(
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
                  SizedBox(
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
                        margin: EdgeInsets.only(top: 23),
                        decoration: BoxDecoration(
//                     color:GFColors.getGFColor( GFColor.dark,),
                            color: Color(0xFF333333),
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            boxShadow: [
                              new BoxShadow(
                                  color: Colors.black.withOpacity(0.61),
                                  blurRadius: 8.0,
                                  spreadRadius: 0.0),
                            ]),
                        height: 160,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            SizedBox(
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
////                      SvgPicture.asset('lib/assets/icons/buttons.svg', color: GFColors.getGFColor(GFColor.success),),
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
                        margin: EdgeInsets.only(top: 23),
                        decoration: BoxDecoration(
//                     color:GFColors.getGFColor( GFColor.dark,),
                            color: Color(0xFF333333),
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            boxShadow: [
                              new BoxShadow(
                                  color: Colors.black.withOpacity(0.61),
                                  blurRadius: 8.0,
                                  spreadRadius: 0.0),
                            ]),
                        height: 160,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            SizedBox(
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
                  SizedBox(
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
                        margin: EdgeInsets.only(top: 23),
                        decoration: BoxDecoration(
//                     color:GFColors.getGFColor( GFColor.dark,),
                            color: Color(0xFF333333),
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            boxShadow: [
                              new BoxShadow(
                                  color: Colors.black.withOpacity(0.61),
                                  blurRadius: 8.0,
                                  spreadRadius: 0.0),
                            ]),
                        height: 160,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            SizedBox(
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
////                      SvgPicture.asset('lib/assets/icons/buttons.svg', color: GFColors.getGFColor(GFColor.success),),
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
                      margin: EdgeInsets.only(top: 23),
                      decoration: BoxDecoration(
//                     color:GFColors.getGFColor( GFColor.dark,),
                          color: Color(0xFF333333),
                          borderRadius: BorderRadius.all(Radius.circular(7)),
                          boxShadow: [
                            new BoxShadow(
                                color: Colors.black.withOpacity(0.61),
                                blurRadius: 8.0,
                                spreadRadius: 0.0),
                          ]),
                      height: 160,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          SizedBox(
                            height: 10,
                          ),
//                          Image.asset('lib/assets/icons/card.png'),
                          SvgPicture.asset('lib/assets/icons/cards.svg'),
//                      SvgPicture.asset('lib/assets/icons/buttons.svg', color: GFColors.getGFColor(GFColor.success),),
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
                  SizedBox(
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
                        margin: EdgeInsets.only(top: 23),
                        decoration: BoxDecoration(
//                     color:GFColors.getGFColor( GFColor.dark,),
                            color: Color(0xFF333333),
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            boxShadow: [
                              new BoxShadow(
                                  color: Colors.black.withOpacity(0.61),
                                  blurRadius: 8.0,
                                  spreadRadius: 0.0),
                            ]),
                        height: 160,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            SizedBox(
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
////                      SvgPicture.asset('lib/assets/icons/buttons.svg', color: GFColors.getGFColor(GFColor.success),),
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
                        margin: EdgeInsets.only(top: 23),
                        decoration: BoxDecoration(
//                     color:GFColors.getGFColor( GFColor.dark,),
                            color: Color(0xFF333333),
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            boxShadow: [
                              new BoxShadow(
                                  color: Colors.black.withOpacity(0.61),
                                  blurRadius: 8.0,
                                  spreadRadius: 0.0),
                            ]),
                        height: 160,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            SizedBox(
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
                  SizedBox(
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
                      margin: EdgeInsets.only(top: 23),
                      decoration: BoxDecoration(
//                     color:GFColors.getGFColor( GFColor.dark,),
                          color: Color(0xFF333333),
                          borderRadius: BorderRadius.all(Radius.circular(7)),
                          boxShadow: [
                            new BoxShadow(
                                color: Colors.black.withOpacity(0.61),
                                blurRadius: 8.0,
                                spreadRadius: 0.0),
                          ]),
                      height: 160,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          SizedBox(
                            height: 10,
                          ),
//                          Image.asset('lib/assets/icons/tabs.png'),
                          SvgPicture.asset('lib/assets/icons/tabs.svg'),
//                      SvgPicture.asset('lib/assets/icons/buttons.svg', color: GFColors.getGFColor(GFColor.success),),
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
////                      SvgPicture.asset('lib/assets/icons/buttons.svg', color: GFColors.getGFColor(GFColor.success),),
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
////                      SvgPicture.asset('lib/assets/icons/buttons.svg', color: GFColors.getGFColor(GFColor.success),),
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
                        margin: EdgeInsets.only(top: 23),
                        decoration: BoxDecoration(
//                     color:GFColors.getGFColor( GFColor.dark,),
                            color: Color(0xFF333333),
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            boxShadow: [
                              new BoxShadow(
                                  color: Colors.black.withOpacity(0.61),
                                  blurRadius: 8.0,
                                  spreadRadius: 0.0),
                            ]),
                        height: 160,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            SizedBox(
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
                  SizedBox(
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
                      margin: EdgeInsets.only(top: 23),
                      decoration: BoxDecoration(
//                     color:GFColors.getGFColor( GFColor.dark,),
                          color: Color(0xFF333333),
                          borderRadius: BorderRadius.all(Radius.circular(7)),
                          boxShadow: [
                            new BoxShadow(
                                color: Colors.black.withOpacity(0.61),
                                blurRadius: 8.0,
                                spreadRadius: 0.0),
                          ]),
                      height: 160,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          SizedBox(
                            height: 10,
                          ),
//                          Icon(Icons.notifications, color: GFColors.getGFColor(GFColor.success), size: 30,),
                          SvgPicture.asset('lib/assets/icons/toast.svg'),
//                      SvgPicture.asset('lib/assets/icons/buttons.svg', color: GFColors.getGFColor(GFColor.success),),
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
                        margin: EdgeInsets.only(top: 23),
                        decoration: BoxDecoration(
//                     color:GFColors.getGFColor( GFColor.dark,),
                            color: Color(0xFF333333),
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            boxShadow: [
                              new BoxShadow(
                                  color: Colors.black.withOpacity(0.61),
                                  blurRadius: 8.0,
                                  spreadRadius: 0.0),
                            ]),
                        height: 160,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            SizedBox(
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
                  SizedBox(
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
                        margin: EdgeInsets.only(top: 23),
                        decoration: BoxDecoration(
//                     color:GFColors.getGFColor( GFColor.dark,),
                            color: Color(0xFF333333),
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            boxShadow: [
                              new BoxShadow(
                                  color: Colors.black.withOpacity(0.61),
                                  blurRadius: 8.0,
                                  spreadRadius: 0.0),
                            ]),
                        height: 160,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            SizedBox(
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
                              builder: (BuildContext context) =>
                                  TypographyPage()),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 23),
                        decoration: BoxDecoration(
//                     color:GFColors.getGFColor( GFColor.dark,),
                            color: Color(0xFF333333),
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            boxShadow: [
                              new BoxShadow(
                                  color: Colors.black.withOpacity(0.61),
                                  blurRadius: 8.0,
                                  spreadRadius: 0.0),
                            ]),
                        height: 160,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            SizedBox(
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

                  SizedBox(
                    width: 20,
                  ),

                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  AppHome()),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 23),
                        decoration: BoxDecoration(
//                     color:GFColors.getGFColor( GFColor.dark,),
                            color: Color(0xFF333333),
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            boxShadow: [
                              new BoxShadow(
                                  color: Colors.black.withOpacity(0.61),
                                  blurRadius: 8.0,
                                  spreadRadius: 0.0),
                            ]),
                        height: 160,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            SizedBox(
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
              SizedBox(
                height: 20,
              )
            ],
          ),
        ));
  }
}
