import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';
import 'package:flutter/cupertino.dart';

class SegmentTabsPage extends StatefulWidget {
  @override
  _SegmentTabsPageState createState() => _SegmentTabsPageState();
}

class _SegmentTabsPageState extends State<SegmentTabsPage> with SingleTickerProviderStateMixin {
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
          'Segmented Tabs',
          style: TextStyle(fontSize: 17),
        ),
        centerTitle: true,
      ),
      body:  ListView(
        children: <Widget>[
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
                  "Tab 1",
                ),
                Tab(
                  child: Text(
                    "Tab 2",
                  ),
                ),
                Tab(
                  child: Text(
                    "Tab 3",
                  ),
                ),
              ],
              tabBarColor: GFColors.getGFColor(GFColor.light),
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: GFColors.getGFColor(GFColor.white),
              unselectedLabelColor: GFColors.getGFColor(GFColor.dark),
              indicator: BoxDecoration(
                color: GFColors.getGFColor(GFColor.dark),
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
//
//
          ),

          Container(
            height: MediaQuery.of(context).size.height-140,
            child: GFTabBarView(
                controller: tabController,
              children: <Widget>[
                Center(
                  child: Text('Tab 1'),
                ),
                Center(
                  child: Text('Tab 2'),
                ),
                Center(
                  child: Text('Tab 3'),
                )
              ],
            )
          )
        ],
      )

    );
  }
}
