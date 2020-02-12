import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:getflutter/getflutter.dart';

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
            'Progress Indicator',
            style: TextStyle(fontSize: 17),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            GFProgressIndicator(
//          width: 140.0,
          linearGradient: LinearGradient(
            colors: [Colors.red, Colors.red],
          ),
          lineHeight: 14.0,
          percent: 1,
          center: Text(
            "100%",
            style: TextStyle(fontSize: 12.0),
          ),
          trailing: Icon(Icons.mood),
          linearStrokeCap: LinearStrokeCap.butt,
          backgroundColor: Colors.grey,
        ),


          ],
        ),
      );
}
