import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:getflutter/getflutter.dart';

class PillsButtons extends StatefulWidget {
  @override
  _PillsButtonsState createState() => _PillsButtonsState();
}

class _PillsButtonsState extends State<PillsButtons>
    with SingleTickerProviderStateMixin {
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
            'Pills Buttons',
            style: TextStyle(fontSize: 17),
          ),
          centerTitle: true,
        ),
        body: ListView(
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
                    "Solid",
                  ),
                  Tab(
                    child: Text(
                      "Outline",
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Outline 2x",
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
              height: MediaQuery.of(context).size.height - 140,
              child: GFTabBarView(
                  controller: tabController,
                  height: 400.0,
                  children: <Widget>[
                    Container(
//              color: Colors.red,
                      child: ListView(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 15, top: 30),
                            child: GFTypography(
                              text: 'Default',
                              type: GFTypographyType.typo5,
                              dividerWidth: 25,
                              dividerColor: Color(0xFF19CA4B),
                            ),
                          ),
                          GFCard(
                            content: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GFButton(
                                      onPressed: () {},
                                      shape: GFButtonShape.pills,
                                      child: Text(
                                        "Primary",
                                      ),
                                      color: GFColor.primary,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Secondary",
                                      ),
                                      color: GFColor.secondary,
                                      shape: GFButtonShape.pills,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Success",
                                      ),
                                      shape: GFButtonShape.pills,
                                      color: GFColor.success,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Warning",
                                      ),
                                      shape: GFButtonShape.pills,
                                      color: GFColor.warning,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Danger",
                                      ),
                                      shape: GFButtonShape.pills,
                                      color: GFColor.danger,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Info",
                                      ),
                                      shape: GFButtonShape.pills,
                                      color: GFColor.info,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Light",
                                      ),
                                      shape: GFButtonShape.pills,
                                      color: GFColor.light,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Dark",
                                      ),
                                      shape: GFButtonShape.pills,
                                      color: GFColor.dark,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Link",
                                      ),
                                      shape: GFButtonShape.pills,
                                      color: GFColor.transparent,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15, top: 10),
                            child: GFTypography(
                              text: 'Disabled State',
                              type: GFTypographyType.typo5,
                              dividerWidth: 25,
                              dividerColor: Color(0xFF19CA4B),
                            ),
                          ),
                          GFCard(
                            content: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GFButton(
                                      onPressed: null,
                                      shape: GFButtonShape.pills,
                                      child: Text(
                                        "Primary",
                                      ),
                                      color: GFColor.primary,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text(
                                        "Secondary",
                                      ),
                                      color: GFColor.secondary,
                                      shape: GFButtonShape.pills,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text(
                                        "Success",
                                      ),
                                      shape: GFButtonShape.pills,
                                      color: GFColor.success,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GFButton(
                                      onPressed: null,
                                      child: Text(
                                        "Warning",
                                      ),
                                      shape: GFButtonShape.pills,
                                      color: GFColor.warning,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text(
                                        "Danger",
                                      ),
                                      shape: GFButtonShape.pills,
                                      color: GFColor.danger,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text(
                                        "Info",
                                      ),
                                      shape: GFButtonShape.pills,
                                      color: GFColor.info,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GFButton(
                                      onPressed: null,
                                      child: Text(
                                        "Light",
                                      ),
                                      shape: GFButtonShape.pills,
                                      color: GFColor.light,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text(
                                        "Dark",
                                      ),
                                      shape: GFButtonShape.pills,
                                      color: GFColor.dark,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Link",
                                      ),
                                      shape: GFButtonShape.pills,
                                      color: GFColor.transparent,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15, top: 10),
                            child: GFTypography(
                              text: 'Button Sizes',
                              type: GFTypographyType.typo5,
                              dividerWidth: 25,
                              dividerColor: Color(0xFF19CA4B),
                            ),
                          ),
                          GFCard(
                            content: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GFButton(
                                      onPressed: () {},
                                      child: Text("Large",
                                          style: TextStyle(
                                              color: GFColors.getGFColor(
                                                  GFColor.white))),
                                      color: GFColor.primary,
                                      size: GFSize.large,
                                      shape: GFButtonShape.pills,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text("Normal",
                                          style: TextStyle(
                                              color: GFColors.getGFColor(
                                                  GFColor.white))),
                                      color: GFColor.primary,
                                      size: GFSize.medium,
                                      shape: GFButtonShape.pills,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text("Small",
                                          style: TextStyle(
                                              color: GFColors.getGFColor(
                                                  GFColor.white))),
                                      color: GFColor.primary,
                                      size: GFSize.small,
                                      shape: GFButtonShape.pills,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15, top: 10),
                            child: GFTypography(
                              text: 'Block Buttons',
                              type: GFTypographyType.typo5,
                              dividerWidth: 25,
                              dividerColor: Color(0xFF19CA4B),
                            ),
                          ),
                          GFCard(
                            content: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                GFButton(
                                  onPressed: () {},
                                  blockButton: true,
                                  child: Text("Large",
                                      style: TextStyle(
                                          color: GFColors.getGFColor(
                                              GFColor.white))),
                                  color: GFColor.primary,
                                  size: GFSize.large,
                                  shape: GFButtonShape.pills,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                GFButton(
                                  onPressed: () {},
                                  blockButton: true,
                                  child: Text("Normal",
                                      style: TextStyle(
                                          color: GFColors.getGFColor(
                                              GFColor.white))),
                                  color: GFColor.primary,
                                  size: GFSize.medium,
                                  shape: GFButtonShape.pills,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                GFButton(
                                  onPressed: () {},
                                  blockButton: true,
                                  child: Text("Small",
                                      style: TextStyle(
                                          color: GFColors.getGFColor(
                                              GFColor.white))),
                                  color: GFColor.primary,
                                  size: GFSize.small,
                                  shape: GFButtonShape.pills,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    //tab 2
                    Container(
//              color: Colors.red,
                      child: ListView(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 15, top: 30),
                            child: GFTypography(
                              text: 'Default',
                              type: GFTypographyType.typo5,
                              dividerWidth: 25,
                              dividerColor: Color(0xFF19CA4B),
                            ),
                          ),
                          GFCard(
                            content: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GFButton(
                                      onPressed: () {},
                                      shape: GFButtonShape.pills,
                                      child: Text(
                                        "Primary",
                                      ),
                                      type: GFButtonType.outline,
                                      color: GFColor.primary,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Secondary",
                                      ),
                                      color: GFColor.secondary,
                                      type: GFButtonType.outline,
                                      shape: GFButtonShape.pills,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Success",
                                      ),
                                      type: GFButtonType.outline,
                                      shape: GFButtonShape.pills,
                                      color: GFColor.success,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Warning",
                                      ),
                                      type: GFButtonType.outline,
                                      shape: GFButtonShape.pills,
                                      color: GFColor.warning,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Danger",
                                      ),
                                      type: GFButtonType.outline,
                                      shape: GFButtonShape.pills,
                                      color: GFColor.danger,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Info",
                                      ),
                                      type: GFButtonType.outline,
                                      shape: GFButtonShape.pills,
                                      color: GFColor.info,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Light",
                                      ),
                                      type: GFButtonType.outline,
                                      shape: GFButtonShape.pills,
                                      color: GFColor.light,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Dark",
                                      ),
                                      type: GFButtonType.outline,
                                      shape: GFButtonShape.pills,
                                      color: GFColor.dark,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Link",
                                      ),
                                      type: GFButtonType.outline,
                                      shape: GFButtonShape.pills,
                                      color: GFColor.transparent,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15, top: 10),
                            child: GFTypography(
                              text: 'Disabled State',
                              type: GFTypographyType.typo5,
                              dividerWidth: 25,
                              dividerColor: Color(0xFF19CA4B),
                            ),
                          ),
                          GFCard(
                            content: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GFButton(
                                      onPressed: null,
                                      shape: GFButtonShape.pills,
                                      child: Text(
                                        "Primary",
                                      ),
                                      type: GFButtonType.outline,
                                      color: GFColor.primary,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text(
                                        "Secondary",
                                      ),
                                      color: GFColor.secondary,
                                      type: GFButtonType.outline,
                                      shape: GFButtonShape.pills,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text(
                                        "Success",
                                      ),
                                      type: GFButtonType.outline,
                                      shape: GFButtonShape.pills,
                                      color: GFColor.success,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GFButton(
                                      onPressed: null,
                                      child: Text(
                                        "Warning",
                                      ),
                                      type: GFButtonType.outline,
                                      shape: GFButtonShape.pills,
                                      color: GFColor.warning,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text(
                                        "Danger",
                                      ),
                                      type: GFButtonType.outline,
                                      shape: GFButtonShape.pills,
                                      color: GFColor.danger,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text(
                                        "Info",
                                      ),
                                      type: GFButtonType.outline,
                                      shape: GFButtonShape.pills,
                                      color: GFColor.info,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GFButton(
                                      onPressed: null,
                                      child: Text(
                                        "Light",
                                      ),
                                      type: GFButtonType.outline,
                                      shape: GFButtonShape.pills,
                                      color: GFColor.light,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text(
                                        "Dark",
                                      ),
                                      type: GFButtonType.outline,
                                      shape: GFButtonShape.pills,
                                      color: GFColor.dark,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Link",
                                      ),
                                      type: GFButtonType.outline,
                                      shape: GFButtonShape.pills,
                                      color: GFColor.transparent,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15, top: 10),
                            child: GFTypography(
                              text: 'Button Sizes',
                              type: GFTypographyType.typo5,
                              dividerWidth: 25,
                              dividerColor: Color(0xFF19CA4B),
                            ),
                          ),
                          GFCard(
                            content: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Large",
                                      ),
                                      color: GFColor.primary,
                                      size: GFSize.large,
                                      type: GFButtonType.outline,
                                      shape: GFButtonShape.pills,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Normal",
                                      ),
                                      color: GFColor.primary,
                                      size: GFSize.medium,
                                      type: GFButtonType.outline,
                                      shape: GFButtonShape.pills,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Small",
                                      ),
                                      color: GFColor.primary,
                                      size: GFSize.small,
                                      type: GFButtonType.outline,
                                      shape: GFButtonShape.pills,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15, top: 20),
                            child: GFTypography(
                              text: 'Block Buttons',
                              type: GFTypographyType.typo5,
                              dividerWidth: 25,
                              dividerColor: Color(0xFF19CA4B),
                            ),
                          ),
                          GFCard(
                            content: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                GFButton(
                                  onPressed: () {},
                                  blockButton: true,
                                  child: Text(
                                    "Large",
                                  ),
                                  color: GFColor.primary,
                                  size: GFSize.large,
                                  type: GFButtonType.outline,
                                  shape: GFButtonShape.pills,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                GFButton(
                                  onPressed: () {},
                                  blockButton: true,
                                  child: Text(
                                    "Normal",
                                  ),
                                  color: GFColor.primary,
                                  size: GFSize.medium,
                                  type: GFButtonType.outline,
                                  shape: GFButtonShape.pills,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                GFButton(
                                  onPressed: () {},
                                  blockButton: true,
                                  child: Text(
                                    "Small",
                                  ),
                                  color: GFColor.primary,
                                  size: GFSize.small,
                                  type: GFButtonType.outline,
                                  shape: GFButtonShape.pills,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    //tab 3
                    Container(
//              color: Colors.red,
                      child: ListView(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 15, top: 30),
                            child: GFTypography(
                              text: 'Default',
                              type: GFTypographyType.typo5,
                              dividerWidth: 25,
                              dividerColor: Color(0xFF19CA4B),
                            ),
                          ),
                          GFCard(
                            content: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GFButton(
                                      onPressed: () {},
                                      shape: GFButtonShape.pills,
                                      child: Text(
                                        "Primary",
                                      ),
                                      type: GFButtonType.outline2x,
                                      color: GFColor.primary,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Secondary",
                                      ),
                                      color: GFColor.secondary,
                                      type: GFButtonType.outline2x,
                                      shape: GFButtonShape.pills,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Success",
                                      ),
                                      type: GFButtonType.outline2x,
                                      shape: GFButtonShape.pills,
                                      color: GFColor.success,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Warning",
                                      ),
                                      type: GFButtonType.outline2x,
                                      shape: GFButtonShape.pills,
                                      color: GFColor.warning,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Danger",
                                      ),
                                      type: GFButtonType.outline2x,
                                      shape: GFButtonShape.pills,
                                      color: GFColor.danger,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Info",
                                      ),
                                      type: GFButtonType.outline2x,
                                      shape: GFButtonShape.pills,
                                      color: GFColor.info,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Light",
                                      ),
                                      type: GFButtonType.outline2x,
                                      shape: GFButtonShape.pills,
                                      color: GFColor.light,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Dark",
                                      ),
                                      type: GFButtonType.outline2x,
                                      shape: GFButtonShape.pills,
                                      color: GFColor.dark,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Link",
                                      ),
                                      type: GFButtonType.outline2x,
                                      shape: GFButtonShape.pills,
                                      color: GFColor.transparent,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15, top: 10),
                            child: GFTypography(
                              text: 'Disabled State',
                              type: GFTypographyType.typo5,
                              dividerWidth: 25,
                              dividerColor: Color(0xFF19CA4B),
                            ),
                          ),
                          GFCard(
                            content: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GFButton(
                                      onPressed: null,
                                      shape: GFButtonShape.pills,
                                      child: Text(
                                        "Primary",
                                      ),
                                      type: GFButtonType.outline2x,
                                      color: GFColor.primary,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text(
                                        "Secondary",
                                      ),
                                      color: GFColor.secondary,
                                      type: GFButtonType.outline2x,
                                      shape: GFButtonShape.pills,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text(
                                        "Success",
                                      ),
                                      type: GFButtonType.outline2x,
                                      shape: GFButtonShape.pills,
                                      color: GFColor.success,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GFButton(
                                      onPressed: null,
                                      child: Text(
                                        "Warning",
                                      ),
                                      type: GFButtonType.outline2x,
                                      shape: GFButtonShape.pills,
                                      color: GFColor.warning,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text(
                                        "Danger",
                                      ),
                                      type: GFButtonType.outline2x,
                                      shape: GFButtonShape.pills,
                                      color: GFColor.danger,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text(
                                        "Info",
                                      ),
                                      type: GFButtonType.outline2x,
                                      shape: GFButtonShape.pills,
                                      color: GFColor.info,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GFButton(
                                      onPressed: null,
                                      child: Text(
                                        "Light",
                                      ),
                                      type: GFButtonType.outline2x,
                                      shape: GFButtonShape.pills,
                                      color: GFColor.light,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text(
                                        "Dark",
                                      ),
                                      type: GFButtonType.outline2x,
                                      shape: GFButtonShape.pills,
                                      color: GFColor.dark,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Link",
                                      ),
                                      type: GFButtonType.outline2x,
                                      shape: GFButtonShape.pills,
                                      color: GFColor.transparent,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15, top: 10),
                            child: GFTypography(
                              text: 'Button Sizes',
                              type: GFTypographyType.typo5,
                              dividerWidth: 25,
                              dividerColor: Color(0xFF19CA4B),
                            ),
                          ),
                          GFCard(
                            content: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Large",
                                      ),
                                      color: GFColor.primary,
                                      size: GFSize.large,
                                      type: GFButtonType.outline2x,
                                      shape: GFButtonShape.pills,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Normal",
                                      ),
                                      color: GFColor.primary,
                                      size: GFSize.medium,
                                      type: GFButtonType.outline2x,
                                      shape: GFButtonShape.pills,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Small",
                                      ),
                                      color: GFColor.primary,
                                      size: GFSize.small,
                                      type: GFButtonType.outline2x,
                                      shape: GFButtonShape.pills,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15, top: 20),
                            child: GFTypography(
                              text: 'Block Buttons',
                              type: GFTypographyType.typo5,
                              dividerWidth: 25,
                              dividerColor: Color(0xFF19CA4B),
                            ),
                          ),
                          GFCard(
                            content: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                GFButton(
                                  onPressed: () {},
                                  blockButton: true,
                                  child: Text(
                                    "Large",
                                  ),
                                  color: GFColor.primary,
                                  size: GFSize.large,
                                  type: GFButtonType.outline2x,
                                  shape: GFButtonShape.pills,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                GFButton(
                                  onPressed: () {},
                                  blockButton: true,
                                  child: Text(
                                    "Normal",
                                  ),
                                  color: GFColor.primary,
                                  size: GFSize.medium,
                                  type: GFButtonType.outline2x,
                                  shape: GFButtonShape.pills,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                GFButton(
                                  onPressed: () {},
                                  blockButton: true,
                                  child: Text(
                                    "Small",
                                  ),
                                  color: GFColor.primary,
                                  size: GFSize.small,
                                  type: GFButtonType.outline2x,
                                  shape: GFButtonShape.pills,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
            )
          ],
        ));
  }
}
