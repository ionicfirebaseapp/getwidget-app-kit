import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';
import 'package:flutter/cupertino.dart';

class FabFloatingWidget extends StatefulWidget {
  @override
  _FabFloatingWidgetState createState() => _FabFloatingWidgetState();
}

class _FabFloatingWidgetState extends State<FabFloatingWidget> with TickerProviderStateMixin {
  TextEditingController controller1 = TextEditingController();
  Animation animation;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(duration: Duration(seconds: 2), vsync: this);
    controller = AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    offset = Tween<Offset>(begin:  Offset(0.0, -0.05), end: Offset.zero).animate(controller);
    Controller = AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    offset1 = Tween<Offset>(begin: Offset(1.0, 0.0), end: Offset.zero).animate(Controller);
    animation =   Tween(begin: 1.0, end: 0.0).animate(CurvedAnimation(parent: animationController, curve: Curves.fastLinearToSlowEaseIn));
  }
  AnimationController controller, Controller;
  Animation<Offset> offset, offset1;

  bool showfabFloatingWidget = false;

  @override
  Widget build(BuildContext context) =>
      Scaffold(
                body: GFFloatingWidget(
            verticalPosition: MediaQuery.of(context).size.height* 0.4,
            horizontalPosition: MediaQuery.of(context).size.width* 0.45,

            child:  Column(
              children:   <Widget>[
                SizedBox(
                  height: 20,
                ),
                GFIconButton(
                    icon: showfabFloatingWidget ?Icon(Icons.close): Icon(Icons.add),
                    shape: GFIconButtonShape.circle,
                    color: showfabFloatingWidget? Colors.red:GFColors.getGFColor(GFColor.primary),
                    size: 120,
                    onPressed: () {
                      setState(() {
                        showfabFloatingWidget=!showfabFloatingWidget;
                      });
                      switch (controller.status) {
                        case AnimationStatus.completed:
                          controller.forward(from: 1);
                          break;
                        case AnimationStatus.dismissed:
                          controller.reverse(from:1);
                          break;
                        default:
                      }
                    }),

              ],
            ),
            body: ListView(
//             mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(left: 15, top: 20, bottom: 40),
                  child: GFTypography(
                    text: 'Floating Widget as a FAB Button',
                    type: GFTypographyType.typo5,
                    dividerWidth: 25,
                    dividerColor: Color(0xFF19CA4B),
                  ),
                ),

                showfabFloatingWidget?SlideTransition(position: offset, child: Container(
//                  height: 400,
//                  width: 300,
                  child:  Column(

                    children: <Widget>[
                      GFButtonBar(
                        direction:Axis.vertical,
                        children: <Widget>[
                          GFIconButton(
                              icon: Icon(Icons.add),
                              shape: GFIconButtonShape.circle,
                              color: GFColors.getGFColor(GFColor.info),
                              onPressed: () {
                              }),
                          GFIconButton(
                              icon: Icon(Icons.share),
                              shape: GFIconButtonShape.circle,
                              color: GFColors.getGFColor(GFColor.success),
                              onPressed: () {
                              }),
                          GFIconButton(
                              icon: Icon(Icons.message),
                              shape: GFIconButtonShape.circle,
                              color: GFColors.getGFColor(GFColor.warning),
                              onPressed: () {
                              }),
                          GFIconButton(
                              icon: Icon(Icons.settings),
                              shape: GFIconButtonShape.circle,
                              onPressed: () {
                              }),

                        ],
                      )


                    ],
                  ),
                ),):Container(),
        ]))


      );
}
