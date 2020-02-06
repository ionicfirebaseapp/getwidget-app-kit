import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';
import 'package:flutter/cupertino.dart';

class LabeledTabs extends StatefulWidget {
  @override
  _LabeledTabsState createState() => _LabeledTabsState();
}

class _LabeledTabsState extends State<LabeledTabs>
    with SingleTickerProviderStateMixin {
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
  Widget build(BuildContext context) => Scaffold(
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
          title: const Text(
            'Labeled Tabs',
            style: TextStyle(fontSize: 17),
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: GFColors.getGFColor(GFColor.danger),
                  border: Border(
                      top: BorderSide(
                          color: GFColors.getGFColor(GFColor.light)))),
            ),
            GFTabBar(
              initialIndex: 0,
              length: 4,
              controller: tabController,
              tabs: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.home,
                    ),
                    const Text(
                      'Home',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.music_note,
                    ),
                    const Text(
                      'Music',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.games,
                    ),
                    const Text(
                      'Games',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.notifications,
                    ),
                    const Text(
                      'Notifications',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    )
                  ],
                ),
              ],
              indicatorColor: Colors.teal,

//        indicatorSize: TabBarIndicatorSize.label,
              labelColor: GFColors.getGFColor(GFColor.success),
              labelPadding: const EdgeInsets.all(8),

              tabBarColor: GFColors.getGFColor(GFColor.white),
              unselectedLabelColor: GFColors.getGFColor(GFColor.light),
              labelStyle: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 13,
                color: Colors.white,
                fontFamily: 'OpenSansBold',
              ),

              unselectedLabelStyle: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 13,
                color: Colors.black,
                fontFamily: 'OpenSansBold',
              ),
            ),
            Container(
                height: MediaQuery.of(context).size.height - 159,
                child: GFTabBarView(
                  controller: tabController,
                  children: <Widget>[
                    Center(
                      child: Icon(
                        Icons.home,
                        size: 150,
                        color: Colors.grey.withOpacity(0.44),
                      ),
                    ),
                    Center(
                      child: Icon(
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
                ))
          ],
        ),
      );
}
