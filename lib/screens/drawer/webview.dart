// import 'dart:async';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'dart:async';

// import 'package:getwidget/getwidget.dart';
// import 'package:WebViews_flutter/WebViews_flutter.dart';

// class WebViewss extends StatefulWidget {
//   const WebViewss({Key key, this.url}) : super(key: key);
//   final String url;
//   @override
//   _WebViewssState createState() => _WebViewssState();
// }

// class _WebViewssState extends State<WebViewss> {
//   final Completer<WebViewsController> _controller =
//       Completer<WebViewsController>();
//   @override
//   Widget build(BuildContext context) => Scaffold(
//       appBar: AppBar(
//         backgroundColor: GFColors.DARK,
//         title: Image.asset(
//           'lib/assets/icons/gflogo.png',
//           width: 150,
//         ),
//         centerTitle: true,
//         leading: InkWell(
//           onTap: () {
//             Navigator.pop(context);
//           },
//           child: Icon(
//             CupertinoIcons.back,
//             color: GFColors.SUCCESS,
//           ),
//         ),
//       ),
//       body: Builder(
//           builder: (BuildContext context) => WebViews(
//                 initialUrl: widget.url,
//                 javascriptMode: JavascriptMode.unrestricted,
//                 onWebViewsCreated: _controller.complete,
//               )));
// }

import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:getwidget/getwidget.dart';
import 'package:gf_app/screens/home.dart';

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
                // leading: IconButton(
                //   icon: Icon(
                //     Icons.arrow_back,
                //     size: 26.0,
                //   ),  
                //   color: Colors.white,
                //   onPressed: () {
                //       Navigator.push(
                //       context,
                //       MaterialPageRoute(builder: (context) => HomePage()),
                //     );
                //   },
                // ),
              ),
            ),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
