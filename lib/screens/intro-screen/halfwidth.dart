// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:getwidget/components/intro_screen/gf_intro_screen.dart';
// import 'package:getwidget/components/intro_screen/gf_intro_slide.dart';
// import 'package:getwidget/types/gf_intro_type.dart';

// class HalfwidthIntro extends StatefulWidget {
//   HalfwidthIntro({Key key}) : super(key: key);
//   @override
//   _HalfwidthIntroState createState() => _HalfwidthIntroState();
// }

// class _HalfwidthIntroState extends State<HalfwidthIntro> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: GFIntroScreen(
//         slides: slides(),
//         type: GFIntroType.half,
//       ),
//     );
//   }

//   List<Widget> slides() {
//     final List<Widget> list = [];
//     list.add(GFIntroSlide(
//       backgroundColor: Colors.yellow,
//       title: 'First',
//       subTitle: 'sub',
//       imageHeight: 200,
//       imageWidth: 200,
//       image: AssetImage('lib/assets/images/red.png'),
//     ));
//     list.add(GFIntroSlide(
//       backgroundColor: Colors.blue,
//       title: 'Second',
//       imageHeight: 200,
//       imageWidth: 200,
//       image: AssetImage('lib/assets/images/red.png'),
//     ));
//     list.add(GFIntroSlide(
//       backgroundColor: Colors.green,
//       title: 'Third',
//       imageHeight: 200,
//       imageWidth: 200,
//       image: AssetImage('lib/assets/images/red.png'),
//     ));
//     list.add(GFIntroSlide(
//       backgroundColor: Colors.red,
//       title: 'Fourth',
//       imageHeight: 200,
//       imageWidth: 200,
//       image: AssetImage('lib/assets/images/red.png'),
//     ));
//     list.add(GFIntroSlide(
//       backgroundColor: Colors.deepPurple,
//       title: 'Fifth',
//       imageHeight: 200,
//       imageWidth: 200,
//       image: AssetImage('lib/assets/images/red.png'),
//     ));
//     return list;
//   }
// }
