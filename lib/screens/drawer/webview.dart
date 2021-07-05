import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:getwidget/getwidget.dart';

class WebView extends StatelessWidget {
  final String? url;
  WebView({Key? key, this.url}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: url!,
      clearCache: true,
      clearCookies: true,
      initialChild: GFLoader(
        type: GFLoaderType.ios,
      ),
      appBar: new AppBar(
        title: Image.asset(
          'lib/assets/icons/gflogo.png',
          width: 150,
        ),
        centerTitle: true,
        backgroundColor: GFColors.DARK,
      ),
    );
  }
}
