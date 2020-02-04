import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';
import 'package:flutter/cupertino.dart';

class IconTabs extends StatefulWidget {
  @override
  _IconTabsState createState() => _IconTabsState();
}

class _IconTabsState extends State<IconTabs> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GFAppBar(
        backgroundColor: GFColors.getGFColor(GFColor.dark),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
//          child: SvgPicture.asset('lib/assets/icons/back.svg',),
            child: Container(
              child: Icon(
                CupertinoIcons.back,
                color: GFColors.getGFColor(GFColor.success),
              ),
            )),
        title: Text(
          'Icon Tabs',
          style: TextStyle(fontSize: 17),
        ),
        centerTitle: true,
      ),

      body:
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                  height: 65,

                  color: GFColors.getGFColor(GFColor.danger),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            color: GFColors.getGFColor(GFColor.danger),
                            border: Border(
                                top: BorderSide(
                                    color:
                                    GFColors.getGFColor(GFColor.light)))),
                      ),
                      GFTabBar(
                        initialIndex: 0,
                        length: 4,
                        controller: tabController,
                        tabs: [
                          Icon(
                            Icons.home,
                          ),
                          Icon(
                            Icons.music_note,
                          ),
                          Icon(
                            Icons.games,
                          ),
                          Icon(
                            Icons.notifications,
                          ),
                        ],
                        indicatorColor: Colors.teal,

//        indicatorSize: TabBarIndicatorSize.label,
                        labelColor: GFColors.getGFColor(GFColor.success),
                        labelPadding: EdgeInsets.all(8.0),
                        tabBarColor: GFColors.getGFColor(GFColor.white),
                        unselectedLabelColor:
                        GFColors.getGFColor(GFColor.light),
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0,
                          color: Colors.white,
                          fontFamily: 'OpenSansBold',
                        ),
                        unselectedLabelStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0,
                          color: Colors.black,
                          fontFamily: 'OpenSansBold',
                        ),
                      ),
                    ],
                  )),

              Container(
                  height: MediaQuery.of(context).size.height-145,
                  child: GFTabBarView(
                    controller: tabController,
                    children: <Widget>[
                      Center(
                        child:  Icon(
                          Icons.home,
                          size: 150,
                          color: Colors.grey.withOpacity(0.44),
                        ),
                      ),
                      Center(
                        child:Icon(
                          Icons.music_note,
                          size: 150,
                          color: Colors.grey.withOpacity(0.44),
                        ),
                      ),
                      Center(
                        child: Icon(
                          Icons.games,
                          size: 150,
                          color: Colors.grey.withOpacity(0.44),
                        ),
                      ),
                      Center(
                        child: Icon(
                          Icons.notifications,
                          size: 150,
                          color: Colors.grey.withOpacity(0.44),
                        ),
                      )
                    ],
                  )
              )
            ],
          ),

    );
  }
}
