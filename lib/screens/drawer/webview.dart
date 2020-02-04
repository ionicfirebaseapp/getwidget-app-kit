import 'package:easy_web_view/easy_web_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getflutter/colors/gf_color.dart';

class WebView extends StatefulWidget {
  final String url;

  WebView({Key key, this.url}) : super(key: key);
  @override
  _WebViewState createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GFColors.getGFColor(GFColor.dark),
        title: SvgPicture.asset('lib/assets/icons/gflogo.svg'),
        centerTitle: true,
      ),
      body: EasyWebView(
        src: widget.url,
      ),
    );
  }
}
