import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:flutter/cupertino.dart';

class Toggles extends StatefulWidget {
  @override
  _TogglesState createState() => _TogglesState();
}

class _TogglesState extends State<Toggles> {
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
            'Toggle',
            style: TextStyle(fontSize: 17),
          ),
          centerTitle: true,
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 30, bottom: 10),
                child: GFTypography(
                  text: 'Basic',
                  type: GFTypographyType.typo5,
                  dividerWidth: 25,
                  dividerColor: Color(0xFF19CA4B),
                ),
              ),
              GFCard(
                content: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GFToggle(
                          onChanged: (val) {
                            print('on change val $val');
                          },
                          value: true,
                        ),
                        GFToggle(
                          enabledTrackColor: GFColors.DANGER,
                          onChanged: (val) {
                            print('on change val $val');
                          },
                          value: true,
                        ),
                        GFToggle(
                          enabledTrackColor: GFColors.WARNING,
                          onChanged: (val) {
                            print('on change val $val');
                          },
                          value: true,
                        ),
                        GFToggle(
                          enabledTrackColor: GFColors.INFO,
                          onChanged: (val) {
                            print('on change val $val');
                          },
                          value: true,
                        )
                      ],
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 10),
                child: GFTypography(
                  text: 'IOS',
                  type: GFTypographyType.typo5,
                  dividerWidth: 25,
                  dividerColor: Color(0xFF19CA4B),
                ),
              ),
              GFCard(
                content: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GFToggle(
                          onChanged: (v) {
                            print('ios val $v');
                          },
                          value: true,
                          type: GFToggleType.ios,
                        ),
                        GFToggle(
                          enabledTrackColor: GFColors.DANGER,
                          onChanged: (v) {
                            print('ios val $v');
                          },
                          value: true,
                          type: GFToggleType.ios,
                        ),
                        GFToggle(
                          enabledTrackColor: GFColors.WARNING,
                          onChanged: (v) {
                            print('ios val $v');
                          },
                          value: true,
                          type: GFToggleType.ios,
                        ),
                        GFToggle(
                          enabledTrackColor: GFColors.INFO,
                          onChanged: (v) {
                            print('ios val $v');
                          },
                          value: true,
                          type: GFToggleType.ios,
                        )
                      ],
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 10),
                child: GFTypography(
                  text: 'Square',
                  type: GFTypographyType.typo5,
                  dividerWidth: 25,
                  dividerColor: Color(0xFF19CA4B),
                ),
              ),
              GFCard(
                content: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GFToggle(
                          onChanged: (val) {
                            print('on change val $val');
                          },
                          value: true,
                          type: GFToggleType.square,
                        ),
                        GFToggle(
                          enabledTrackColor: GFColors.DANGER,
                          onChanged: (val) {
                            print('on change val $val');
                          },
                          value: true,
                          type: GFToggleType.square,
                        ),
                        GFToggle(
                          enabledTrackColor: GFColors.WARNING,
                          onChanged: (val) {
                            print('on change val $val');
                          },
                          value: true,
                          type: GFToggleType.square,
                        ),
                        GFToggle(
                          enabledTrackColor: GFColors.INFO,
                          onChanged: (val) {
                            print('on change val $val');
                          },
                          value: true,
                          type: GFToggleType.square,
                        )
                      ],
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 10),
                child: GFTypography(
                  text: 'Custom',
                  type: GFTypographyType.typo5,
                  dividerWidth: 25,
                  dividerColor: Color(0xFF19CA4B),
                ),
              ),
              GFCard(
                content: Column(
                  children: <Widget>[
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GFToggle(
                          onChanged: (val) {
                            print('on change val $val');
                          },
                          value: true,
                          type: GFToggleType.custom,
                        ),
                        GFToggle(
                          onChanged: (val) {
                            print('on change val $val');
                          },
                          value: true,
                          type: GFToggleType.android,
                          boxShape: BoxShape.rectangle,
                          enabledTrackColor: GFColors.DANGER,
                        ),
                        GFToggle(
                          onChanged: (val) {
                            print('on change val $val');
                          },
                          value: true,
                          type: GFToggleType.ios,
                          boxShape: BoxShape.rectangle,
                          enabledTrackColor: GFColors.WARNING,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(0)),
                        ),
                        GFToggle(
                          onChanged: (val) {
                            print('on change val $val');
                          },
                          value: true,
                          type: GFToggleType.ios,
                          boxShape: BoxShape.rectangle,
                          enabledText: 'ON',
                          disabledText: 'OFF',
                          enabledTrackColor: GFColors.INFO,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(0)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
