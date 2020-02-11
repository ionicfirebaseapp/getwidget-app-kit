import 'package:flutter/material.dart';
import 'package:getflutter/colors/gf_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:getflutter/getflutter.dart';

class Toasts extends StatefulWidget {



  @override
  _ToastsState createState() => _ToastsState();
}

class _ToastsState extends State<Toasts> {
  bool showFloatingToast = false;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: GFColors.getGFColor(GFColor.dark),
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                child: Icon(
                  CupertinoIcons.back,
                  color: GFColors.getGFColor(GFColor.success),
                ),
              )),
          title: const Text(
            'Toasts',
            style: TextStyle(fontSize: 17),
          ),
          centerTitle: true,
        ),
        body:
       GFFloatingWidget(
         verticalPosition: MediaQuery.of(context).size.width*0.5,
         horizontalPosition: MediaQuery.of(context).size.height*0.02,
         showblurness: showFloatingToast,
         blurnessColor: Colors.black87,
         child: showFloatingToast? GFToast(
           backgroundColor: Colors.white,
           text:
           'You have succesfully viewed how the floating toast works!!',
           textStyle: TextStyle(color: Colors.black87),
           button: GFButton(
             onPressed: () {
              setState(() {
                showFloatingToast = false;
              });
             },
             text: 'OK',
             type: GFButtonType.transparent,
             color: GFColor.success,
           ),
           autoDismiss: false,
         ):Container(),
         body:  ListView(
           physics: ScrollPhysics(),
           children: <Widget>[
             const Padding(
               padding: EdgeInsets.only(left: 15, top: 30, bottom: 10),
               child: GFTypography(
                 text: 'Animated Toasts (Auto Dismissable)',
                 type: GFTypographyType.typo5,
                 dividerWidth: 25,
                 dividerColor: Color(0xFF19CA4B),
               ),
             ),
             GFToast(
               text: 'Auto Dismissable after the given duration !',
               button: GFButton(
                 onPressed: () {},
                 text: 'OK',
                 type: GFButtonType.transparent,
                 color: GFColor.success,
               ),
               autoDismiss: true,
               duration: Duration(seconds: 1),
             ),
             const SizedBox(
               height: 15,
             ),
             const GFToast(
               text: 'Pass true to autoDismiss property to use this effect !',
               autoDismiss: true,
               duration: Duration(seconds: 2),
             ),
             const Padding(
               padding: EdgeInsets.only(left: 15, top: 30, bottom: 10),
               child: GFTypography(
                 text: 'Basic Toasts',
                 type: GFTypographyType.typo5,
                 dividerWidth: 25,
                 dividerColor: Color(0xFF19CA4B),
               ),
             ),
             GFToast(
               text: 'Paired Succesfully !',
               button: GFButton(
                 onPressed: () {},
                 text: 'OK',
                 type: GFButtonType.transparent,
                 color: GFColor.success,
               ),
               autoDismiss: false,
               duration: const Duration(milliseconds: 300),
               alignment: Alignment.topLeft,
             ),
             const SizedBox(
               height: 15,
             ),
             GFToast(
               text:
               'This item already has the label “travel”. You can add a new label. !',
               button: GFButton(
                 onPressed: () {},
                 text: 'OK',
                 type: GFButtonType.transparent,
                 color: GFColor.success,
               ),
               autoDismiss: false,
             ),
             const Padding(
               padding: EdgeInsets.only(left: 15, top: 30, bottom: 10),
               child: GFTypography(
                 text: 'Rounded Toasts',
                 type: GFTypographyType.typo5,
                 dividerWidth: 25,
                 dividerColor: Color(0xFF19CA4B),
               ),
             ),
             GFToast(
               text: 'Paired Succesfully !',
               button: GFButton(
                 onPressed: () {},
                 text: 'OK',
                 type: GFButtonType.transparent,
                 color: GFColor.success,
               ),
               type: GFToastType.rounded,
               autoDismiss: false,
               alignment: Alignment.topLeft,
             ),
             const SizedBox(
               height: 15,
             ),
             GFToast(
               text:
               'This item already has the label “travel”. You can add a new label. !',
               button: GFButton(
                 onPressed: () {},
                 text: 'OK',
                 type: GFButtonType.transparent,
                 color: GFColor.success,
               ),
               autoDismiss: false,
               type: GFToastType.rounded,
               alignment: Alignment.topLeft,
             ),
             const Padding(
               padding: EdgeInsets.only(left: 15, top: 30, bottom: 10),
               child: GFTypography(
                 text: 'Full Width Toasts',
                 type: GFTypographyType.typo5,
                 dividerWidth: 25,
                 dividerColor: Color(0xFF19CA4B),
               ),
             ),
             GFToast(
               text: 'Paired Succesfully !',
               button: GFButton(
                 onPressed: () {},
                 text: 'OK',
                 type: GFButtonType.transparent,
                 color: GFColor.success,
               ),
               type: GFToastType.fullWidth,
               autoDismiss: false,
             ),
             const SizedBox(
               height: 15,
             ),
             GFToast(
               text:
               'This item already has the label “travel”. You can add a new label. !',
               button: GFButton(
                 onPressed: () {},
                 text: 'OK',
                 type: GFButtonType.transparent,
                 color: GFColor.success,
               ),
               autoDismiss: false,
               type: GFToastType.fullWidth,
             ),
             const Padding(
               padding: EdgeInsets.only(left: 15, top: 30, bottom: 10),
               child: GFTypography(
                 text: 'Floating Toast',
                 type: GFTypographyType.typo5,
                 dividerWidth: 25,
                 dividerColor: Color(0xFF19CA4B),
               ),
             ),
            Container(
              margin: EdgeInsets.only(left: 40, right: 40),
              child:
              GFButton(onPressed: (){
                setState(() {
                  showFloatingToast=!showFloatingToast;
                });
              }, text: 'View Floating Toast',),
            ),
             const SizedBox(
               height: 20,
             ),
           ],
         ),
       )
      );
}
