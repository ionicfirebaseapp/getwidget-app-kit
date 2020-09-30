// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:getwidget/components/intro_screen/gf_intro_screen.dart';
// import 'package:getwidget/components/intro_screen/gf_intro_slide.dart';
// import 'package:getwidget/types/gf_intro_type.dart';

// class RoundedIntro extends StatefulWidget {
//   RoundedIntro({Key key}) : super(key: key);
//   @override
//   _RoundedIntroState createState() => _RoundedIntroState();
// }

// class _RoundedIntroState extends State<RoundedIntro> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: GFIntroScreen(
//         slides: slides(),
//         type: GFIntroType.rounded,
//       ),
//     );
//   }

//   List<Widget> slides() {
//     final List<Widget> list = [];
//     list.add(const GFIntroSlide(
//       backgroundColor: Colors.yellow,
//       title: 'First',
//       imageHeight: 200,
//       imageWidth: 200,
//       image: AssetImage('assets/images/5.png'),
//     ));
//     list.add(const GFIntroSlide(
//       backgroundColor: Colors.blue,
//       title: 'Second',
//       imageHeight: 200,
//       imageWidth: 200,
//       image: AssetImage('assets/images/2.png'),
//     ));
//     list.add(const GFIntroSlide(
//       backgroundColor: Colors.green,
//       title: 'Third',
//       imageHeight: 200,
//       imageWidth: 200,
//       image: AssetImage('assets/images/3.png'),
//     ));
//     list.add(const GFIntroSlide(
//       backgroundColor: Colors.red,
//       title: 'Fourth',
//       imageHeight: 200,
//       imageWidth: 200,
//       image: AssetImage('assets/images/4.png'),
//     ));
//     list.add(const GFIntroSlide(
//       backgroundColor: Colors.deepPurple,
//       title: 'Fifth',
//       imageHeight: 200,
//       imageWidth: 200,
//       image: AssetImage('assets/images/5.png'),
//     ));
//     return list;
//   }
// }
