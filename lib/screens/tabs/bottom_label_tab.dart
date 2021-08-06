import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:flutter/cupertino.dart';

class BottomLabelTab extends StatefulWidget {
  @override
  _BottomLabelTabState createState() => _BottomLabelTabState();
}

class _BottomLabelTabState extends State<BottomLabelTab>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController!.dispose();
    super.dispose();
  }

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
            'Bottom Labeled Tabs',
            style: TextStyle(fontSize: 17),
          ),
          centerTitle: true,
        ),
        body: Container(
            height: MediaQuery.of(context).size.height,
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
            )),
        bottomNavigationBar: Container(
          child: GFTabBar(
            length: 1,
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
            indicatorColor: GFColors.SUCCESS,
            labelColor: GFColors.SUCCESS,
            labelPadding: const EdgeInsets.all(8),
            tabBarColor: GFColors.DARK,
            unselectedLabelColor: GFColors.WHITE,
            labelStyle: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 13,
              color: Colors.white,
              fontFamily: 'OpenSansBold',
            ),
            unselectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 13,
              color: Colors.black,
              fontFamily: 'OpenSansBold',
            ),
          ),
        ),
      );
}
