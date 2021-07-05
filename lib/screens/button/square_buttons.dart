import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:getwidget/getwidget.dart';

class SquareButtons extends StatefulWidget {
  @override
  _SquareButtonsState createState() => _SquareButtonsState();
}

class _SquareButtonsState extends State<SquareButtons>
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
            'Square Buttons',
            style: TextStyle(fontSize: 17),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Container(
              height: 40,
              margin: const EdgeInsets.only(top: 20, left: 25, right: 25),
              child: GFSegmentTabs(
                tabController: tabController,
                width: 280,
                length: 3,
                tabs: const <Widget>[
                  Text(
                    'Solid',
                  ),
                  Tab(
                    child: Text(
                      'Outline',
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Outline 2X',
                    ),
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
                                      shape: GFButtonShape.square,
                                      child: const Text('Primary'),
                                      color: GFColors.PRIMARY,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Secondary'),
                                      color: GFColors.SECONDARY,
                                      shape: GFButtonShape.square,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Success'),
                                      shape: GFButtonShape.square,
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
                                      shape: GFButtonShape.square,
                                      color: GFColors.WARNING,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text(
                                        'Danger',
                                      ),
                                      shape: GFButtonShape.square,
                                      color: GFColors.DANGER,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text(
                                        'Info',
                                      ),
                                      shape: GFButtonShape.square,
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
                                      child: const Text(
                                        'Light',
                                      ),
                                      shape: GFButtonShape.square,
                                      color: GFColors.LIGHT,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Dark'),
                                      shape: GFButtonShape.square,
                                      color: GFColors.DARK,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Link'),
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
                                      shape: GFButtonShape.square,
                                      child: Text('Primary'),
                                      color: GFColors.PRIMARY,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text('Secondary'),
                                      color: GFColors.SECONDARY,
                                      shape: GFButtonShape.square,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text('Success'),
                                      shape: GFButtonShape.square,
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
                                      shape: GFButtonShape.square,
                                      color: GFColors.WARNING,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text(
                                        'Danger',
                                      ),
                                      shape: GFButtonShape.square,
                                      color: GFColors.DANGER,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text(
                                        'Info',
                                      ),
                                      shape: GFButtonShape.square,
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
                                  children: const <Widget>[
                                    GFButton(
                                      onPressed: null,
                                      child: Text(
                                        'Light',
                                      ),
                                      shape: GFButtonShape.square,
                                      color: GFColors.LIGHT,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text('Dark'),
                                      shape: GFButtonShape.square,
                                      color: GFColors.DARK,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text('Link'),
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
                            padding: EdgeInsets.only(left: 15, top: 20),
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
                                      shape: GFButtonShape.square,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Normal',
                                          style:
                                              TextStyle(color: GFColors.WHITE)),
                                      color: GFColors.PRIMARY,
                                      size: GFSize.MEDIUM,
                                      shape: GFButtonShape.square,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Small',
                                          style:
                                              TextStyle(color: GFColors.WHITE)),
                                      color: GFColors.PRIMARY,
                                      size: GFSize.SMALL,
                                      shape: GFButtonShape.square,
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
                                const SizedBox(
                                  height: 10,
                                ),
                                GFButton(
                                  onPressed: () {},
                                  blockButton: true,
                                  child: const Text(
                                    'Large',
                                    style: TextStyle(
                                      color: GFColors.WHITE,
                                    ),
                                  ),
                                  color: GFColors.PRIMARY,
                                  size: GFSize.LARGE,
                                  shape: GFButtonShape.square,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                GFButton(
                                  onPressed: () {},
                                  blockButton: true,
                                  child: const Text(
                                    'Normal',
                                    style: TextStyle(
                                      color: GFColors.WHITE,
                                    ),
                                  ),
                                  color: GFColors.PRIMARY,
                                  size: GFSize.MEDIUM,
                                  shape: GFButtonShape.square,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                GFButton(
                                  onPressed: () {},
                                  blockButton: true,
                                  child: const Text(
                                    'Small',
                                    style: TextStyle(
                                      color: GFColors.WHITE,
                                    ),
                                  ),
                                  color: GFColors.PRIMARY,
                                  size: GFSize.SMALL,
                                  shape: GFButtonShape.square,
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
                                      shape: GFButtonShape.square,
                                      child: const Text('Primary'),
                                      type: GFButtonType.outline,
                                      color: GFColors.PRIMARY,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Secondary'),
                                      color: GFColors.SECONDARY,
                                      type: GFButtonType.outline,
                                      shape: GFButtonShape.square,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Success'),
                                      type: GFButtonType.outline,
                                      shape: GFButtonShape.square,
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
                                      shape: GFButtonShape.square,
                                      color: GFColors.WARNING,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text(
                                        'Danger',
                                      ),
                                      type: GFButtonType.outline,
                                      shape: GFButtonShape.square,
                                      color: GFColors.DANGER,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text(
                                        'Info',
                                      ),
                                      type: GFButtonType.outline,
                                      shape: GFButtonShape.square,
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
                                      child: const Text(
                                        'Light',
                                      ),
                                      type: GFButtonType.outline,
                                      shape: GFButtonShape.square,
                                      color: GFColors.LIGHT,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Dark'),
                                      type: GFButtonType.outline,
                                      shape: GFButtonShape.square,
                                      color: GFColors.DARK,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Link'),
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
                                      shape: GFButtonShape.square,
                                      child: Text('Primary'),
                                      type: GFButtonType.outline,
                                      color: GFColors.PRIMARY,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text('Secondary'),
                                      color: GFColors.SECONDARY,
                                      type: GFButtonType.outline,
                                      shape: GFButtonShape.square,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text('Success'),
                                      type: GFButtonType.outline,
                                      shape: GFButtonShape.square,
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
                                      type: GFButtonType.outline,
                                      shape: GFButtonShape.square,
                                      color: GFColors.WARNING,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text(
                                        'Danger',
                                      ),
                                      type: GFButtonType.outline,
                                      shape: GFButtonShape.square,
                                      color: GFColors.DANGER,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text(
                                        'Info',
                                      ),
                                      type: GFButtonType.outline,
                                      shape: GFButtonShape.square,
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
                                      child: Text(
                                        'Light',
                                      ),
                                      type: GFButtonType.outline,
                                      shape: GFButtonShape.square,
                                      color: GFColors.LIGHT,
                                    ),
                                    const GFButton(
                                      onPressed: null,
                                      child: Text('Dark'),
                                      type: GFButtonType.outline,
                                      shape: GFButtonShape.square,
                                      color: GFColors.DARK,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Link'),
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
                                      child: const Text(
                                        'Large',
                                      ),
                                      color: GFColors.PRIMARY,
                                      size: GFSize.LARGE,
                                      type: GFButtonType.outline,
                                      shape: GFButtonShape.square,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text(
                                        'Normal',
                                      ),
                                      color: GFColors.PRIMARY,
                                      size: GFSize.MEDIUM,
                                      type: GFButtonType.outline,
                                      shape: GFButtonShape.square,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text(
                                        'Small',
                                      ),
                                      color: GFColors.PRIMARY,
                                      size: GFSize.SMALL,
                                      type: GFButtonType.outline,
                                      shape: GFButtonShape.square,
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
                                  child: const Text(
                                    'Large',
                                  ),
                                  color: GFColors.PRIMARY,
                                  size: GFSize.LARGE,
                                  type: GFButtonType.outline,
                                  shape: GFButtonShape.square,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                GFButton(
                                  onPressed: () {},
                                  blockButton: true,
                                  child: const Text(
                                    'Normal',
                                  ),
                                  color: GFColors.PRIMARY,
                                  size: GFSize.MEDIUM,
                                  type: GFButtonType.outline,
                                  shape: GFButtonShape.square,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                GFButton(
                                  onPressed: () {},
                                  blockButton: true,
                                  child: const Text(
                                    'Small',
                                  ),
                                  color: GFColors.PRIMARY,
                                  size: GFSize.SMALL,
                                  type: GFButtonType.outline,
                                  shape: GFButtonShape.square,
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

                    //tab 3
                    Container(
//              color: Colors.red,
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
                                      shape: GFButtonShape.square,
                                      child: const Text('Primary'),
                                      type: GFButtonType.outline2x,
                                      color: GFColors.PRIMARY,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Secondary'),
                                      color: GFColors.SECONDARY,
                                      type: GFButtonType.outline2x,
                                      shape: GFButtonShape.square,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Success'),
                                      type: GFButtonType.outline2x,
                                      shape: GFButtonShape.square,
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
                                      shape: GFButtonShape.square,
                                      color: GFColors.WARNING,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text(
                                        'Danger',
                                      ),
                                      type: GFButtonType.outline2x,
                                      shape: GFButtonShape.square,
                                      color: GFColors.DANGER,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text(
                                        'Info',
                                      ),
                                      type: GFButtonType.outline2x,
                                      shape: GFButtonShape.square,
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
                                      child: const Text(
                                        'Light',
                                      ),
                                      type: GFButtonType.outline2x,
                                      shape: GFButtonShape.square,
                                      color: GFColors.LIGHT,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Dark'),
                                      type: GFButtonType.outline2x,
                                      shape: GFButtonShape.square,
                                      color: GFColors.DARK,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Link'),
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
                                      shape: GFButtonShape.square,
                                      child: Text('Primary'),
                                      type: GFButtonType.outline2x,
                                      color: GFColors.PRIMARY,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text('Secondary'),
                                      color: GFColors.SECONDARY,
                                      type: GFButtonType.outline2x,
                                      shape: GFButtonShape.square,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text('Success'),
                                      type: GFButtonType.outline2x,
                                      shape: GFButtonShape.square,
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
                                      type: GFButtonType.outline2x,
                                      shape: GFButtonShape.square,
                                      color: GFColors.WARNING,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text('Danger'),
                                      type: GFButtonType.outline2x,
                                      shape: GFButtonShape.square,
                                      color: GFColors.DANGER,
                                    ),
                                    GFButton(
                                      onPressed: null,
                                      child: Text('Info'),
                                      type: GFButtonType.outline2x,
                                      shape: GFButtonShape.square,
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
                                      shape: GFButtonShape.square,
                                      color: GFColors.LIGHT,
                                    ),
                                    const GFButton(
                                      onPressed: null,
                                      child: Text('Dark'),
                                      type: GFButtonType.outline2x,
                                      shape: GFButtonShape.square,
                                      color: GFColors.DARK,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Link'),
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
                                      child: const Text(
                                        'Large',
                                      ),
                                      color: GFColors.PRIMARY,
                                      size: GFSize.LARGE,
                                      type: GFButtonType.outline2x,
                                      shape: GFButtonShape.square,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Normal'),
                                      color: GFColors.PRIMARY,
                                      size: GFSize.MEDIUM,
                                      type: GFButtonType.outline2x,
                                      shape: GFButtonShape.square,
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      child: const Text('Small'),
                                      color: GFColors.PRIMARY,
                                      size: GFSize.SMALL,
                                      type: GFButtonType.outline2x,
                                      shape: GFButtonShape.square,
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
                                  child: const Text(
                                    'Large',
                                  ),
                                  color: GFColors.PRIMARY,
                                  size: GFSize.LARGE,
                                  type: GFButtonType.outline2x,
                                  shape: GFButtonShape.square,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                GFButton(
                                  onPressed: () {},
                                  blockButton: true,
                                  child: const Text(
                                    'Normal',
                                  ),
                                  color: GFColors.PRIMARY,
                                  size: GFSize.MEDIUM,
                                  type: GFButtonType.outline2x,
                                  shape: GFButtonShape.square,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                GFButton(
                                  onPressed: () {},
                                  blockButton: true,
                                  child: const Text(
                                    'Small',
                                  ),
                                  color: GFColors.PRIMARY,
                                  size: GFSize.SMALL,
                                  type: GFButtonType.outline2x,
                                  shape: GFButtonShape.square,
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
