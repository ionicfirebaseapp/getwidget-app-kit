import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:flutter/cupertino.dart';
import 'dart:async';

class Toasts extends StatefulWidget {
  @override
  _ToastsState createState() => _ToastsState();
}

class _ToastsState extends State<Toasts> {
  bool showFloatingToast = false;
  Timer? autoTimer;
  bool showblurness = true;
  Duration autoTimerDuration = Duration(milliseconds: 400);

//  @override
//  initState(){
//    autoTimer = Timer(autoTimerDuration, (){
//      setState((){
//        showblurness = true;
//        autoTimer= Timer()
//      });
//    });
//  }

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
            'Toasts',
            style: TextStyle(fontSize: 17),
          ),
          centerTitle: true,
        ),
        body: GFFloatingWidget(
          verticalPosition: MediaQuery.of(context).size.width * 0.5,
          horizontalPosition: MediaQuery.of(context).size.height * 0.02,
          showBlurness: showFloatingToast,
          blurnessColor: Colors.black87,
          child: showFloatingToast
              ? GFToast(
                  backgroundColor: Colors.white,
                  text:
                      'You have succesfully viewed how the floating toast works!!',
                  textStyle: const TextStyle(color: Colors.black87),
                  button: GFButton(
                    onPressed: () {
                      setState(() {
                        showFloatingToast = false;
                      });
                    },
                    text: 'OK',
                    type: GFButtonType.transparent,
                    color: GFColors.SUCCESS,
                  ),
                  autoDismiss: false,
                )
              : Container(),
          body: ListView(
            physics: const ScrollPhysics(),
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
                  color: GFColors.SUCCESS,
                ),
                autoDismiss: true,
                duration: const Duration(seconds: 1),
              ),
              const SizedBox(
                height: 15,
              ),
              const GFToast(
                text: 'Pass true to autoDismiss property to use this effect!',
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
                  color: GFColors.SUCCESS,
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
                    'This item already has the label “travel”. You can add  new label. !',
                button: GFButton(
                  onPressed: () {},
                  text: 'OK',
                  type: GFButtonType.transparent,
                  color: GFColors.SUCCESS,
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
                  color: GFColors.SUCCESS,
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
                  color: GFColors.SUCCESS,
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
                  color: GFColors.SUCCESS,
                ),
                type: GFToastType.fullWidth,
                autoDismiss: false,
              ),
              const SizedBox(
                height: 15,
              ),
              GFToast(
                text:
                    'This item already has the label “travel”. You can add a new label.!',
                button: GFButton(
                  onPressed: () {},
                  text: 'OK',
                  type: GFButtonType.transparent,
                  color: GFColors.SUCCESS,
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
                margin: const EdgeInsets.only(left: 40, right: 40),
                child: GFButton(
                  onPressed: () {
                    setState(() {
                      showFloatingToast = !showFloatingToast;
                    });
                  },
                  text: 'View Floating Toast',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),

//
//  body: GFFloatingWidget(
//    showblurness: showblurness,
//    blurnessColor: Colors.black54,
//    child: GFToast(
//      text: 'Hi Hello',
//         autoDismissDuration: autoTimerDuration,
////       autoDismissDuration: Duration(autoTimer),
//
//
//    ),
//    body:   GFCard(
//      content: Column(
//        children: <Widget>[
//          const SizedBox(
//            height: 10,
//          ),
//          Row(
//            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//            children: const <Widget>[
//              GFAvatar(
//                backgroundImage:
//                AssetImage('lib/assets/images/avatar5.png'),
//              ),
//              GFAvatar(
//                backgroundImage:
//                AssetImage('lib/assets/images/img.png'),
//              ),
//              GFAvatar(
//                backgroundImage:
//                AssetImage('lib/assets/images/img1.png'),
//              ),
//              GFAvatar(
//                backgroundImage:
//                AssetImage('lib/assets/images/img2.png'),
//              )
//            ],
//          ),
//          const SizedBox(
//            height: 20,
//          ),
//          Row(
//            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//            children: const <Widget>[
//              GFAvatar(
//                backgroundImage:
//                AssetImage('lib/assets/images/avatar6.png'),
//                shape: GFAvatarShape.standard,
//              ),
//              GFAvatar(
//                backgroundImage:
//                AssetImage('lib/assets/images/avatar11.png'),
//                shape: GFAvatarShape.standard,
//              ),
//              GFAvatar(
//                backgroundImage:
//                AssetImage('lib/assets/images/avatar9.png'),
//                shape: GFAvatarShape.standard,
//              ),
//              GFAvatar(
//                backgroundImage:
//                AssetImage('lib/assets/images/avatar12.png'),
//                shape: GFAvatarShape.standard,
//              ),
//            ],
//          ),
//          const SizedBox(
//            height: 20,
//          ),
//          Row(
//            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//            children: const <Widget>[
//              GFAvatar(
//                backgroundImage: AssetImage(
//                  'lib/assets/images/avatar10.png',
//                ),
//                shape: GFAvatarShape.square,
//              ),
//              GFAvatar(
//                backgroundImage:
//                AssetImage('lib/assets/images/avatar12.png'),
//                shape: GFAvatarShape.square,
//              ),
//              GFAvatar(
//                backgroundImage:
//                AssetImage('lib/assets/images/avatar11.png'),
//                shape: GFAvatarShape.square,
//              ),
//              GFAvatar(
//                backgroundImage:
//                AssetImage('lib/assets/images/avatar6.png'),
//                shape: GFAvatarShape.square,
//              ),
//            ],
//          ),
//          const SizedBox(
//            height: 10,
//          ),
//
//
//          GFButton(onPressed: (){}, text: 'Click for auto dismissable toast',)
//        ],
//      ),
//    )
//  ),
      );
}
