import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:flutter/cupertino.dart';
import 'dart:async';

class Toasts extends StatefulWidget {
  @override
  _ToastsState createState() => _ToastsState();
}

class _ToastsState extends State<Toasts> {

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
          'Toasts',
          style: TextStyle(fontSize: 17),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          GestureDetector(
              onTap: () => GFToast.showToast(
                    'GetFlutter is an open source library that comes with pre-build 1000+ UI components.',
                    context,
                  ),
              child: Container(
                margin: const EdgeInsets.only(left: 15, right: 15, top: 20),
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(7)),
                    color: GFColors.DARK,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.40), blurRadius: 5)
                    ]),
                child: GFListTile(
                    color: GFColors.DARK,
                    title: const Text(
                      'Show Toast',
                      style: TextStyle(color: GFColors.WHITE),
                    ),
                    icon: Icon(
                      CupertinoIcons.forward,
                      color: GFColors.SUCCESS,
                    )),
              )),
          GestureDetector(
              onTap: () => GFToast.showToast(
                    'GetFlutter is an open source library that comes with pre-build 1000+ UI components.',
                    context,
                    textStyle: TextStyle(fontSize: 16, color: Colors.black54),
                    backgroundColor: Colors.white,
                  ),
              child: Container(
                margin: const EdgeInsets.only(left: 15, right: 15, top: 20),
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(7)),
                    color: GFColors.DARK,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.40), blurRadius: 5)
                    ]),
                child: GFListTile(
                    color: GFColors.DARK,
                    title: const Text(
                      'Show Toast with background color',
                      style: TextStyle(color: GFColors.WHITE),
                    ),
                    icon: Icon(
                      CupertinoIcons.forward,
                      color: GFColors.SUCCESS,
                    )),
              )),
          GestureDetector(
              onTap: () => GFToast.showToast(
                    'GetFlutter is an open source library that comes with pre-build 1000+ UI components.',
                    context,
                    toastPosition: GFToastPosition.BOTTOM,
                  ),
              child: Container(
                margin: const EdgeInsets.only(left: 15, right: 15, top: 20),
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(7)),
                    color: GFColors.DARK,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.40), blurRadius: 5)
                    ]),
                child: GFListTile(
                    color: GFColors.DARK,
                    title: const Text(
                      'Show Toast with toast position',
                      style: TextStyle(color: GFColors.WHITE),
                    ),
                    icon: Icon(
                      CupertinoIcons.forward,
                      color: GFColors.SUCCESS,
                    )),
              )),
          GestureDetector(
              onTap: () => GFToast.showToast(
                  'GetFlutter is an open source library that comes with pre-build 1000+ UI components.',
                  context,
                  textStyle: TextStyle(fontSize: 16, color: Colors.black54),
                  backgroundColor: GFColors.LIGHT,
                  toastBorderRadius: 5.0,
                  border: Border.all(color: GFColors.SUCCESS),
                  toastDuration: 5,
                  toastPosition: GFToastPosition.BOTTOM),
              child: Container(
                margin: const EdgeInsets.only(left: 15, right: 15, top: 20),
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(7)),
                    color: GFColors.DARK,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.40), blurRadius: 5)
                    ]),
                child: GFListTile(
                    color: GFColors.DARK,
                    title: const Text(
                      'Show Toast with rounded border',
                      style: TextStyle(color: GFColors.WHITE),
                    ),
                    icon: Icon(
                      CupertinoIcons.forward,
                      color: GFColors.SUCCESS,
                    )),
              )),
          GestureDetector(
              onTap: () => GFToast.showToast(
                  'GetFlutter is an open source library that comes with pre-build 1000+ UI components.',
                  context,
                  toastPosition: GFToastPosition.BOTTOM,
                  textStyle: TextStyle(fontSize: 16, color: GFColors.DARK),
                  backgroundColor: GFColors.LIGHT,
                  trailing: Icon(
                    Icons.notifications,
                    color: GFColors.SUCCESS,
                  )),
              child: Container(
                margin: const EdgeInsets.only(left: 15, right: 15, top: 20),
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(7)),
                    color: GFColors.DARK,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.40), blurRadius: 5)
                    ]),
                child: GFListTile(
                    color: GFColors.DARK,
                    title: const Text(
                      'Show Toast with trailing',
                      style: TextStyle(color: GFColors.WHITE),
                    ),
                    icon: Icon(
                      CupertinoIcons.forward,
                      color: GFColors.SUCCESS,
                    )),
              )),
        ],
      ));
}
