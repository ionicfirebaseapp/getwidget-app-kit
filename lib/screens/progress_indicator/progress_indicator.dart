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
            GFProgressBar(
//          width: 140.0,
//          linearGradient: LinearGradient(
//            colors: [Colors.red, Colors.red],
//          ),
          lineHeight: 14.0,
          progressPercent: 0.6,
          center: Text(
            "20%", textAlign: TextAlign.end,
            style:  TextStyle(fontSize: 12.0,),
          ),
          trailing: Icon(Icons.mood),
          linearStrokeCap: LinearStrokeCap.roundAll,
          backgroundColor: Colors.grey,
              type: GFProgressType.linear,
              progressColor: Colors.green,

        ),

            GFProgressBar(
//          width: 140.0,
//          linearGradient: LinearGradient(
//            colors: [Colors.red, Colors.red],
//          ),
              lineHeight: 14.0,
              progressPercent: 0.6,
              center: Text(
                "20%", textAlign: TextAlign.end,
                style:  TextStyle(fontSize: 12.0,),
              ),
              linearStrokeCap: LinearStrokeCap.roundAll,
              backgroundColor: Colors.grey,
              type: GFProgressType.round,
              progressColor: Colors.green,

            ),



//            CircularPercentIndicator(
//              radius: 100.0,
//              lineWidth: 10.0,
//              percent: 0.6,
//              center: Text("60%"),
////              circularStrokeCap: CircularStrokeCap.round,
//              backgroundColor: Colors.grey,
//              maskFilter: MaskFilter.blur(BlurStyle.solid, 3),
//              linearGradient: LinearGradient(
//                begin: Alignment.topCenter,
//                end: Alignment.bottomCenter,
//                colors: [Colors.orange, Colors.yellow],
//              ),
//            ),
          ],
        ),
      );
}
