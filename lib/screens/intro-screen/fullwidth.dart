import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/intro_screen/gf__intro_bottom_navigation.dart';
import 'package:getwidget/components/intro_screen/gf_intro_screen.dart';
import 'package:getwidget/components/intro_screen/gf_intro_slide.dart';
import 'package:getwidget/types/gf_intro_type.dart';

class FullwidthIntro extends StatefulWidget {
  FullwidthIntro({Key key}) : super(key: key);
  @override
  _FullwidthIntroState createState() => _FullwidthIntroState();
}

class _FullwidthIntroState extends State<FullwidthIntro> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GFIntroScreen(
        slides: slides(),
        type: GFIntroType.fullWidth,
        // gfIntroBottomNavigation: GFIntroBottomNavigation(

        // ),
      ),
    );
  }

  List<Widget> slides() {
    final List<Widget> list = [];
    list.add(GFIntroSlide(
      backgroundColor: Colors.yellow,
      title: 'First',
      subTitle: 'first slide',
      imageHeight: 200,
      imageWidth: 200,
      image: AssetImage('lib/assets/images/red.png'),
    ));
    list.add(GFIntroSlide(
      backgroundColor: Colors.blue,
      title: 'Second',
      imageHeight: 200,
      imageWidth: 200,
      image: AssetImage('lib/assets/images/red.png'),
    ));
    list.add(GFIntroSlide(
      backgroundColor: Colors.green,
      title: 'Third',
      imageHeight: 200,
      imageWidth: 200,
      image: AssetImage('lib/assets/images/red.png'),
    ));
    list.add(GFIntroSlide(
      backgroundColor: Colors.red,
      title: 'Fourth',
      imageHeight: 200,
      imageWidth: 200,
      image: AssetImage('lib/assets/images/red.png'),
    ));
    list.add(GFIntroSlide(
      backgroundColor: Colors.green,
      title: 'Fifth',
      imageHeight: MediaQuery.of(context).size.height - 199,
      imageWidth: MediaQuery.of(context).size.width,
      image: AssetImage('lib/assets/images/red.png'),
    ));
    return list;
  }
}
