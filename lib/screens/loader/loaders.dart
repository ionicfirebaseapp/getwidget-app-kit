import 'package:flutter/material.dart';
import 'package:getflutter/components/loader/gf_loader.dart';
import 'package:getflutter/getflutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:getflutter/types/gf_loader_type.dart';

class Loaders extends StatefulWidget {
  @override
  _LoadersState createState() => _LoadersState();
}

class _LoadersState extends State<Loaders> {
  @override
  Widget build(BuildContext context) => Scaffold(
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
            'Loaders',
            style: TextStyle(fontSize: 17),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: const <Widget>[
            SizedBox(
              height: 30,
            ),
            GFLoader(
                //  dotIcon: Icon(Icons.insert_emoticon),
//   duration: Duration(seconds: 2),
                ),
            SizedBox(
              height: 30,
            ),
            GFLoader(
              size: GFSize.medium,
              type: GFLoaderType.square
            ),
            SizedBox(
              height: 30,
            ),
            GFLoader(
                size: GFSize.medium,
                type: GFLoaderType.custom
            ),
            SizedBox(
              height: 30,
            ),
//            GFLoader(
//             size: GFSize.large,
//              type: GFLoaderType.custom,
//              loaderIconOne: Icon(Icons.insert_emoticon),
//              loaderIconTwo: Icon(Icons.insert_emoticon),
//              loaderIconThree: Icon(Icons.email),
////   dotIcon: Icon(Icons.insert_emoticon),
//
//              duration: Duration(seconds: 3),
//            ),
            SizedBox(
              height: 30,
            ),
            GFLoader(
              size: GFSize.large,
              type: GFLoaderType.android,
//androidLoaderColor:const AlwaysStoppedAnimation<Color>(Colors.red),



//   dotIcon: Icon(Icons.insert_emoticon),

              duration: Duration(seconds: 3),
            ),

            SizedBox(
              height: 30,
            ),
GFLoader(
  type: GFLoaderType.custom,
//  child: Text('cfgvbhjnk', style: TextStyle(color: Colors.redAccent),),
child: Icon(Icons.favorite),
)
//            GFLoader(
//              size: GFSize.large,
//              type: GFLoaderType.ios,
////              androidLoaderColor:const AlwaysStoppedAnimation<Color>(Colors.red),
////loaderSize: 20.0,
//            loaderstrokeWidth: 10,
//
////   dotIcon: Icon(Icons.insert_emoticon),
//
//              duration: Duration(seconds: 3),
//            ),

          ],
        ),
      );
}
