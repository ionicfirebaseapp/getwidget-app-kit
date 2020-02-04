import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';
import 'package:flutter/cupertino.dart';

class BottomIconTab extends StatefulWidget {
  @override
  _BottomIconTabState createState() => _BottomIconTabState();
}

class _BottomIconTabState extends State<BottomIconTab>
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
          'Bottom Icon Tabs',
          style: TextStyle(fontSize: 17),
        ),
        centerTitle: true,
      ),
      body:
            Container(
                height: MediaQuery.of(context).size.height,
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

          ),

      bottomNavigationBar:   Container(
        child:  GFTabBar(
          initialIndex: 0,
          length: 1,
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
          indicatorColor: GFColors.getGFColor(GFColor.success),
//        indicatorSize: TabBarIndicatorSize.label,
          labelColor: GFColors.getGFColor(GFColor.success),
          labelPadding: EdgeInsets.all(8.0),
          tabBarColor: GFColors.getGFColor(GFColor.dark),
          unselectedLabelColor:
          GFColors.getGFColor(GFColor.white),
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
      ),





    );
  }
}
