import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:getwidget/getwidget.dart';

class StandardButtons extends StatefulWidget {
  @override
  _StandardButtonsState createState() => _StandardButtonsState();
}

class _StandardButtonsState extends State<StandardButtons>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
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
            'Standard Buttons',
            style: TextStyle(fontSize: 17),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Container(
              height: 40,
              margin: const EdgeInsets.only(top: 20, left: 25, right: 25),
              padding: EdgeInsets.all(0),
              child: GFSegmentTabs(
                tabController: tabController,
                width: 280,
                length: 3,
                tabs: const <Widget>[
                  Text('Solid'),
                  Tab(
                    child: Text('Outline'),
                  ),
                  Tab(
                    child: Text('Outline 2x'),
                  ),
                ],
                tabBarColor: GFColors.LIGHT,
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: GFColors.WHITE,
                unselectedLabelColor: GFColors.DARK,
                indicator: const BoxDecoration(
                  color: GFColors.DARK,
                  border: Border(
                    bottom: BorderSide(
                      color: GFColors.SUCCESS,
                      width: 3,
                    ),
                  ),
                ),
                // indicatorPadding: const EdgeInsets.all(8),
                // indicatorWeight: 2,
                border: Border.all(color: Colors.white, width: 2),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height - 140,
              child: GFTabBarView(
                  controller: tabController,
                  height: 400,
                  children: <Widget>[
                    Container(
                      child: ListView(
                        children: <Widget>[
                          const Padding(
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
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GFButton(
                                      onPressed: () {},
                                      shape: GFButtonShape.standard,
                                      child: const Text('Primary',
                                          style:
                                              TextStyle(color: GFColors.WHITE)),
                                      color: GFColors.PRIMARY,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Secondary',
                                          style:
                                              TextStyle(color: GFColors.WHITE)),
                                      color: GFColors.SECONDARY,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Success'),
                                      color: GFColors.SUCCESS,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Warning'),
                                      color: GFColors.WARNING,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Danger',
                                          style:
                                              TextStyle(color: GFColors.WHITE)),
                                      color: GFColors.DANGER,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Info'),
                                      color: GFColors.INFO,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Light'),
                                      color: GFColors.LIGHT,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text(
                                        'Dark',
                                        style: TextStyle(color: GFColors.WHITE),
                                      ),
                                      color: GFColors.DARK,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Link'),
                                      type: GFButtonType.solid,
                                      color: GFColors.TRANSPARENT,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                          const Padding(
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
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const <Widget>[
                                    GFButton(
                                      onPressed: null,
                                      shape: GFButtonShape.standard,
                                      child: Text('Primary',
                                          style:
                                              TextStyle(color: GFColors.WHITE)),
                                      color: GFColors.PRIMARY,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text('Secondary',
                                          style:
                                              TextStyle(color: GFColors.WHITE)),
                                      color: GFColors.SECONDARY,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text('Success'),
                                      color: GFColors.SUCCESS,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const <Widget>[
                                    GFButton(
                                      onPressed: null,
                                      child: Text('Warning'),
                                      color: GFColors.WARNING,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text('Danger',
                                          style:
                                              TextStyle(color: GFColors.WHITE)),
                                      color: GFColors.DANGER,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text('Info'),
                                      color: GFColors.INFO,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    const GFButton(
                                      onPressed: null,
                                      child: Text('Light'),
                                      color: GFColors.LIGHT,
                                    ),
                                    const GFButton(
                                      onPressed: null,
                                      child: Text(
                                        'Dark',
                                        style: TextStyle(color: GFColors.WHITE),
                                      ),
                                      color: GFColors.DARK,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Link'),
                                      type: GFButtonType.solid,
                                      color: GFColors.TRANSPARENT,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                          const Padding(
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
                                      child: const Text('Primary'),
                                      type: GFButtonType.transparent,
                                      textColor: GFColors.PRIMARY,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Secondary'),
                                      type: GFButtonType.transparent,
                                      textColor: GFColors.SECONDARY,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Success'),
                                      type: GFButtonType.transparent,
                                      textColor: GFColors.SUCCESS,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Warning'),
                                      type: GFButtonType.transparent,
                                      textColor: GFColors.WARNING,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Danger'),
                                      type: GFButtonType.transparent,
                                      textColor: GFColors.DANGER,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Info'),
                                      type: GFButtonType.transparent,
                                      textColor: GFColors.INFO,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Light'),
                                      type: GFButtonType.transparent,
                                      textColor: GFColors.LIGHT,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Dark'),
                                      type: GFButtonType.transparent,
                                      textColor: GFColors.DARK,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Link'),
                                      type: GFButtonType.transparent,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                          const Padding(
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
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Large',
                                          style:
                                              TextStyle(color: GFColors.WHITE)),
                                      color: GFColors.PRIMARY,
                                      size: GFSize.LARGE,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Normal',
                                          style:
                                              TextStyle(color: GFColors.WHITE)),
                                      color: GFColors.PRIMARY,
                                      size: GFSize.MEDIUM,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Small',
                                          style:
                                              TextStyle(color: GFColors.WHITE)),
                                      color: GFColors.PRIMARY,
                                      size: GFSize.SMALL,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Padding(
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
                                const SizedBox(
                                  height: 10,
                                ),
                                GFButton(
                                  onPressed: () {},
                                  blockButton: true,
                                  child: const Text('Large',
                                      style: TextStyle(color: GFColors.WHITE)),
                                  color: GFColors.PRIMARY,
                                  size: GFSize.LARGE,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                GFButton(
                                  onPressed: () {},
                                  blockButton: true,
                                  child: const Text('Normal',
                                      style: TextStyle(color: GFColors.WHITE)),
                                  color: GFColors.PRIMARY,
                                  size: GFSize.MEDIUM,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                GFButton(
                                  onPressed: () {},
                                  blockButton: true,
                                  child: const Text('Small',
                                      style: TextStyle(color: GFColors.WHITE)),
                                  color: GFColors.PRIMARY,
                                  size: GFSize.SMALL,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                          const Padding(
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
                              const SizedBox(
                                height: 10,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text('Large',
                                    style: TextStyle(color: GFColors.WHITE)),
                                color: GFColors.PRIMARY,
                                size: GFSize.LARGE,
                                fullWidthButton: true,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text('Normal',
                                    style: TextStyle(color: GFColors.WHITE)),
                                color: GFColors.PRIMARY,
                                size: GFSize.MEDIUM,
                                fullWidthButton: true,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text('Small',
                                    style: TextStyle(color: GFColors.WHITE)),
                                color: GFColors.PRIMARY,
                                size: GFSize.SMALL,
                                fullWidthButton: true,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: ListView(
                        children: <Widget>[
                          const Padding(
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
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Primary'),
                                      type: GFButtonType.outline,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Secondary'),
                                      type: GFButtonType.outline,
                                      color: GFColors.SECONDARY,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Success'),
                                      type: GFButtonType.outline,
                                      color: GFColors.SUCCESS,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Warning'),
                                      type: GFButtonType.outline,
                                      color: GFColors.WARNING,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Danger'),
                                      type: GFButtonType.outline,
                                      color: GFColors.DANGER,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Info'),
                                      type: GFButtonType.outline,
                                      color: GFColors.INFO,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Light'),
                                      type: GFButtonType.outline,
                                      color: GFColors.LIGHT,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Dark'),
                                      type: GFButtonType.outline,
                                      color: GFColors.DARK,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Link'),
                                      type: GFButtonType.transparent,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                          const Padding(
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
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const <Widget>[
                                    GFButton(
                                      onPressed: null,
                                      child: Text('Primary'),
                                      type: GFButtonType.outline,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text('Secondary'),
                                      type: GFButtonType.outline,
                                      color: GFColors.SECONDARY,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text('Success'),
                                      type: GFButtonType.outline,
                                      color: GFColors.SUCCESS,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Warning'),
                                      type: GFButtonType.outline,
                                      color: GFColors.WARNING,
                                    ),
                                    const GFButton(
                                      onPressed: null,
                                      child: Text('Danger'),
                                      type: GFButtonType.outline,
                                      color: GFColors.DANGER,
                                    ),
                                    const GFButton(
                                      onPressed: null,
                                      child: Text('Info'),
                                      type: GFButtonType.outline,
                                      color: GFColors.INFO,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    const GFButton(
                                      onPressed: null,
                                      child: Text('Light'),
                                      type: GFButtonType.outline,
                                      color: GFColors.LIGHT,
                                    ),
                                    const GFButton(
                                      onPressed: null,
                                      child: Text('Dark'),
                                      type: GFButtonType.outline,
                                      color: GFColors.DARK,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Link'),
                                      type: GFButtonType.transparent,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                          const Padding(
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
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Large'),
                                      color: GFColors.PRIMARY,
                                      size: GFSize.LARGE,
                                      type: GFButtonType.outline,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Normal'),
                                      color: GFColors.PRIMARY,
                                      size: GFSize.MEDIUM,
                                      type: GFButtonType.outline,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Small'),
                                      color: GFColors.PRIMARY,
                                      size: GFSize.SMALL,
                                      type: GFButtonType.outline,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Padding(
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
                                const SizedBox(
                                  height: 10,
                                ),
                                GFButton(
                                  onPressed: () {},
                                  blockButton: true,
                                  child: const Text('Large'),
                                  color: GFColors.PRIMARY,
                                  size: GFSize.LARGE,
                                  type: GFButtonType.outline,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                GFButton(
                                  onPressed: () {},
                                  blockButton: true,
                                  child: const Text('Normal'),
                                  color: GFColors.PRIMARY,
                                  size: GFSize.MEDIUM,
                                  type: GFButtonType.outline,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                GFButton(
                                  onPressed: () {},
                                  blockButton: true,
                                  child: const Text('Small'),
                                  color: GFColors.PRIMARY,
                                  size: GFSize.SMALL,
                                  type: GFButtonType.outline,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: ListView(
                        children: <Widget>[
                          const Padding(
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
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Primary'),
                                      type: GFButtonType.outline2x,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Secondary'),
                                      type: GFButtonType.outline2x,
                                      color: GFColors.SECONDARY,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Success'),
                                      type: GFButtonType.outline2x,
                                      color: GFColors.SUCCESS,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Warning'),
                                      type: GFButtonType.outline2x,
                                      color: GFColors.WARNING,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Danger'),
                                      type: GFButtonType.outline2x,
                                      color: GFColors.DANGER,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Info'),
                                      type: GFButtonType.outline2x,
                                      color: GFColors.INFO,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Light'),
                                      type: GFButtonType.outline2x,
                                      color: GFColors.LIGHT,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Dark'),
                                      type: GFButtonType.outline2x,
                                      color: GFColors.DARK,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Link'),
                                      type: GFButtonType.transparent,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                          const Padding(
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
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const <Widget>[
                                    GFButton(
                                      onPressed: null,
                                      child: Text('Primary'),
                                      type: GFButtonType.outline2x,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text('Secondary'),
                                      type: GFButtonType.outline2x,
                                      color: GFColors.SECONDARY,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text('Success'),
                                      type: GFButtonType.outline2x,
                                      color: GFColors.SUCCESS,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Warning'),
                                      type: GFButtonType.outline2x,
                                      color: GFColors.WARNING,
                                    ),
                                    const GFButton(
                                      onPressed: null,
                                      child: Text('Danger'),
                                      type: GFButtonType.outline2x,
                                      color: GFColors.DANGER,
                                    ),
                                    const GFButton(
                                      onPressed: null,
                                      child: Text('Info'),
                                      type: GFButtonType.outline2x,
                                      color: GFColors.INFO,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    const GFButton(
                                      onPressed: null,
                                      child: Text('Light'),
                                      type: GFButtonType.outline2x,
                                      color: GFColors.LIGHT,
                                    ),
                                    const GFButton(
                                      onPressed: null,
                                      child: Text('Dark'),
                                      type: GFButtonType.outline2x,
                                      color: GFColors.DARK,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Link'),
                                      type: GFButtonType.transparent,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                          const Padding(
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
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Large'),
                                      color: GFColors.PRIMARY,
                                      size: GFSize.LARGE,
                                      type: GFButtonType.outline2x,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Normal'),
                                      color: GFColors.PRIMARY,
                                      size: GFSize.MEDIUM,
                                      type: GFButtonType.outline2x,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Small'),
                                      color: GFColors.PRIMARY,
                                      size: GFSize.SMALL,
                                      type: GFButtonType.outline2x,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Padding(
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
                                const SizedBox(
                                  height: 10,
                                ),
                                GFButton(
                                  onPressed: () {},
                                  blockButton: true,
                                  child: const Text('Large'),
                                  color: GFColors.PRIMARY,
                                  size: GFSize.LARGE,
                                  type: GFButtonType.outline2x,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                GFButton(
                                  onPressed: () {},
                                  blockButton: true,
                                  child: const Text('Normal'),
                                  color: GFColors.PRIMARY,
                                  size: GFSize.MEDIUM,
                                  type: GFButtonType.outline2x,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                GFButton(
                                  onPressed: () {},
                                  blockButton: true,
                                  child: const Text('Small'),
                                  color: GFColors.PRIMARY,
                                  size: GFSize.SMALL,
                                  type: GFButtonType.outline2x,
                                ),
                                const SizedBox(
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
        ),
      );
}
