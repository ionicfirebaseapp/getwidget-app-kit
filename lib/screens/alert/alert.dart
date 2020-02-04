import 'package:getflutter/getflutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:getflutter/components/alert/gf_alert.dart';
import 'package:getflutter/types/gf_alert_type.dart';

class AlertPage extends StatefulWidget {
  @override
  _AlertPageState createState() => _AlertPageState();
}

class _AlertPageState extends State<AlertPage> {
  bool showalert = false;
  bool roundedalert = false;
  bool fullWidthalert = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: Colors.white,
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
        title: Text(
          'Alert',
          style: TextStyle(fontSize: 17),
        ),
        centerTitle: true,
      ),

      body: GFFloatingWidget(
//        horizontalPosition: 40,
          verticalPosition: 20,

          showblurness: ((showalert) || (roundedalert) || (fullWidthalert)),
          blurnessColor: Colors.black.withOpacity(0.22),
          child: Column(
            children: <Widget>[
//            Padding(padding: EdgeInsets.only(top:20)),
              showalert
                  ? GFAlert(
                      title: 'Welcome !',
                      content:
                          'Get Flutter is one of the largest Flutter open-source UI library for mobile or web apps with  1000+ pre-built reusable widgets.',
                      bottombar: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          GFButton(
                            onPressed: () {
                              setState(() {
                                showalert = false;
                              });
                            },
                            shape: GFButtonShape.pills,
                            color: GFColor.light,
                            type: GFButtonType.outline2x,
                            child: Text(
                              'Skip',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          GFButton(
                            onPressed: () {
                              setState(() {
                                showalert = false;
                              });
                            },
                            shape: GFButtonShape.pills,
                            icon: Icon(
                              Icons.keyboard_arrow_right,
                              color: GFColors.getGFColor(GFColor.white),
                            ),
                            position: GFPosition.end,
                            text: 'Learn More',
                          )
                        ],
                      ),
                    )
                  : Container(),

              SizedBox(
                height: 130,
              ),

              roundedalert
                  ? GFAlert(
                      alignment: Alignment.center,
//                width: 200,
                      title: 'Welcome !',
                      content:
                          'Get Flutter is one of the largest Flutter open-source UI library for mobile or web apps with  1000+ pre-built reusable widgets.',
                      type: GFAlertType.rounded,

                      bottombar: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          GFButton(
                            onPressed: () {
                              setState(() {
                                roundedalert = false;
                              });
                            },
                            color: GFColor.light,
                            child: Text(
                              'Skip',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          GFButton(
                            onPressed: () {
                              setState(() {
                                roundedalert = false;
                              });
                            },
                            shape: GFButtonShape.pills,
                            icon: Icon(
                              Icons.keyboard_arrow_right,
                              color: GFColors.getGFColor(GFColor.white),
                            ),
                            position: GFPosition.end,
                            text: 'Learn More',
                          )
                        ],
                      ),
                    )
                  : Container(),

              SizedBox(
                height: 130,
              ),

              fullWidthalert
                  ? GFAlert(
                      title: 'Welcome !',
                      content:
                          'Get Flutter is one of the largest Flutter open-source UI library for mobile or web apps with  1000+ pre-built reusable widgets.',
                      type: GFAlertType.fullWidth,
                      bottombar: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          GFButton(
                            onPressed: () {
                              setState(() {
                                fullWidthalert = false;
                              });
                            },
                            shape: GFButtonShape.square,
                            color: GFColor.light,
                            child: Text(
                              'Skip',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          GFButton(
                            onPressed: () {
                              setState(() {
                                fullWidthalert = false;
                              });
                            },
                            shape: GFButtonShape.square,
                            type: GFButtonType.outline2x,
                            icon: Icon(
                              Icons.keyboard_arrow_right,
                              color: GFColors.getGFColor(GFColor.primary),
                            ),
                            position: GFPosition.end,
                            text: 'Learn More',
                          )
                        ],
                      ),
                    )
                  : Container()
            ],
          ),
          body: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 15, top: 30),
                child: GFTypography(
                  text: 'Basic Alert',
                  type: GFTypographyType.typo5,
                  dividerWidth: 25,
                  dividerColor: Color(0xFF19CA4B),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      GFButton(
                          text: 'Tap to View',
                          onPressed: () {
                            setState(() {
                              showalert = !showalert;
                            });
                          }),
                    ],
                  )),
              Padding(
                padding: EdgeInsets.only(left: 15, top: 30),
                child: GFTypography(
                  text: 'Rounded Alert',
                  type: GFTypographyType.typo5,
                  dividerWidth: 25,
                  dividerColor: Color(0xFF19CA4B),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 20),
                  color: Colors.transparent,
                  child: Center(
                    child: GFButton(
                        text: 'Tap to View',
                        onPressed: () {
                          setState(() {
                            roundedalert = !roundedalert;
                          });
                        }),
                  )),
              Padding(
                padding: EdgeInsets.only(left: 15, top: 30),
                child: GFTypography(
                  text: 'Full Width Alert',
                  type: GFTypographyType.typo5,
                  dividerWidth: 25,
                  dividerColor: Color(0xFF19CA4B),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 20),
                  color: Colors.transparent,
//                height: 300,
                  child: Center(
                    child: GFButton(
                        text: 'Tap to View',
                        onPressed: () {
                          setState(() {
                            fullWidthalert = !fullWidthalert;
                          });
                        }),
                  )),
            ],
          )),
    );
  }
}
