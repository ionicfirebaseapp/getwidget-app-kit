import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getflutter/colors/gf_color.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViews extends StatefulWidget {
  const WebViews({Key key, this.url}) : super(key: key);
  final String url;
  @override
  _WebViewsState createState() => _WebViewsState();
}

class _WebViewsState extends State<WebViews> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        backgroundColor: GFColors.DARK,
        title: SvgPicture.asset('lib/assets/icons/gflogo.svg'),
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            CupertinoIcons.back,
            color: GFColors.SUCCESS,
          ),
        ),
      ),
      body: Builder(
          builder: (BuildContext context) => WebView(
                initialUrl: widget.url,
                javascriptMode: JavascriptMode.unrestricted,
                onWebViewCreated: _controller.complete,
              )));
}
