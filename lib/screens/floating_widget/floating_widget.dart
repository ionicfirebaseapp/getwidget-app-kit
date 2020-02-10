import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';
import 'package:flutter/cupertino.dart';
class FloatingWidget extends StatefulWidget {
  @override
  _FloatingWidgetState createState() => _FloatingWidgetState();
}

class _FloatingWidgetState extends State<FloatingWidget> {
  bool showFloatingWidget = false;

  @override
  Widget build(BuildContext context) =>
       Scaffold(
        appBar: AppBar(
          backgroundColor: GFColors.getGFColor(GFColor.dark),
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              CupertinoIcons.back,
              color: GFColors.getGFColor(GFColor.success),
            ),
          ),
          title: const Text(
            'Floating Widget',
            style: TextStyle(fontSize: 17),
          ),
          centerTitle: true,
        ),
         body: GFFloatingWidget(
           verticalPosition: MediaQuery.of(context).size.height* 0.2,
           horizontalPosition: MediaQuery.of(context).size.width* 0.8,
           child: showFloatingWidget?  Column(
             children: const  <Widget>[
               GFIconBadge(

                   child: GFAvatar(
                     size: GFSize.large,
                     backgroundImage:
                     AssetImage('lib/assets/images/avatar5.png'),
                   ),
                   counterChild:  GFBadge(
                     text: '12',
                     shape: GFBadgeShape.circle,
                   )),

             ],
           ):Container(),
           body: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               const Padding(
                 padding: EdgeInsets.only(left: 15, top: 20, bottom: 40),
                 child: GFTypography(
                   text: 'Basic Floating Widget',
                   type: GFTypographyType.typo5,
                   dividerWidth: 25,
                   dividerColor: Color(0xFF19CA4B),
                 ),
               ),
               GFButton(onPressed: (){
                 setState(() {
                   showFloatingWidget =!showFloatingWidget;
                 });
               }, text: 'View Floating Widget',),

             ],
           )
         ),
         

      );
}
