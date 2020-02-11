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
  bool showblur = false;
  Widget alertWidget;
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: GFColors.DARK,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              CupertinoIcons.back,
              color: GFColors.SUCCESS,
            ),
          ),
          title: const Text(
            'Alert',
            style: TextStyle(fontSize: 17),
          ),
          centerTitle: true,
        ),
        body: GFFloatingWidget(
          verticalPosition: 150,
          showblurness: showblur,
          child: alertWidget,
          body: ListView(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 30),
                child: GFTypography(
                  text: 'Basic Alert',
                  type: GFTypographyType.typo5,
                  dividerWidth: 25,
                  dividerColor: Color(0xFF19CA4B),
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      GFButton(
                          text: 'Tap to View',
                          onPressed: () {
                            setState(() {
                              showblur = true;
                              alertWidget = GFAlert(
                                backgroundColor: Colors.white,
                                title: 'Welcome !',
                                content:
                                    'Get Flutter is one of the largest Flutter open-source UI library '
                                    'for mobile or web apps with  1000+ pre-built reusable widgets.',
                                bottombar: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    GFButton(
                                      onPressed: () {
                                        setState(() {
                                          alertWidget = null;
                                          showblur = false;
                                        });
                                      },
                                      shape: GFButtonShape.pills,
                                      color: GFColors.LIGHT,
                                      type: GFButtonType.outline2x,
                                      child: const Text(
                                        'Skip',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    GFButton(
                                      onPressed: () {
                                        setState(() {
                                          alertWidget = null;
                                          showblur = false;
                                        });
                                      },
                                      shape: GFButtonShape.pills,
                                      icon: Icon(
                                        Icons.keyboard_arrow_right,
                                        color: GFColors.WHITE,
                                      ),
                                      position: GFPosition.end,
                                      text: 'Learn More',
                                    )
                                  ],
                                ),
                              );
                            });
                          }),
                    ],
                  )),
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 30),
                child: GFTypography(
                  text: 'Rounded Alert',
                  type: GFTypographyType.typo5,
                  dividerWidth: 25,
                  dividerColor: Color(0xFF19CA4B),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                color: Colors.transparent,
                child: Center(
                  child: GFButton(
                      text: 'Tap to View',
                      onPressed: () {
                        setState(() {
                          showblur = true;
                          alertWidget = GFAlert(
                            alignment: Alignment.center,
                            backgroundColor: Colors.white,
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
                                      alertWidget = null;
                                      showblur = false;
                                    });
                                  },
                                  color: GFColors.LIGHT,
                                  child: const Text(
                                    'Skip',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                GFButton(
                                  onPressed: () {
                                    setState(() {
                                      alertWidget = null;
                                      showblur = false;
                                    });
                                  },
                                  shape: GFButtonShape.pills,
                                  icon: Icon(
                                    Icons.keyboard_arrow_right,
                                    color: GFColors.WHITE,
                                  ),
                                  position: GFPosition.end,
                                  text: 'Learn More',
                                )
                              ],
                            ),
                          );
                        });
                      }),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 30),
                child: GFTypography(
                  text: 'Full Width Alert',
                  type: GFTypographyType.typo5,
                  dividerWidth: 25,
                  dividerColor: Color(0xFF19CA4B),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                color: Colors.transparent,
                child: Center(
                  child: GFButton(
                      text: 'Tap to View',
                      onPressed: () {
                        setState(() {
                          showblur = true;
                          alertWidget = GFAlert(
                            backgroundColor: Colors.white,
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
                                      alertWidget = null;
                                      showblur = false;
                                    });
                                  },
                                  shape: GFButtonShape.square,
                                  color: GFColors.LIGHT,
                                  child: const Text(
                                    'Skip',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                GFButton(
                                  onPressed: () {
                                    setState(() {
                                      alertWidget = null;
                                      showblur = false;
                                    });
                                  },
                                  shape: GFButtonShape.square,
                                  type: GFButtonType.outline2x,
                                  icon: Icon(
                                    Icons.keyboard_arrow_right,
                                    color: GFColors.PRIMARY,
                                  ),
                                  position: GFPosition.end,
                                  text: 'Learn More',
                                )
                              ],
                            ),
                          );
                        });
                      }),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 30),
                child: GFTypography(
                  text: 'Custom Alert',
                  type: GFTypographyType.typo5,
                  dividerWidth: 25,
                  dividerColor: Color(0xFF19CA4B),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    GFButton(
                        text: 'Tap to View',
                        onPressed: () {
                          setState(() {
                            showblur = true;
                            alertWidget = GFAlert(
                              alignment: Alignment.center,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.favorite_border,
                                size: 70,
                                color: GFColors.DANGER,
                              ),
                              contentChild: const Text(
                                'Add your favourites to your whislist, you can remove'
                                ' it whenever you feel to.',
                                style: TextStyle(fontSize: 20),
                              ),
                              bottombar: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  GFButton(
                                    onPressed: () {
                                      setState(() {
                                        alertWidget = null;
                                        showblur = false;
                                      });
                                    },
                                    color: GFColors.INFO,
                                    text: 'Add',
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  GFButton(
                                    color: GFColors.DANGER,
                                    onPressed: () {
                                      setState(() {
                                        alertWidget = null;
                                        showblur = false;
                                      });
                                    },
                                    text: 'Cancel',
                                  )
                                ],
                              ),
                            );
                          });
                        }),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
