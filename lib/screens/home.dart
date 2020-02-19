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

  List names= [
    {

      'images':'lib/assets/icons/gflogo.svg',

    }
  ];

  List gfComponents = [
   {
      'img': 'lib/assets/icons/buttons.svg',
      'title':'Button',
      'route': ButtonTypes()
    },
   {
      'img':'lib/assets/icons/badges.svg',
      'title':'Badge',
      'route':BadgesPage()
    },
    {
      'img':'lib/assets/icons/cards.svg',
      'title':'Cards',
      'route':CardPage()
    },
    {
      'img':'lib/assets/icons/carousels.svg',
      'title':'Carousel',
      'route':Carousel()
    },
    {
      'img':'lib/assets/icons/avatars.svg',
      'title':'Avatar',
      'route':Avatar()
    },
    {
      'img':'lib/assets/icons/images.svg',
      'title':'Images',
      'route':Images()
    },
    {
      'img':'lib/assets/icons/tiles.svg',
      'title':'Tiles',
      'route':TilesPage()
    },
    {
      'img':'lib/assets/icons/tabs.svg',
      'title':'Tabs',
      'route':TabTypes()
    },
    {
      'img':'lib/assets/icons/toggle.svg',
      'title':'Toggle',
      'route':Toggles()
    },
    {
      'img':'lib/assets/icons/toast.svg',
      'title':'Toast',
      'route':Toasts()
    },
    {
      'img':'lib/assets/icons/alert.svg',
      'title':'Alert',
      'route':AlertPage()
    },
    {
      'img':'lib/assets/icons/accordion.svg',
      'title':'Accordion',
      'route':Accordion()
    },
    {
      'img':'lib/assets/icons/search-bar.svg',
      'title':'Search Bar',
      'route':SearchbarPage()
    },
    {
      'img':'lib/assets/icons/appbar.svg',
      'title':'Appbar',
      'route':AppHome()
    },
    {
      'img':'lib/assets/icons/rating.svg',
      'title':'Rating',
      'route':RatingPage()
    },
    {
      'img':'lib/assets/icons/loader.svg',
      'title':'Loaders',
      'route':Loaders()
    }
  ];


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
                            const Text(
                              'Buttons',
                              style: TextStyle(
                                  fontSize: 20, color: GFColors.WHITE),
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
                            const Text(
                              'Badges',
                              style: TextStyle(
                                  fontSize: 20, color: GFColors.WHITE),
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
                            const Text(
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
                            const Text(
                              'Images',
                              style: TextStyle(
                                  fontSize: 20, color: GFColors.WHITE),
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
                            const Text(
                              'Cards',
                              style: TextStyle(
                                  fontSize: 20, color: GFColors.WHITE),
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
                            const Text(
                              'Carousels',
                              style: TextStyle(
                                  fontSize: 20, color: GFColors.WHITE),
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
                            const Text(
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
                          const Text(
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
                            SvgPicture.asset('lib/assets/icons/toggle.svg'),
                            const Text(
                              'Toggle',
                              style: TextStyle(
                                  fontSize: 20, color: GFColors.WHITE),
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
                            SvgPicture.asset('lib/assets/icons/toast.svg'),
                            const Text(
                              'Toast',
                              style: TextStyle(
                                  fontSize: 20, color: GFColors.WHITE),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
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
                            const Text(
                              'Alert',
                              style: TextStyle(
                                  fontSize: 20, color: GFColors.WHITE),
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
                            SvgPicture.asset('lib/assets/icons/accordion.svg'),
                            const Text(
                              'Accordion',
                              style: TextStyle(
                                  fontSize: 20, color: GFColors.WHITE),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
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
                                  SearchbarPage()),
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
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            const SizedBox(
                              height: 10,
                            ),
                            SvgPicture.asset('lib/assets/icons/search-bar.svg'),
                            const Text(
                              'Searchbar',
                              style: TextStyle(
                                  fontSize: 20, color: GFColors.WHITE),
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
                            SvgPicture.asset('lib/assets/icons/appbar.svg'),
                            const Text(
                              'Appbar',
                              style: TextStyle(
                                  fontSize: 20, color: GFColors.WHITE),
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
                            const SizedBox(height: 10),
                            SvgPicture.asset('lib/assets/icons/rating.svg'),
                            const Text(
                              'Rating',
                              style: TextStyle(
                                  fontSize: 20, color: GFColors.WHITE),
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
                            SvgPicture.asset('lib/assets/icons/loader.svg'),
                            const Text(
                              'Loaders',
                              style: TextStyle(
                                  fontSize: 20, color: GFColors.WHITE),
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
                                  TypographyPage()),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
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
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            const SizedBox(
                              height: 10,
                            ),
                            SvgPicture.asset('lib/assets/icons/typography.svg'),
                            const Text(
                              'Typography',
                              style: TextStyle(
                                  fontSize: 20, color: GFColors.WHITE),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  FloatingWidgetHome()),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
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
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            const SizedBox(
                              height: 10,
                            ),
                            SvgPicture.asset(
                                'lib/assets/icons/floating_widget.svg'),
                            const Text(
                              'Floating Widget',
                              style: TextStyle(
                                  fontSize: 20, color: GFColors.WHITE),
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
                              builder: (BuildContext context) => ProgressBar()),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
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
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            const SizedBox(
                              height: 10,
                            ),
                            SvgPicture.asset(
                                'lib/assets/icons/progress-bar.svg'),
                            const Text(
                              'Progress Bar',
                              style: TextStyle(
                                  fontSize: 20, color: GFColors.WHITE),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

//            Container(
////              padding: EdgeInsets.only(top:120),
////              color: Colors.red,
//              height: MediaQuery.of(context).size.height,
//              child:  GridView.count(
//                shrinkWrap: true,
//                scrollDirection: Axis.vertical,
//                crossAxisCount: 2,
//                mainAxisSpacing: 10,
//                crossAxisSpacing: 10,
//                children: <Widget>[
////                  buildSquareTile(title, img, route)
////                  buildSquareTile([gfComponents,{}][]),
////                  buildSquareTile('Badges', Icons.android,  GFColors.SUCCESS, route:BadgesPage()),
////                  buildSquareTile('Avatar', Icons.card_giftcard,  GFColors.SUCCESS, route: Avatar() ),
////                  buildSquareTile('Images', Icons.view_carousel,  GFColors.SUCCESS, route: Images()),
////                  buildSquareTile('Cards', Icons.card_giftcard,  GFColors.SUCCESS, route: CardPage()),
////                  buildSquareTile('Carousel', Icons.view_carousel,  GFColors.SUCCESS, route: Carousel()),
////                  buildSquareTile('Tabs', Icons.tab,  GFColors.SUCCESS, route: TabTypes()),
////                  buildSquareTile('Tile', Icons.title,  GFColors.SUCCESS, route: TilesPage()),
////                  buildSquareTile('Toggle', Icons.card_giftcard,  GFColors.SUCCESS, route: Toggles()),
////                  buildSquareTile('Toast', Icons.view_carousel,  GFColors.SUCCESS, route: Toasts()),
////                  buildSquareTile('Alert', Icons.card_giftcard,  GFColors.SUCCESS, route: AlertPage()),
////                  buildSquareTile('Accordion', Icons.view_carousel,  GFColors.SUCCESS, route: Accordion()),
////                  buildSquareTile('SearchBar', Icons.card_giftcard,  GFColors.SUCCESS, route: SearchbarPage()),
////                  buildSquareTile('Appbar', Icons.view_carousel,  GFColors.SUCCESS, route: AppHome()),
////                  buildSquareTile('Rating', Icons.card_giftcard,  GFColors.SUCCESS, route: RatingPage()),
////                  buildSquareTile('Loaders', Icons.view_carousel,  GFColors.SUCCESS, route: Loaders()),
////                  buildSquareTile('Typography', Icons.card_giftcard,  GFColors.SUCCESS, route: TypographyPage()),
////                  buildSquareTile('Floating Widget', Icons.view_carousel,  GFColors.SUCCESS, route: FloatingWidgetHome()),
////                  buildSquareTile('Progress Bar', Icons.view_carousel,  GFColors.SUCCESS, route: ProgressBar()),
//                ],
//              ),
//            ),
          Container
            (
            height: MediaQuery.of(context).size.height,
            child:   GridView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: gfComponents.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 20, mainAxisSpacing: 20),
              itemBuilder: (BuildContext context, int index){
                return GestureDetector(
                    onTap: (){

                    },
                    child: buildSquareTile(gfComponents[index]['title'],gfComponents[index]['img'], gfComponents[index]['route'])
                );
              },
            ),
          )


            ],
          ),


        ),
      );

  Widget buildSquareTile(title, img, route){



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
         SvgPicture.asset(img),
            Text(title, style: TextStyle(color: GFColors.WHITE, fontSize: 20),)
          ],
        ),
      ),
    );
  }
}


