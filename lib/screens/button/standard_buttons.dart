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
                                shape: GFButtonShape.standard,
                                child: Text('Primary',
                                    style: TextStyle(
                                        color: GFColors.getGFColor(
                                            GFColor.white))),
                                color: GFColor.primary,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: Text('Secondary',
                                    style: TextStyle(
                                        color: GFColors.getGFColor(
                                            GFColor.white))),
                                color: GFColor.secondary,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text(
                                  'Success',
                                ),
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
                                child: const Text(
                                  'Warning',
                                ),
                                color: GFColor.warning,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: Text('Danger',
                                    style: TextStyle(
                                        color: GFColors.getGFColor(
                                            GFColor.white))),
                                color: GFColor.danger,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text(
                                  'Info',
                                ),
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
                                child: const Text(
                                  'Light',
                                ),
                                color: GFColor.light,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: Text(
                                  'Dark',
                                  style: TextStyle(
                                      color:
                                          GFColors.getGFColor(GFColor.white)),
                                ),
                                color: GFColor.dark,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text(
                                  'Link',
                                ),
                                type: GFButtonType.solid,
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
                            children: <Widget>[
                              GFButton(
                                onPressed: null,
                                shape: GFButtonShape.standard,
                                child: Text('Primary',
                                    style: TextStyle(
                                        color: GFColors.getGFColor(
                                            GFColor.white))),
                                color: GFColor.primary,
                              ),
                              GFButton(
                                onPressed: null,
                                child: Text('Secondary',
                                    style: TextStyle(
                                        color: GFColors.getGFColor(
                                            GFColor.white))),
                                color: GFColor.secondary,
                              ),
                              const GFButton(
                                onPressed: null,
                                child: Text(
                                  'Success',
                                ),
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
                              const GFButton(
                                onPressed: null,
                                child: Text(
                                  'Warning',
                                ),
                                color: GFColor.warning,
                              ),
                              GFButton(
                                onPressed: null,
                                child: Text('Danger',
                                    style: TextStyle(
                                        color: GFColors.getGFColor(
                                            GFColor.white))),
                                color: GFColor.danger,
                              ),
                              const GFButton(
                                onPressed: null,
                                child: Text(
                                  'Info',
                                ),
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
                                child: Text(
                                  'Light',
                                ),
                                color: GFColor.light,
                              ),
                              GFButton(
                                onPressed: null,
                                child: Text(
                                  'Dark',
                                  style: TextStyle(
                                      color:
                                          GFColors.getGFColor(GFColor.white)),
                                ),
                                color: GFColor.dark,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text(
                                  'Link',
                                ),
                                type: GFButtonType.solid,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              GFButton(
                                onPressed: () {},
                                child: const Text(
                                  'Primary',
                                ),
                                type: GFButtonType.transparent,
                                textColor: GFColor.primary,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text(
                                  'Secondary',
                                ),
                                type: GFButtonType.transparent,
                                textColor: GFColor.secondary,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text(
                                  'Success',
                                ),
                                type: GFButtonType.transparent,
                                textColor: GFColor.success,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              GFButton(
                                onPressed: () {},
                                child: const Text(
                                  'Warning',
                                ),
                                type: GFButtonType.transparent,
                                textColor: GFColor.warning,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text(
                                  'Danger',
                                ),
                                type: GFButtonType.transparent,
                                textColor: GFColor.danger,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text(
                                  'Info',
                                ),
                                type: GFButtonType.transparent,
                                textColor: GFColor.info,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              GFButton(
                                onPressed: () {},
                                child: const Text(
                                  'Light',
                                ),
                                type: GFButtonType.transparent,
                                textColor: GFColor.light,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text(
                                  'Dark',
                                ),
                                type: GFButtonType.transparent,
                                textColor: GFColor.dark,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text(
                                  'Link',
                                ),
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
                              ),
                              GFButton(
                                onPressed: () {},
                                child: Text('Normal',
                                    style: TextStyle(
                                        color: GFColors.getGFColor(
                                            GFColor.white))),
                                color: GFColor.primary,
                                size: GFSize.medium,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: Text('Small',
                                    style: TextStyle(
                                        color: GFColors.getGFColor(
                                            GFColor.white))),
                                color: GFColor.primary,
                                size: GFSize.small,
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
                            child: Text('Large',
                                style: TextStyle(
                                    color: GFColors.getGFColor(GFColor.white))),
                            color: GFColor.primary,
                            size: GFSize.large,
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
                          child: Text('Large',
                              style: TextStyle(
                                  color: GFColors.getGFColor(GFColor.white))),
                          color: GFColor.primary,
                          size: GFSize.large,
                          fullWidthButton: true,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        GFButton(
                          onPressed: () {},
                          child: Text('Normal',
                              style: TextStyle(
                                  color: GFColors.getGFColor(GFColor.white))),
                          color: GFColor.primary,
                          size: GFSize.medium,
                          fullWidthButton: true,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        GFButton(
                          onPressed: () {},
                          child: Text('Small',
                              style: TextStyle(
                                  color: GFColors.getGFColor(GFColor.white))),
                          color: GFColor.primary,
                          size: GFSize.small,
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
                                child: const Text(
                                  'Primary',
                                ),
                                type: GFButtonType.outline,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text('Secondary'),
                                type: GFButtonType.outline,
                                color: GFColor.secondary,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text(
                                  'Success',
                                ),
                                type: GFButtonType.outline,
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
                                child: const Text(
                                  'Warning',
                                ),
                                type: GFButtonType.outline,
                                color: GFColor.warning,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text(
                                  'Danger',
                                ),
                                type: GFButtonType.outline,
                                color: GFColor.danger,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text(
                                  'Info',
                                ),
                                type: GFButtonType.outline,
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
                                child: const Text(
                                  'Light',
                                ),
                                type: GFButtonType.outline,
                                color: GFColor.light,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text(
                                  'Dark',
                                ),
                                type: GFButtonType.outline,
                                color: GFColor.dark,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text(
                                  'Link',
                                ),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const <Widget>[
                              GFButton(
                                onPressed: null,
                                child: Text(
                                  'Primary',
                                ),
                                type: GFButtonType.outline,
                              ),
                              GFButton(
                                onPressed: null,
                                child: Text('Secondary'),
                                type: GFButtonType.outline,
                                color: GFColor.secondary,
                              ),
                              GFButton(
                                onPressed: null,
                                child: Text(
                                  'Success',
                                ),
                                type: GFButtonType.outline,
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
                                child: const Text(
                                  'Warning',
                                ),
                                type: GFButtonType.outline,
                                color: GFColor.warning,
                              ),
                              const GFButton(
                                onPressed: null,
                                child: Text('Danger'),
                                type: GFButtonType.outline,
                                color: GFColor.danger,
                              ),
                              const GFButton(
                                onPressed: null,
                                child: Text('Info'),
                                type: GFButtonType.outline,
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
                                color: GFColor.light,
                              ),
                              const GFButton(
                                onPressed: null,
                                child: Text('Dark'),
                                type: GFButtonType.outline,
                                color: GFColor.dark,
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
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text(
                                  'Normal',
                                ),
                                color: GFColor.primary,
                                size: GFSize.medium,
                                type: GFButtonType.outline,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text(
                                  'Small',
                                ),
                                color: GFColor.primary,
                                size: GFSize.small,
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
                            child: const Text(
                              'Large',
                            ),
                            color: GFColor.primary,
                            size: GFSize.large,
                            type: GFButtonType.outline,
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
                                child: const Text(
                                  'Primary',
                                ),
                                type: GFButtonType.outline2x,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text('Secondary'),
                                type: GFButtonType.outline2x,
                                color: GFColor.secondary,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text(
                                  'Success',
                                ),
                                type: GFButtonType.outline2x,
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
                                child: const Text(
                                  'Warning',
                                ),
                                type: GFButtonType.outline2x,
                                color: GFColor.warning,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text('Danger'),
                                type: GFButtonType.outline2x,
                                color: GFColor.danger,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text('Info'),
                                type: GFButtonType.outline2x,
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
                                color: GFColor.light,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text('Dark'),
                                type: GFButtonType.outline2x,
                                color: GFColor.dark,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const <Widget>[
                              GFButton(
                                onPressed: null,
                                child: Text(
                                  'Primary',
                                ),
                                type: GFButtonType.outline2x,
                              ),
                              GFButton(
                                onPressed: null,
                                child: Text('Secondary'),
                                type: GFButtonType.outline2x,
                                color: GFColor.secondary,
                              ),
                              GFButton(
                                onPressed: null,
                                child: Text(
                                  'Success',
                                ),
                                type: GFButtonType.outline2x,
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
                                child: const Text(
                                  'Warning',
                                ),
                                type: GFButtonType.outline2x,
                                color: GFColor.warning,
                              ),
                              const GFButton(
                                onPressed: null,
                                child: Text('Danger'),
                                type: GFButtonType.outline2x,
                                color: GFColor.danger,
                              ),
                              const GFButton(
                                onPressed: null,
                                child: Text('Info'),
                                type: GFButtonType.outline2x,
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
                                color: GFColor.light,
                              ),
                              const GFButton(
                                onPressed: null,
                                child: Text('Dark'),
                                type: GFButtonType.outline2x,
                                color: GFColor.dark,
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
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text(
                                  'Normal',
                                ),
                                color: GFColor.primary,
                                size: GFSize.medium,
                                type: GFButtonType.outline2x,
                              ),
                              GFButton(
                                onPressed: () {},
                                child: const Text(
                                  'Small',
                                ),
                                color: GFColor.primary,
                                size: GFSize.small,
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
                            child: const Text(
                              'Large',
                            ),
                            color: GFColor.primary,
                            size: GFSize.large,
                            type: GFButtonType.outline2x,
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
