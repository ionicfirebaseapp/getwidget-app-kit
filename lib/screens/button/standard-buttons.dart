import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:getflutter/getflutter.dart';

class StandardButtons extends StatefulWidget {
  @override
  _StandardButtonsState createState() => _StandardButtonsState();
}

class _StandardButtonsState extends State<StandardButtons>
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
            'Standard Buttons',
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
                                      shape: GFButtonShape.standard,
                                      child: Text("Primary",
                                          style: TextStyle(
                                              color: GFColors.getGFColor(
                                                  GFColor.white))),
                                      color: GFColor.primary,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text("Secondary",
                                          style: TextStyle(
                                              color: GFColors.getGFColor(
                                                  GFColor.white))),
                                      color: GFColor.secondary,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Success",
                                      ),
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
                                      color: GFColor.warning,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text("Danger",
                                          style: TextStyle(
                                              color: GFColors.getGFColor(
                                                  GFColor.white))),
                                      color: GFColor.danger,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Info",
                                      ),
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
                                      color: GFColor.light,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Dark",
                                        style: TextStyle(
                                            color: GFColors.getGFColor(
                                                GFColor.white)),
                                      ),
                                      color: GFColor.dark,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Link",
                                      ),
                                      type: GFButtonType.solid,
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
                                      shape: GFButtonShape.standard,
                                      child: Text("Primary",
                                          style: TextStyle(
                                              color: GFColors.getGFColor(
                                                  GFColor.white))),
                                      color: GFColor.primary,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text("Secondary",
                                          style: TextStyle(
                                              color: GFColors.getGFColor(
                                                  GFColor.white))),
                                      color: GFColor.secondary,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text(
                                        "Success",
                                      ),
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
                                      color: GFColor.warning,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text("Danger",
                                          style: TextStyle(
                                              color: GFColors.getGFColor(
                                                  GFColor.white))),
                                      color: GFColor.danger,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text(
                                        "Info",
                                      ),
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
                                      color: GFColor.light,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text(
                                        "Dark",
                                        style: TextStyle(
                                            color: GFColors.getGFColor(
                                                GFColor.white)),
                                      ),
                                      color: GFColor.dark,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Link",
                                      ),
                                      type: GFButtonType.solid,
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
                              text: 'Transparent Buttons',
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
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Primary",
                                      ),
                                      type: GFButtonType.transparent,
                                      textColor: GFColor.primary,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Secondary",
                                      ),
                                      type: GFButtonType.transparent,
                                      textColor: GFColor.secondary,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Success",
                                      ),
                                      type: GFButtonType.transparent,
                                      textColor: GFColor.success,
                                    ),
                                  ],
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
                                      type: GFButtonType.transparent,
                                      textColor: GFColor.warning,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Danger",
                                      ),
                                      type: GFButtonType.transparent,
                                      textColor: GFColor.danger,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Info",
                                      ),
                                      type: GFButtonType.transparent,
                                      textColor: GFColor.info,
                                    ),
                                  ],
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
                                      type: GFButtonType.transparent,
                                      textColor: GFColor.light,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Dark",
                                      ),
                                      type: GFButtonType.transparent,
                                      textColor: GFColor.dark,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Link",
                                      ),
                                      type: GFButtonType.transparent,
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
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text("Normal",
                                          style: TextStyle(
                                              color: GFColors.getGFColor(
                                                  GFColor.white))),
                                      color: GFColor.primary,
                                      size: GFSize.medium,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text("Small",
                                          style: TextStyle(
                                              color: GFColors.getGFColor(
                                                  GFColor.white))),
                                      color: GFColor.primary,
                                      size: GFSize.small,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ],
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
                              text: 'Full Width Buttons',
                              type: GFTypographyType.typo5,
                              dividerWidth: 25,
                              dividerColor: Color(0xFF19CA4B),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                height: 10,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: Text("Large",
                                    style: TextStyle(
                                        color: GFColors.getGFColor(
                                            GFColor.white))),
                                color: GFColor.primary,
                                size: GFSize.large,
                                fullWidthButton: true,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: Text("Normal",
                                    style: TextStyle(
                                        color: GFColors.getGFColor(
                                            GFColor.white))),
                                color: GFColor.primary,
                                size: GFSize.medium,
                                fullWidthButton: true,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: Text("Small",
                                    style: TextStyle(
                                        color: GFColors.getGFColor(
                                            GFColor.white))),
                                color: GFColor.primary,
                                size: GFSize.small,
                                fullWidthButton: true,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
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
                                      child: Text(
                                        "Primary",
                                      ),
                                      type: GFButtonType.outline,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text("Secondary"),
                                      type: GFButtonType.outline,
                                      color: GFColor.secondary,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Success",
                                      ),
                                      type: GFButtonType.outline,
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
                                      color: GFColor.warning,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Danger",
                                      ),
                                      type: GFButtonType.outline,
                                      color: GFColor.danger,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Info",
                                      ),
                                      type: GFButtonType.outline,
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
                                      color: GFColor.light,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Dark",
                                      ),
                                      type: GFButtonType.outline,
                                      color: GFColor.dark,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Link",
                                      ),
                                      type: GFButtonType.transparent,
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
                                      child: Text(
                                        "Primary",
                                      ),
                                      type: GFButtonType.outline,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text("Secondary"),
                                      type: GFButtonType.outline,
                                      color: GFColor.secondary,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text(
                                        "Success",
                                      ),
                                      type: GFButtonType.outline,
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
                                      color: GFColor.warning,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text(
                                        "Danger",
                                      ),
                                      type: GFButtonType.outline,
                                      color: GFColor.danger,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text(
                                        "Info",
                                      ),
                                      type: GFButtonType.outline,
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
                                      color: GFColor.light,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text(
                                        "Dark",
                                      ),
                                      type: GFButtonType.outline,
                                      color: GFColor.dark,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Link",
                                      ),
                                      type: GFButtonType.transparent,
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
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Normal",
                                      ),
                                      color: GFColor.primary,
                                      size: GFSize.medium,
                                      type: GFButtonType.outline,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Small",
                                      ),
                                      color: GFColor.primary,
                                      size: GFSize.small,
                                      type: GFButtonType.outline,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ],
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
                                  child: Text(
                                    "Large",
                                  ),
                                  color: GFColor.primary,
                                  size: GFSize.large,
                                  type: GFButtonType.outline,
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
                                      child: Text(
                                        "Primary",
                                      ),
                                      type: GFButtonType.outline2x,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text("Secondary"),
                                      type: GFButtonType.outline2x,
                                      color: GFColor.secondary,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Success",
                                      ),
                                      type: GFButtonType.outline2x,
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
                                      color: GFColor.warning,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Danger",
                                      ),
                                      type: GFButtonType.outline2x,
                                      color: GFColor.danger,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Info",
                                      ),
                                      type: GFButtonType.outline2x,
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
                                      color: GFColor.light,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Dark",
                                      ),
                                      type: GFButtonType.outline2x,
                                      color: GFColor.dark,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Link",
                                      ),
                                      type: GFButtonType.transparent,
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
                                      child: Text(
                                        "Primary",
                                      ),
                                      type: GFButtonType.outline2x,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text("Secondary"),
                                      type: GFButtonType.outline2x,
                                      color: GFColor.secondary,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text(
                                        "Success",
                                      ),
                                      type: GFButtonType.outline2x,
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
                                      color: GFColor.warning,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text(
                                        "Danger",
                                      ),
                                      type: GFButtonType.outline2x,
                                      color: GFColor.danger,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text(
                                        "Info",
                                      ),
                                      type: GFButtonType.outline2x,
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
                                      color: GFColor.light,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text(
                                        "Dark",
                                      ),
                                      type: GFButtonType.outline2x,
                                      color: GFColor.dark,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Link",
                                      ),
                                      type: GFButtonType.transparent,
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
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Normal",
                                      ),
                                      color: GFColor.primary,
                                      size: GFSize.medium,
                                      type: GFButtonType.outline2x,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Small",
                                      ),
                                      color: GFColor.primary,
                                      size: GFSize.small,
                                      type: GFButtonType.outline2x,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ],
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
                                  child: Text(
                                    "Large",
                                  ),
                                  color: GFColor.primary,
                                  size: GFSize.large,
                                  type: GFButtonType.outline2x,
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
