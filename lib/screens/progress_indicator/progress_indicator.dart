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
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Container(
              height: 120,
              width: 300,
              child: GFProgressBar(
                radius: 70,
//          width: 140.0,
//          linearGradient: LinearGradient(
//            colors: [Colors.red, Colors.red],
//          ),
//              percent: 0.8,
                lineHeight: 20.0,
                alignment: MainAxisAlignment.spaceBetween,

                center: Text(
                  "80%", textAlign: TextAlign.end,
                  style:  TextStyle(fontSize: 12.0,),
                ),
                trailing: Icon(Icons.mood),
                linearStrokeCap: LinearStrokeCap.roundAll,
                backgroundColor: Colors.grey,
                type: GFProgressType.linear,
                progressColor: Colors.green,
                animation: true,
                animationDuration: 3000,
                percent: 0.4,
                fillColor: Colors.green,


              ),
            ),

            Container(
              height: 120,
              width: 300,
              child: GFProgressBar(
                leading: Icon(Icons.message),
//arcBackgroundColor: Colors.amber,
//arcType: ArcType.FULL,
              alignment: MainAxisAlignment.spaceBetween,

radius: 60,
//                radius: 70,
                percent: 0.5,
                lineHeight: 20.0,
lineWidth: 10,
                center: Text(
                  "20%", textAlign: TextAlign.end,
                  style:  TextStyle(fontSize: 12.0,),
                ),
                trailing: Icon(Icons.mood),
                linearStrokeCap: LinearStrokeCap.roundAll,
                backgroundColor: Colors.amber,
                type: GFProgressType.round,
                progressColor: Colors.green,
circularStrokeCap: CircularStrokeCap.round,
//                animateFromLastPercent: true,
                animation: true,
                animationDuration: 3000,
              ),
            ),


          ],
        ),
      );
}
