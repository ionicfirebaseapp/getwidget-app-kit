import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:getflutter/getflutter.dart';

class ProgressIndicators extends StatefulWidget {
  @override
  _ProgressIndicatorsState createState() => _ProgressIndicatorsState();
}

class _ProgressIndicatorsState extends State<ProgressIndicators> {
  @override
  Widget build(BuildContext context) =>
      Scaffold(
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
          title: const Text(
            'Progress Indicator',
            style: TextStyle(fontSize: 17),
          ),
          centerTitle: true,
        ),
      );
}
