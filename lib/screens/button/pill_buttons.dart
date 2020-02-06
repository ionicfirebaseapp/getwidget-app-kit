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
  Widget build(BuildContext context) => Scaffold(
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
        title: const Text(
          'Pills Buttons',
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
//              height: 38.0,
              width: 280,
              initialIndex: 0,
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
                    'Outline 2x',
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
                    width: 3,
                  ),
                ),
//                borderRadius: BorderRadius.circular(2.0)
              ),
              indicatorPadding: const EdgeInsets.all(8),
              indicatorWeight: 2,
              border: Border.all(color: Colors.white, width: 2),
            ),
//
//
          ),
          Container(
            height: MediaQuery.of(context).size.height - 140,
            child:
                GFTabBarView(controller: tabController, height: 400, children: <
                    Widget>[
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              GFButton(
                                onPressed: () {},
                                shape: GFButtonShape.pills,
                                child: const Text(
                                  'Primary',
                                ),
                                color: GFColor.primary,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text(
                                  'Secondary',
                                ),
                                color: GFColor.secondary,
                                shape: GFButtonShape.pills,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text('Success'),
                                shape: GFButtonShape.pills,
                                color: GFColor.success,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              GFButton(
                                onPressed: () {},
                                child: const Text('Warning'),
                                shape: GFButtonShape.pills,
                                color: GFColor.warning,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text('Danger'),
                                shape: GFButtonShape.pills,
                                color: GFColor.danger,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text('Info'),
                                shape: GFButtonShape.pills,
                                color: GFColor.info,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              GFButton(
                                onPressed: () {},
                                child: const Text('Light'),
                                shape: GFButtonShape.pills,
                                color: GFColor.light,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text('Dark'),
                                shape: GFButtonShape.pills,
                                color: GFColor.dark,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text('Link'),
                                shape: GFButtonShape.pills,
                                color: GFColor.transparent,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const <Widget>[
                              GFButton(
                                onPressed: null,
                                shape: GFButtonShape.pills,
                                child: Text(
                                  'Primary',
                                ),
                                color: GFColor.primary,
                              ),
                              GFButton(
                                onPressed: null,
                                child: Text(
                                  'Secondary',
                                ),
                                color: GFColor.secondary,
                                shape: GFButtonShape.pills,
                              ),
                              GFButton(
                                onPressed: null,
                                child: Text('Success'),
                                shape: GFButtonShape.pills,
                                color: GFColor.success,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const <Widget>[
                              GFButton(
                                onPressed: null,
                                child: Text('Warning'),
                                shape: GFButtonShape.pills,
                                color: GFColor.warning,
                              ),
                              GFButton(
                                onPressed: null,
                                child: Text('Danger'),
                                shape: GFButtonShape.pills,
                                color: GFColor.danger,
                              ),
                              GFButton(
                                onPressed: null,
                                child: Text('Info'),
                                shape: GFButtonShape.pills,
                                color: GFColor.info,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              const GFButton(
                                onPressed: null,
                                child: Text('Light'),
                                shape: GFButtonShape.pills,
                                color: GFColor.light,
                              ),
                              const GFButton(
                                onPressed: null,
                                child: Text('Dark'),
                                shape: GFButtonShape.pills,
                                color: GFColor.dark,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text('Link'),
                                shape: GFButtonShape.pills,
                                color: GFColor.transparent,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              GFButton(
                                onPressed: () {},
                                child: Text('Large',
                                    style: TextStyle(
                                        color: GFColors.getGFColor(
                                            GFColor.white))),
                                color: GFColor.primary,
                                size: GFSize.large,
                                shape: GFButtonShape.pills,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: Text('Normal',
                                    style: TextStyle(
                                        color: GFColors.getGFColor(
                                            GFColor.white))),
                                color: GFColor.primary,
                                size: GFSize.medium,
                                shape: GFButtonShape.pills,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: Text('Small',
                                    style: TextStyle(
                                        color: GFColors.getGFColor(
                                            GFColor.white))),
                                color: GFColor.primary,
                                size: GFSize.small,
                                shape: GFButtonShape.pills,
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
                            child: Text('Large',
                                style: TextStyle(
                                    color: GFColors.getGFColor(GFColor.white))),
                            color: GFColor.primary,
                            size: GFSize.large,
                            shape: GFButtonShape.pills,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          GFButton(
                            onPressed: () {},
                            blockButton: true,
                            child: Text('Normal',
                                style: TextStyle(
                                    color: GFColors.getGFColor(GFColor.white))),
                            color: GFColor.primary,
                            size: GFSize.medium,
                            shape: GFButtonShape.pills,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          GFButton(
                            onPressed: () {},
                            blockButton: true,
                            child: Text('Small',
                                style: TextStyle(
                                    color: GFColors.getGFColor(GFColor.white))),
                            color: GFColor.primary,
                            size: GFSize.small,
                            shape: GFButtonShape.pills,
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

              //tab 2
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              GFButton(
                                onPressed: () {},
                                shape: GFButtonShape.pills,
                                child: const Text(
                                  'Primary',
                                ),
                                type: GFButtonType.outline,
                                color: GFColor.primary,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text(
                                  'Secondary',
                                ),
                                color: GFColor.secondary,
                                type: GFButtonType.outline,
                                shape: GFButtonShape.pills,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text('Success'),
                                type: GFButtonType.outline,
                                shape: GFButtonShape.pills,
                                color: GFColor.success,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              GFButton(
                                onPressed: () {},
                                child: const Text('Warning'),
                                type: GFButtonType.outline,
                                shape: GFButtonShape.pills,
                                color: GFColor.warning,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text('Danger'),
                                type: GFButtonType.outline,
                                shape: GFButtonShape.pills,
                                color: GFColor.danger,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text('Info'),
                                type: GFButtonType.outline,
                                shape: GFButtonShape.pills,
                                color: GFColor.info,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              GFButton(
                                onPressed: () {},
                                child: const Text('Light'),
                                type: GFButtonType.outline,
                                shape: GFButtonShape.pills,
                                color: GFColor.light,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text('Dark'),
                                type: GFButtonType.outline,
                                shape: GFButtonShape.pills,
                                color: GFColor.dark,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text('Link'),
                                type: GFButtonType.outline,
                                shape: GFButtonShape.pills,
                                color: GFColor.transparent,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const <Widget>[
                              GFButton(
                                onPressed: null,
                                shape: GFButtonShape.pills,
                                child: Text(
                                  'Primary',
                                ),
                                type: GFButtonType.outline,
                                color: GFColor.primary,
                              ),
                              GFButton(
                                onPressed: null,
                                child: Text(
                                  'Secondary',
                                ),
                                color: GFColor.secondary,
                                type: GFButtonType.outline,
                                shape: GFButtonShape.pills,
                              ),
                              GFButton(
                                onPressed: null,
                                child: Text('Success'),
                                type: GFButtonType.outline,
                                shape: GFButtonShape.pills,
                                color: GFColor.success,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const <Widget>[
                              GFButton(
                                onPressed: null,
                                child: Text('Warning'),
                                type: GFButtonType.outline,
                                shape: GFButtonShape.pills,
                                color: GFColor.warning,
                              ),
                              GFButton(
                                onPressed: null,
                                child: Text('Danger'),
                                type: GFButtonType.outline,
                                shape: GFButtonShape.pills,
                                color: GFColor.danger,
                              ),
                              GFButton(
                                onPressed: null,
                                child: Text('Info'),
                                type: GFButtonType.outline,
                                shape: GFButtonShape.pills,
                                color: GFColor.info,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              const GFButton(
                                onPressed: null,
                                child: Text('Light'),
                                type: GFButtonType.outline,
                                shape: GFButtonShape.pills,
                                color: GFColor.light,
                              ),
                              const GFButton(
                                onPressed: null,
                                child: Text('Dark'),
                                type: GFButtonType.outline,
                                shape: GFButtonShape.pills,
                                color: GFColor.dark,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text('Link'),
                                type: GFButtonType.outline,
                                shape: GFButtonShape.pills,
                                color: GFColor.transparent,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              GFButton(
                                onPressed: () {},
                                child: const Text(
                                  'Large',
                                ),
                                color: GFColor.primary,
                                size: GFSize.large,
                                type: GFButtonType.outline,
                                shape: GFButtonShape.pills,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text(
                                  'Normal',
                                ),
                                color: GFColor.primary,
                                size: GFSize.medium,
                                type: GFButtonType.outline,
                                shape: GFButtonShape.pills,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text(
                                  'Small',
                                ),
                                color: GFColor.primary,
                                size: GFSize.small,
                                type: GFButtonType.outline,
                                shape: GFButtonShape.pills,
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
                            ),
                            color: GFColor.primary,
                            size: GFSize.large,
                            type: GFButtonType.outline,
                            shape: GFButtonShape.pills,
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
                            color: GFColor.primary,
                            size: GFSize.medium,
                            type: GFButtonType.outline,
                            shape: GFButtonShape.pills,
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
                            color: GFColor.primary,
                            size: GFSize.small,
                            type: GFButtonType.outline,
                            shape: GFButtonShape.pills,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              GFButton(
                                onPressed: () {},
                                shape: GFButtonShape.pills,
                                child: const Text(
                                  'Primary',
                                ),
                                type: GFButtonType.outline2x,
                                color: GFColor.primary,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text(
                                  'Secondary',
                                ),
                                color: GFColor.secondary,
                                type: GFButtonType.outline2x,
                                shape: GFButtonShape.pills,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text('Success'),
                                type: GFButtonType.outline2x,
                                shape: GFButtonShape.pills,
                                color: GFColor.success,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              GFButton(
                                onPressed: () {},
                                child: const Text('Warning'),
                                type: GFButtonType.outline2x,
                                shape: GFButtonShape.pills,
                                color: GFColor.warning,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text('Danger'),
                                type: GFButtonType.outline2x,
                                shape: GFButtonShape.pills,
                                color: GFColor.danger,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text('Info'),
                                type: GFButtonType.outline2x,
                                shape: GFButtonShape.pills,
                                color: GFColor.info,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              GFButton(
                                onPressed: () {},
                                child: const Text('Light'),
                                type: GFButtonType.outline2x,
                                shape: GFButtonShape.pills,
                                color: GFColor.light,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text('Dark'),
                                type: GFButtonType.outline2x,
                                shape: GFButtonShape.pills,
                                color: GFColor.dark,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text('Link'),
                                type: GFButtonType.outline2x,
                                shape: GFButtonShape.pills,
                                color: GFColor.transparent,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const <Widget>[
                              GFButton(
                                onPressed: null,
                                shape: GFButtonShape.pills,
                                child: Text(
                                  'Primary',
                                ),
                                type: GFButtonType.outline2x,
                                color: GFColor.primary,
                              ),
                              GFButton(
                                onPressed: null,
                                child: Text(
                                  'Secondary',
                                ),
                                color: GFColor.secondary,
                                type: GFButtonType.outline2x,
                                shape: GFButtonShape.pills,
                              ),
                              GFButton(
                                onPressed: null,
                                child: Text('Success'),
                                type: GFButtonType.outline2x,
                                shape: GFButtonShape.pills,
                                color: GFColor.success,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const <Widget>[
                              GFButton(
                                onPressed: null,
                                child: Text('Warning'),
                                type: GFButtonType.outline2x,
                                shape: GFButtonShape.pills,
                                color: GFColor.warning,
                              ),
                              GFButton(
                                onPressed: null,
                                child: Text('Danger'),
                                type: GFButtonType.outline2x,
                                shape: GFButtonShape.pills,
                                color: GFColor.danger,
                              ),
                              GFButton(
                                onPressed: null,
                                child: Text('Info'),
                                type: GFButtonType.outline2x,
                                shape: GFButtonShape.pills,
                                color: GFColor.info,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              const GFButton(
                                onPressed: null,
                                child: Text('Light'),
                                type: GFButtonType.outline2x,
                                shape: GFButtonShape.pills,
                                color: GFColor.light,
                              ),
                              const GFButton(
                                onPressed: null,
                                child: Text('Dark'),
                                type: GFButtonType.outline2x,
                                shape: GFButtonShape.pills,
                                color: GFColor.dark,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text('Link'),
                                type: GFButtonType.outline2x,
                                shape: GFButtonShape.pills,
                                color: GFColor.transparent,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              GFButton(
                                onPressed: () {},
                                child: const Text(
                                  'Large',
                                ),
                                color: GFColor.primary,
                                size: GFSize.large,
                                type: GFButtonType.outline2x,
                                shape: GFButtonShape.pills,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text(
                                  'Normal',
                                ),
                                color: GFColor.primary,
                                size: GFSize.medium,
                                type: GFButtonType.outline2x,
                                shape: GFButtonShape.pills,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text(
                                  'Small',
                                ),
                                color: GFColor.primary,
                                size: GFSize.small,
                                type: GFButtonType.outline2x,
                                shape: GFButtonShape.pills,
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
                            ),
                            color: GFColor.primary,
                            size: GFSize.large,
                            type: GFButtonType.outline2x,
                            shape: GFButtonShape.pills,
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
                            color: GFColor.primary,
                            size: GFSize.medium,
                            type: GFButtonType.outline2x,
                            shape: GFButtonShape.pills,
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
                            color: GFColor.primary,
                            size: GFSize.small,
                            type: GFButtonType.outline2x,
                            shape: GFButtonShape.pills,
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
      ));
}
