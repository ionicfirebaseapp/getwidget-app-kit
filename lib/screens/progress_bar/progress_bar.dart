import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:getwidget/getwidget.dart';

class ProgressBar extends StatefulWidget {
  @override
  _ProgressBarState createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
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
            'Progress Bar',
            style: TextStyle(fontSize: 17),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 30),
              child: GFTypography(
                text: 'Linear Progress Bars',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10, top: 20),
              child: GFProgressBar(
                padding: const EdgeInsets.only(left: 15, right: 15),
                percentage: 0.8,
                lineHeight: 20,
                alignment: MainAxisAlignment.spaceBetween,
                child: const Text(
                  '80%',
                  textAlign: TextAlign.end,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                leading: Icon(
                  Icons.sentiment_dissatisfied,
                  color: GFColors.DANGER,
                ),
                trailing: Icon(
                  Icons.sentiment_satisfied,
                  color: GFColors.SUCCESS,
                ),
                type: GFProgressType.linear,
                backgroundColor: Colors.black26,
                progressBarColor: GFColors.INFO,
                animation: true,
                animationDuration: 4000,

//
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: GFProgressBar(
                percentage: 0.5,
                lineHeight: 20,
                alignment: MainAxisAlignment.spaceBetween,

                child: const Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Text(
                    '50%',
                    textAlign: TextAlign.end,
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
//
                progressHeadType: GFProgressHeadType.square,
                backgroundColor: Colors.black26,
                progressBarColor: GFColors.WARNING,
                animation: true,
                animationDuration: 3000,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30, left: 10, right: 10),
              child: GFProgressBar(
                percentage: 0.3,
                lineHeight: 20,
//                progressHeadType: GFProgressHeadType.square,
                child: const Text(
                  '30%',
                  textAlign: TextAlign.end,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                backgroundColor: Colors.black26,
                progressBarColor: GFColors.DANGER,
                animation: true,
                animationDuration: 2000,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 30, bottom: 50),
              child: GFTypography(
                text: 'Circular Progress Bars',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),
            Container(
              child: GFProgressBar(
//                width: 300,
                width: 100,
                alignment: MainAxisAlignment.spaceBetween,
                radius: 90,
                percentage: 0.4,
                lineHeight: 20,
                circleWidth: 10,
                child: const Text(
                  '40%',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                backgroundColor: Colors.black26,
                type: GFProgressType.circular,
                progressBarColor: GFColors.SECONDARY,
                animation: true,
                animationDuration: 2500,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 90),
              child: GFProgressBar(
                width: 100,
                circleStartAngle: 20,
                alignment: MainAxisAlignment.spaceEvenly,
                radius: 90,
                percentage: 0.9,
                lineHeight: 45,
                circleWidth: 10,
                child: Column(
                  children: <Widget>[
                    const Text(
                      '90%',
                      textAlign: TextAlign.end,
                      style: TextStyle(fontSize: 18),
                    ),
                    Icon(
                      Icons.sentiment_very_satisfied,
                      color: GFColors.SUCCESS,
                    )
                  ],
                ),
                backgroundColor: Colors.black26,
                type: GFProgressType.circular,
                progressBarColor: GFColors.SUCCESS,
                progressHeadType: GFProgressHeadType.circular,
                animation: true,
                animationDuration: 2800,
              ),
            ),
          ],
        ),
      );
}
