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
           verticalPosition: 30,
           horizontalPosition: 280,
//showblurness: showFloatingWidget,
//blurnessColor: Colors.black.withOpacity(0.65),
//child: Text('ki'),
           child: showFloatingWidget?  Column(
             children: const  <Widget>[
               GFIconBadge(

                   child: GFAvatar(
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
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
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
