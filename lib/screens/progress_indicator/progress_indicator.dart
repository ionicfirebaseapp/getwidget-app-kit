import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:getflutter/getflutter.dart';
import 'package:getflutter/components/progress_indicator/progress_bar.dart';
import 'package:getflutter/components/progress_indicator/circular.dart';


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
          ), centerTitle: true,
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
            margin: EdgeInsets.only(left: 10, right: 10, top: 20),
              child: GFProgressBar(
                percentage: 0.8,
                radius: 70,
                lineHeight: 20.0,
                alignment: MainAxisAlignment.spaceBetween,

                child: Text(
                  "80%", textAlign: TextAlign.end,
                  style:  TextStyle(fontSize: 16.0, color: Colors.white),
                ),
//                trailing: Icon(Icons.mood),
//                leading: Icon(Icons.message),
                linearBarType: LinearStrokeCap.roundAll,
                backgroundColor: Colors.black26,
                type: GFProgressType.linear,
                progressBarColor: Colors.green,
                animation: true,
                animationDuration: 3000,

                fillColor: Colors.green,


              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 5, right: 5, top: 20),
              child: GFProgressBar(
                percentage: 1,
                radius: 70,
                lineHeight: 20.0,
                alignment: MainAxisAlignment.spaceBetween,

                child: Text(
                  "100%", textAlign: TextAlign.end,
                  style:  TextStyle(fontSize: 16.0, color: Colors.white),
                ),
//                trailing: Icon(Icons.mood),
//                leading: Icon(Icons.message),
                linearBarType: LinearStrokeCap.butt,
                backgroundColor: Colors.black26,
                type: GFProgressType.linear,
                progressBarColor: Colors.red,
                animation: true,
                animationDuration: 3000,

                fillColor: Colors.green,


              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 10, right: 5, top: 20),
              child: GFProgressBar(
                percentage: 0.35,
                radius: 70,
                lineHeight: 20.0,
                alignment: MainAxisAlignment.spaceBetween,

                child: Text(
                  "35%", textAlign: TextAlign.end,
                  style:  TextStyle(fontSize: 16.0, color: Colors.white),
                ),
//                trailing: Icon(Icons.mood),
//                leading: Icon(Icons.message),
                linearBarType: LinearStrokeCap.round,
                backgroundColor: Colors.black26,
                type: GFProgressType.linear,
                progressBarColor: Colors.lightBlue,
                animation: true,
                animationDuration: 3000,

                fillColor: Colors.green,


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
//              height: 120,
//              width: 300,
//            margin: EdgeInsets.only(top:20),
              child: GFProgressBar(
                width: 300,
              alignment: MainAxisAlignment.spaceBetween,

radius: 90,
                percentage: 0.5,
                lineHeight: 20.0,
circleWidth: 10,

                child: Text(
                  "50%", textAlign: TextAlign.end,
                  style:  TextStyle(fontSize: 18.0,),
                ),
                linearBarType: LinearStrokeCap.roundAll,
                backgroundColor: Colors.black26,
                type: GFProgressType.round,
                progressBarColor: Colors.purple,
circularBarType: CircularStrokeCap.round,
                animation: true,
                animationDuration: 3000,
              ),
            ),

            Container(
//              height: 120,
//              width: 300,
            margin: EdgeInsets.only(top:90),
              child: GFProgressBar(
                width: 300,
                alignment: MainAxisAlignment.spaceBetween,

                radius: 90,
                percentage: 0.9,
                lineHeight: 20.0,
                circleWidth: 10,

                child: Text(
                  "90%", textAlign: TextAlign.end,
                  style:  TextStyle(fontSize: 18.0,),
                ),
                backgroundColor: Colors.black26,
                type: GFProgressType.round,
                progressBarColor: Colors.deepOrange,
                circularBarType: CircularStrokeCap.butt,
                animation: true,
                animationDuration: 3000,
              ),
            ),

            Container(
//              height: 120,
//              width: 300,
            margin: EdgeInsets.only(top:80),
              child: GFProgressBar(
                width: 100,
                alignment: MainAxisAlignment.spaceBetween,

                radius: 90,
                percentage: 1,
                lineHeight: 20.0,
                circleWidth: 10,

                child: Text(
                  "100%", textAlign: TextAlign.end,
                  style:  TextStyle(fontSize: 18.0),
                ),
                linearBarType: LinearStrokeCap.roundAll,
                backgroundColor: Colors.black26,
                type: GFProgressType.round,
                progressBarColor: Colors.teal,
                circularBarType: CircularStrokeCap.round,
                animation: true,
                animationDuration: 3000,
              ),
            ),


          ],
        ),
      );
}
