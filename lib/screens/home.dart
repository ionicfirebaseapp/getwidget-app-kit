import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
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
import 'package:getflutter_app/screens/floating_widget/floating_widget.dart';
import 'package:getflutter_app/screens/images/images.dart';
import 'package:getflutter_app/screens/loader/loaders.dart';
import 'package:getflutter_app/screens/rating/rating.dart';
import 'package:getflutter_app/screens/searchbar/seachbar.dart';
import 'package:getflutter_app/screens/tabs/tab_types.dart';
import 'package:getflutter_app/screens/tiles/tiles_page.dart';
import 'package:getflutter_app/screens/toast/toasts.dart';
import 'package:getflutter_app/screens/toggle/toggles.dart';
import 'package:getflutter_app/screens/typography/typography.dart';
import '../screens/progress_bar/progress_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  List gfComponents = [
   {
      'icon': IconData(
        0xe904,
        fontFamily: 'GFFontIcons',
      ),
      'title':'Button',
      'route': ButtonTypes()
    },
   {
      'icon':IconData(
        0xe902,
      fontFamily: 'GFFontIcons',
   ),
      'title':'Badge',
      'route':BadgesPage()
    },
    {
      'icon':IconData(
        0xe905,
      fontFamily: 'GFFontIcons',
    ),
      'title':'Cards',
      'route':CardPage()
    },
    {
      'icon':IconData(
        0xe906,
        fontFamily: 'GFFontIcons',
      ),
      'title':'Carousel',
      'route':Carousel()
    },
    {
      'icon':IconData(
        0xe903,
        fontFamily: 'GFFontIcons',
      ),
      'title':'Avatar',
      'route':Avatar()
    },
    {
      'icon':IconData(
        0xe90d,
        fontFamily: 'GFFontIcons',
      ),
      'title':'Images',
      'route':Images()
    },
    {
      'icon':IconData(
        0xe90e,
        fontFamily: 'GFFontIcons',
      ),
      'title':'Tiles',
      'route':TilesPage()
    },
    {
      'icon':IconData(
        0xe91d,
        fontFamily: 'GFFontIcons',
      ),
      'title':'Tabs',
      'route':TabTypes()
    },
    {
      'icon':IconData(
        0xe910,
        fontFamily: 'GFFontIcons',
      ),
      'title':'Toggle',
      'route':Toggles()
    },
    {
      'icon':IconData(
        0xe920,
        fontFamily: 'GFFontIcons',
      ),
      'title':'Toast',
      'route':Toasts()
    },
    {
      'icon':IconData(
        0xe901,
        fontFamily: 'GFFontIcons',
      ),
      'title':'Alert',
      'route':AlertPage()
    },
    {
      'icon':IconData(
        0xe900,
        fontFamily: 'GFFontIcons',
      ),
      'title':'Accordion',
      'route':Accordion()
    },
    {
      'icon':IconData(
        0xe919,
        fontFamily: 'GFFontIcons',
      ),
      'title':'Search Bar',
      'route':SearchbarPage()
    },
    {
      'icon':IconData(
        0xe91e,
        fontFamily: 'GFFontIcons',
      ),
      'title':'Appbar',
      'route':AppHome()
    },
    {
      'icon':IconData(
        0xe901,
        fontFamily: 'GFFontIcons2',
      ),
      'title':'Rating',
      'route':RatingPage()
    },
    {
      'icon':IconData(
        0xe901,
        fontFamily: 'GFIcons',
      ),
      'title':'Loaders',
      'route':Loaders()
    },
    {
      'icon':IconData(
        0xe923,
        fontFamily: 'GFFontIcons',
      ),
      'title':'Typography',
      'route':TypographyPage()
    },
    {
      'icon':IconData(
        0xe900,
        fontFamily: 'GFFontIcons2',
      ),
      'title':'Floating Widget',
      'route':FloatingWidgetHome()
    }
  ];


  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: DrawerPage(),
        appBar: AppBar(
          backgroundColor: GFColors.DARK,
          title: Image.asset('lib/assets/icons/gflogo.png', width: 150,),
          centerTitle: true,
        ),
body:
ListView(
physics: ScrollPhysics(),
  scrollDirection: Axis.vertical,
  shrinkWrap: true,
  children: <Widget>[
//    SizedBox(
//      height: 20,
//    ),
        Container(
          margin: EdgeInsets.only(left: 15, bottom: 20, top:20, right: 15),
        child:     GridView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemCount: gfComponents.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 20, mainAxisSpacing: 20),
          itemBuilder: (BuildContext context, int index){
            return GestureDetector(
                onTap: (){

                },
                child: buildSquareTile(gfComponents[index]['title'],gfComponents[index]['icon'], gfComponents[index]['route'])
            );
          },
        ),
    ),
    Container(
      height: 160,
      margin: EdgeInsets.only(left: 15, bottom: 20, right: 15),
      child: buildSquareTile('Progress Bar', IconData(
        0xe900,
        fontFamily: 'GFIcons',
      ), ProgressBar()),
    )
  ],
),

      );


  Widget SingleTile(){
    return InkWell(
      onTap: (){},
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF333333),
          borderRadius:
          const BorderRadius.all(Radius.circular(7)),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.61),
                blurRadius: 6,
                spreadRadius: 0),
          ],
        ),
        child: Row(

        ),
      ),
    );
  }

  Widget buildSquareTile(title, icon, route){

//    IconData icon;
   print(icon);

    return InkWell(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => route),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF333333),
          borderRadius:
          const BorderRadius.all(Radius.circular(7)),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.61),
                blurRadius: 6,
                spreadRadius: 0),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
Icon(icon, color: GFColors.SUCCESS, size: 30,),
//            Icon((icon),),
            Text(title, style: TextStyle(color: GFColors.WHITE, fontSize: 20),)
          ],
        ),
      ),
    );
  }
}


