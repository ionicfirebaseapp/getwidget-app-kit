import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';
import 'package:flutter/cupertino.dart';

class Images extends StatefulWidget {
  @override
  _ImagesState createState() => _ImagesState();
}

class _ImagesState extends State<Images> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          title: Text(
            'Images',
            style: TextStyle(fontSize: 17),
          ),
          centerTitle: true,
        ),
        body: ListView(children: <Widget>[
          Container(
            height: 40,
            margin: EdgeInsets.only(top: 20, left: 25, right: 25),
            child: GFSegmentTabs(
              tabController: tabController,
//              height: 38.0,
              width: 280.0,
              initialIndex: 0,
              length: 3,
              tabs: <Widget>[
                Text(
                  "Basic",
                ),
                Tab(
                  child: Text(
                    "Circular",
                  ),
                ),
                Tab(
                  child: Text(
                    "Overlays",
                  ),
                ),
              ],
              tabBarColor: GFColors.getGFColor(GFColor.light),
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: GFColors.getGFColor(GFColor.white),
              unselectedLabelColor: GFColors.getGFColor(GFColor.dark),
              indicator: BoxDecoration(
                color: Colors.black,
                border: Border(
                  bottom: BorderSide(
                    color: GFColors.getGFColor(GFColor.success),
                    width: 3.0,
                  ),
                ),
//                borderRadius: BorderRadius.circular(2.0)
              ),
              indicatorPadding: EdgeInsets.all(8.0),
              indicatorWeight: 2.0,
              border: Border.all(color: Colors.white, width: 2.0),
            ),
          ),
          Container(
              height: MediaQuery.of(context).size.height - 140,
              child: GFTabBarView(
                  controller: tabController,
                  height: 400.0,
                  children: <Widget>[
                    Container(
                      child: ListView(
                        children: <Widget>[
                          GFCard(
                            content: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                GFImageOverlay(
                                  height: 200,
                                  width: 300,
                                  image: AssetImage(
                                      'lib/assets/images/image2.png'),
                                )
                              ],
                            ),
                          ),
                          GFCard(
                            content: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                GFImageOverlay(
                                  height: 200,
                                  width: 300,
                                  image:
                                      AssetImage('lib/assets/images/image.png'),
                                )
                              ],
                            ),
                          ),
                          GFCard(
                            content: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                GFImageOverlay(
                                  height: 200,
                                  width: 300,
                                  image: AssetImage(
                                      'lib/assets/images/image1.png'),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      child: Column(
                        children: <Widget>[
                          GFCard(
                            content: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                GFImageOverlay(
                                  height: 140,
                                  width: 140,
                                  shape: BoxShape.circle,
                                  image:
                                      AssetImage('lib/assets/images/img.png'),
                                ),
                                GFImageOverlay(
                                    height: 140,
                                    width: 140,
                                    shape: BoxShape.circle,
                                    image: AssetImage(
                                      'lib/assets/images/img1.png',
                                    ))
                              ],
                            ),
                          ),
                          GFCard(
                            content: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                GFImageOverlay(
                                  height: 200,
                                  width: 200,
                                  shape: BoxShape.circle,
                                  image:
                                      AssetImage('lib/assets/images/img2.png'),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

//      Container(
//        child:  ListView(
//          children: <Widget>[
//            GFCard(
//              content:Row(
//                mainAxisAlignment:MainAxisAlignment.center,
//                children: <Widget>[
//                  GFImageOverlay(
//                    height: 250,
//                    width: 250,
//                    shape: BoxShape.circle,
//                    image: AssetImage('lib/assets/images/image1.png'),)
//
//                ],
//              ),
//            ),
//
//            GFCard(
//              content:Row(
//                mainAxisAlignment:MainAxisAlignment.center,
//                children: <Widget>[
//                  GFImageOverlay(
//                    height: 250,
//                    width: 250,
//                    shape: BoxShape.circle,
//                    image: AssetImage('lib/assets/images/image1.png'),)
//
//                ],
//              ),
//            ),
//
//            GFCard(
//              content:Row(
//                mainAxisAlignment:MainAxisAlignment.center,
//                children: <Widget>[
//                  GFImageOverlay(
//                    height: 250,
//                    width: 250,
//                    shape: BoxShape.circle,
//                    image: AssetImage('lib/assets/images/image1.png'),)
//
//                ],
//              ),
//            ),
//
//          ],
//        ),
//      ),
                    Container(
                      child: ListView(
                        children: <Widget>[
                          GFCard(
                            content: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                GFImageOverlay(
                                  height: 200,
                                  width: 300,
                                  child: Center(
                                    child: Text(
                                      'Light Overlay',
                                      style: TextStyle(
                                          color: GFColors.getGFColor(
                                              GFColor.white)),
                                    ),
                                  ),
                                  colorFilter: new ColorFilter.mode(
                                      Colors.black.withOpacity(0.20),
                                      BlendMode.darken),
                                  image: AssetImage(
                                      'lib/assets/images/image1.png'),
                                ),
                              ],
                            ),
                          ),
                          GFCard(
                            content: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                GFImageOverlay(
                                  height: 200,
                                  width: 300,
                                  child: Center(
                                      child: Text(
                                    'Medium Overlay',
                                    style: TextStyle(
                                        color:
                                            GFColors.getGFColor(GFColor.white)),
                                  )),
                                  colorFilter: new ColorFilter.mode(
                                      Colors.black.withOpacity(0.40),
                                      BlendMode.darken),
                                  image: AssetImage(
                                      'lib/assets/images/image1.png'),
                                ),
                              ],
                            ),
                          ),
                          GFCard(
                            content: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                GFImageOverlay(
                                  height: 200,
                                  width: 300,
                                  child: Center(
                                      child: Text(
                                    'Strong Overlay',
                                    style: TextStyle(
                                        color:
                                            GFColors.getGFColor(GFColor.white)),
                                  )),
                                  colorFilter: new ColorFilter.mode(
                                      Colors.black.withOpacity(0.60),
                                      BlendMode.darken),
                                  image: AssetImage(
                                      'lib/assets/images/image1.png'),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ]))
        ]));
  }
}
