import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:flutter/cupertino.dart';

class Loaders extends StatefulWidget {
  @override
  _LoadersState createState() => _LoadersState();
}

class _LoadersState extends State<Loaders> {
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
            'Loaders',
            style: TextStyle(fontSize: 17),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 30),
              child: GFTypography(
                text: 'Basic Loader',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),
            GFCard(
                content: Column(
              children: <Widget>[
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget>[
                    GFLoader(),
                    GFLoader(
                      androidLoaderColor:
                          AlwaysStoppedAnimation<Color>(Colors.red),
                    ),
                    GFLoader(
                      androidLoaderColor:
                          AlwaysStoppedAnimation<Color>(Colors.amber),
                    ),
                    GFLoader(
                      androidLoaderColor:
                          AlwaysStoppedAnimation<Color>(Colors.green),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget>[
                    GFLoader(
                      loaderstrokeWidth: 2,
                      size: GFSize.SMALL,
                    ),
                    GFLoader(
                      androidLoaderColor:
                          AlwaysStoppedAnimation<Color>(Colors.red),
                      loaderstrokeWidth: 2,
                      size: GFSize.MEDIUM,
                    ),
                    GFLoader(
                      androidLoaderColor:
                          AlwaysStoppedAnimation<Color>(Colors.amber),
                      loaderstrokeWidth: 2,
                      size: GFSize.LARGE,
                    ),
                    GFLoader(
                      androidLoaderColor:
                          AlwaysStoppedAnimation<Color>(Colors.green),
                      loaderstrokeWidth: 2,
                      size: 60,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
              ],
            )),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 30),
              child: GFTypography(
                text: 'IOS Loader',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),
            GFCard(
                content: Column(
              children: <Widget>[
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget>[
                    GFLoader(
                      type: GFLoaderType.ios,
                      size: GFSize.SMALL,
                    ),
                    GFLoader(
                      type: GFLoaderType.ios,
                    ),
                    GFLoader(
                      type: GFLoaderType.ios,
                      size: GFSize.LARGE,
                    ),
                    GFLoader(
                      type: GFLoaderType.ios,
                      size: 60,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
              ],
            )),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 30),
              child: GFTypography(
                text: 'Circular Loader',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),
            GFCard(
                content: Column(
              children: <Widget>[
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget>[
                    GFLoader(
                      type: GFLoaderType.circle,
                      size: GFSize.SMALL,
                    ),
                    GFLoader(
                      type: GFLoaderType.circle,
                      size: GFSize.MEDIUM,
                    ),
                    GFLoader(
                      type: GFLoaderType.circle,
                      size: GFSize.LARGE,
                    ),
                    GFLoader(
                      type: GFLoaderType.circle,
                      size: 60,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
              ],
            )),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 30),
              child: GFTypography(
                text: 'Square Loader',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),
            GFCard(
                content: Column(
              children: <Widget>[
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget>[
                    GFLoader(
                      type: GFLoaderType.square,
                      size: GFSize.SMALL,
                    ),
                    GFLoader(
                      type: GFLoaderType.square,
                      size: GFSize.MEDIUM,
                    ),
                    GFLoader(
                      type: GFLoaderType.square,
                      size: GFSize.LARGE,
                    ),
                    GFLoader(
                      type: GFLoaderType.square,
                      size: 60,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
              ],
            )),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 30),
              child: GFTypography(
                text: 'Custom Loader',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),
            GFCard(
              content: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      GFLoader(
                        type: GFLoaderType.custom,
                        child: Image(
                          image: AssetImage('lib/assets/gif/loader.gif'),
                          width: 150,
                        ),
                      ),
                      GFLoader(
                        type: GFLoaderType.custom,
                        size: GFSize.SMALL,
                        child: Image(
                          image: AssetImage('lib/assets/gif/loader1.gif'),
                          width: 150,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      GFLoader(
                        type: GFLoaderType.custom,
                        loaderIconOne: Text('Please'),
                        loaderIconTwo: Text('Wait'),
                        loaderIconThree: Text('a moment'),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
