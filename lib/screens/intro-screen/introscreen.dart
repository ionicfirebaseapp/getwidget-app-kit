import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:gf_app/screens/intro-screen/fullwidth.dart';
import 'package:gf_app/screens/intro-screen/halfwidth.dart';
import 'package:gf_app/screens/intro-screen/rounded.dart';

class Introscreen extends StatefulWidget {
  @override
  _IntroscreenState createState() => _IntroscreenState();
}

class _IntroscreenState extends State<Introscreen>
    with SingleTickerProviderStateMixin {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        backgroundColor: GFColors.DARK,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: Icon(
                CupertinoIcons.back,
                color: GFColors.SUCCESS,
              ),
            )),
        title: const Text(
          'IntroScreen',
          style: TextStyle(fontSize: 17),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 15, top: 30,bottom: 20),
            child: GFTypography(
              text: 'Full Width',
              type: GFTypographyType.typo5,
              dividerWidth: 25,
              dividerColor: Color(0xFF19CA4B),
            ),
          ),
          Container(
             height: 50,
               margin: EdgeInsets.symmetric(horizontal: 80,vertical: 10),
          
            child:GFButton(
                                      onPressed: () {
                                         Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => FullwidthIntro()),
                  );
                                      },
                                      child: const Text('FullWidth Intro'),
                                      color: GFColors.SUCCESS,
                                    ),),
                    const Padding(
            padding: EdgeInsets.only(left: 15, top: 30,bottom: 20),
            child: GFTypography(
              text: 'Half Width',
              type: GFTypographyType.typo5,
              dividerWidth: 25,
              dividerColor: Color(0xFF19CA4B),
            ),
          ),
   Container(
      height: 50,
               margin: EdgeInsets.symmetric(horizontal: 80,vertical: 10),
     child: GFButton(
                                        onPressed: () {
                                           Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => HalfwidthIntro()),
                  );
                                        },
                                        child: const Text('HalfWidth Intro'),
                                        color: GFColors.SUCCESS,
                                      ),
   ),
                    const Padding(
            padding: EdgeInsets.only(left: 15, top: 30,bottom: 20),
            child: GFTypography(
              text: 'Rounded',
              type: GFTypographyType.typo5,
              dividerWidth: 25,
              dividerColor: Color(0xFF19CA4B),
            ),
          ),
             Container(
               height: 50,
               margin: EdgeInsets.symmetric(horizontal: 80,vertical: 10),
               child: GFButton(
                                        onPressed: () {
                                           Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => RoundedIntro()),
                  );
                                        },
                                        child: const Text('Rounded Intro'),
                                        color: GFColors.SUCCESS,
                                        fullWidthButton: false,
                                      ),
             ),
        ],
      ));
}