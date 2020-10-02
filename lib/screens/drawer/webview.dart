import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:getwidget/getwidget.dart';

class WebView extends StatefulWidget {
  WebView({Key key}) : super(key: key);

  @override
  _WebViewState createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      routes: {
        "/": (_) => new WebviewScaffold(
              url: "https://docs.getwidget.dev/",
              appBar: new AppBar(
                // title: new Text("Widget webview"),
                title: Image.asset(
                  'lib/assets/icons/gflogo.png',
                  width: 150,
                ),
                centerTitle: true,
                backgroundColor: GFColors.DARK,
              ),
            ),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
