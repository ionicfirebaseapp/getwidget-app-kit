import 'package:flutter/material.dart';
import 'package:getflutter/components/typography/gf_typography.dart';
import 'package:getflutter/components/button/gf_button.dart';
import 'package:getflutter/size/gf_size.dart';
import 'package:getflutter/types/gf_typography_type.dart';
import 'package:getflutter/types/gf_type.dart';
import 'package:getflutter/shape/gf_button_shape.dart';
import 'package:getflutter/colors/gf_color.dart';
import 'package:getflutter/components/card/gf_card.dart';
import 'package:getflutter/components/tabs/gf_tabBarView.dart';
import 'package:getflutter/components/tabs/gf_segment_tabs.dart';
import 'package:flutter/cupertino.dart';

class SquareButtons extends StatefulWidget {
  @override
  _SquareButtonsState createState() => _SquareButtonsState();
}

class _SquareButtonsState extends State<SquareButtons> with SingleTickerProviderStateMixin {
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
        backgroundColor: getGFColor(GFColor.dark),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
          child:  Icon(CupertinoIcons.back, color: getGFColor(GFColor.success), ),),
        title: Text(
          'Square Buttons',
          style: TextStyle(fontSize: 17),
        ),
        centerTitle: true,
      ),
      body:   Column(
        children: <Widget>[
          Container(
            height: 40,
            margin: EdgeInsets.only(top:20),
            child:  GFSegmentTabs(
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
              tabBarColor: getGFColor(GFColor.light),
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: getGFColor(GFColor.white),
              unselectedLabelColor: getGFColor(GFColor.dark),
              indicator: BoxDecoration(
                color: getGFColor(GFColor.dark),
                border: Border(bottom: BorderSide(color: getGFColor(GFColor.success), width: 3.0,),),
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
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  GFButton(
                                    onPressed: () {},
                                    shape: GFButtonShape.square,
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
                                    shape: GFButtonShape.square,
                                  ),
                                  GFButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Success",
                                    ),
                                    shape: GFButtonShape.square,
                                    color: GFColor.success,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  GFButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Warning",
                                    ),
                                    shape: GFButtonShape.square,
                                    color: GFColor.warning,
                                  ),
                                  GFButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Danger",
                                    ),
                                    shape: GFButtonShape.square,
                                    color: GFColor.danger,
                                  ),
                                  GFButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Info",
                                    ),
                                    shape: GFButtonShape.square,
                                    color: GFColor.info,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  GFButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Light",
                                    ),
                                    shape: GFButtonShape.square,
                                    color: GFColor.light,
                                  ),
                                  GFButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Dark",
                                    ),
                                    shape: GFButtonShape.square,
                                    color: GFColor.dark,
                                  ),
                                  GFButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Link",
                                    ),
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
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  GFButton(
                                    onPressed: null,
                                    shape: GFButtonShape.square,
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
                                    shape: GFButtonShape.square,
                                  ),
                                  GFButton(
                                    onPressed: null,
                                    child: Text(
                                      "Success",
                                    ),
                                    shape: GFButtonShape.square,
                                    color: GFColor.success,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  GFButton(
                                    onPressed: null,
                                    child: Text(
                                      "Warning",
                                    ),
                                    shape: GFButtonShape.square,
                                    color: GFColor.warning,
                                  ),
                                  GFButton(
                                    onPressed: null,
                                    child: Text(
                                      "Danger",
                                    ),
                                    shape: GFButtonShape.square,
                                    color: GFColor.danger,
                                  ),
                                  GFButton(
                                    onPressed: null,
                                    child: Text(
                                      "Info",
                                    ),
                                    shape: GFButtonShape.square,
                                    color: GFColor.info,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  GFButton(
                                    onPressed: null,
                                    child: Text(
                                      "Light",
                                    ),
                                    shape: GFButtonShape.square,
                                    color: GFColor.light,
                                  ),
                                  GFButton(
                                    onPressed: null,
                                    child: Text(
                                      "Dark",
                                    ),
                                    shape: GFButtonShape.square,
                                    color: GFColor.dark,
                                  ),
                                  GFButton(
                                    onPressed: null,
                                    child: Text(
                                      "link",
                                    ),
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
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  GFButton(
                                    onPressed: () {},
                                    child: Text("Large",
                                        style: TextStyle(
                                            color: getGFColor(GFColor.white))),
                                    color: GFColor.primary,
                                    size: GFSize.large,
                                    shape: GFButtonShape.square,
                                  ),
                                  GFButton(
                                    onPressed: () {},
                                    child: Text("Normal",
                                        style: TextStyle(
                                            color: getGFColor(GFColor.white))),
                                    color: GFColor.primary,
                                    size: GFSize.medium,
                                    shape: GFButtonShape.square,
                                  ),
                                  GFButton(
                                    onPressed: () {},
                                    child: Text("Small",
                                        style: TextStyle(
                                            color: getGFColor(GFColor.white))),
                                    color: GFColor.primary,
                                    size: GFSize.small,
                                    shape: GFButtonShape.square,
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
                                child: Text("Large",
                                    style:
                                    TextStyle(color: getGFColor(GFColor.white))),
                                color: GFColor.primary,
                                size: GFSize.large,
                                shape: GFButtonShape.square,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              GFButton(
                                onPressed: () {},
                                blockButton: true,
                                child: Text("Normal",
                                    style:
                                    TextStyle(color: getGFColor(GFColor.white))),
                                color: GFColor.primary,
                                size: GFSize.medium,
                                shape: GFButtonShape.square,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              GFButton(
                                onPressed: () {},
                                blockButton: true,
                                child: Text("Small",
                                    style:
                                    TextStyle(color: getGFColor(GFColor.white))),
                                color: GFColor.primary,
                                size: GFSize.small,
                                shape: GFButtonShape.square,
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
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  GFButton(
                                    onPressed: () {},
                                    shape: GFButtonShape.square,
                                    child: Text(
                                      "Primary",
                                    ),
                                    type: GFType.outline,
                                    color: GFColor.primary,
                                  ),
                                  GFButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Secondary",
                                    ),
                                    color: GFColor.secondary,
                                    type: GFType.outline,
                                    shape: GFButtonShape.square,
                                  ),
                                  GFButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Success",
                                    ),
                                    type: GFType.outline,
                                    shape: GFButtonShape.square,
                                    color: GFColor.success,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  GFButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Warning",
                                    ),
                                    type: GFType.outline,
                                    shape: GFButtonShape.square,
                                    color: GFColor.warning,
                                  ),
                                  GFButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Danger",
                                    ),
                                    type: GFType.outline,
                                    shape: GFButtonShape.square,
                                    color: GFColor.danger,
                                  ),
                                  GFButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Info",
                                    ),
                                    type: GFType.outline,
                                    shape: GFButtonShape.square,
                                    color: GFColor.info,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  GFButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Light",
                                    ),
                                    type: GFType.outline,
                                    shape: GFButtonShape.square,
                                    color: GFColor.light,
                                  ),
                                  GFButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Dark",
                                    ),
                                    type: GFType.outline,
                                    shape: GFButtonShape.square,
                                    color: GFColor.dark,
                                  ),
                                  GFButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Link",
                                    ),
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
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  GFButton(
                                    onPressed: null,
                                    shape: GFButtonShape.square,
                                    child: Text(
                                      "Primary",
                                    ),
                                    type: GFType.outline,
                                    color: GFColor.primary,
                                  ),
                                  GFButton(
                                    onPressed: null,
                                    child: Text(
                                      "Secondary",
                                    ),
                                    color: GFColor.secondary,
                                    type: GFType.outline,
                                    shape: GFButtonShape.square,
                                  ),
                                  GFButton(
                                    onPressed: null,
                                    child: Text(
                                      "Success",
                                    ),
                                    type: GFType.outline,
                                    shape: GFButtonShape.square,
                                    color: GFColor.success,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  GFButton(
                                    onPressed: null,
                                    child: Text(
                                      "Warning",
                                    ),
                                    type: GFType.outline,
                                    shape: GFButtonShape.square,
                                    color: GFColor.warning,
                                  ),
                                  GFButton(
                                    onPressed: null,
                                    child: Text(
                                      "Danger",
                                    ),
                                    type: GFType.outline,
                                    shape: GFButtonShape.square,
                                    color: GFColor.danger,
                                  ),
                                  GFButton(
                                    onPressed: null,
                                    child: Text(
                                      "Info",
                                    ),
                                    type: GFType.outline,
                                    shape: GFButtonShape.square,
                                    color: GFColor.info,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  GFButton(
                                    onPressed: null,
                                    child: Text(
                                      "Light",
                                    ),
                                    type: GFType.outline,
                                    shape: GFButtonShape.square,
                                    color: GFColor.light,
                                  ),
                                  GFButton(
                                    onPressed: null,
                                    child: Text(
                                      "Dark",
                                    ),
                                    type: GFType.outline,
                                    shape: GFButtonShape.square,
                                    color: GFColor.dark,
                                  ),
                                  GFButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Link",
                                    ),
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
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  GFButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Large",
                                    ),
                                    color: GFColor.primary,
                                    size: GFSize.large,
                                    type: GFType.outline,
                                    shape: GFButtonShape.square,
                                  ),
                                  GFButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Normal",
                                    ),
                                    color: GFColor.primary,
                                    size: GFSize.medium,
                                    type: GFType.outline,
                                    shape: GFButtonShape.square,
                                  ),
                                  GFButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Small",
                                    ),
                                    color: GFColor.primary,
                                    size: GFSize.small,
                                    type: GFType.outline,
                                    shape: GFButtonShape.square,
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
                                child: Text(
                                  "Large",
                                ),
                                color: GFColor.primary,
                                size: GFSize.large,
                                type: GFType.outline,
                                shape: GFButtonShape.square,
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
                                type: GFType.outline,
                                shape: GFButtonShape.square,
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
                                type: GFType.outline,
                                shape: GFButtonShape.square,
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
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  GFButton(
                                    onPressed: () {},
                                    shape: GFButtonShape.square,
                                    child: Text(
                                      "Primary",
                                    ),
                                    type: GFType.outline2x,
                                    color: GFColor.primary,
                                  ),
                                  GFButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Secondary",
                                    ),
                                    color: GFColor.secondary,
                                    type: GFType.outline2x,
                                    shape: GFButtonShape.square,
                                  ),
                                  GFButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Success",
                                    ),
                                    type: GFType.outline2x,
                                    shape: GFButtonShape.square,
                                    color: GFColor.success,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  GFButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Warning",
                                    ),
                                    type: GFType.outline2x,
                                    shape: GFButtonShape.square,
                                    color: GFColor.warning,
                                  ),
                                  GFButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Danger",
                                    ),
                                    type: GFType.outline2x,
                                    shape: GFButtonShape.square,
                                    color: GFColor.danger,
                                  ),
                                  GFButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Info",
                                    ),
                                    type: GFType.outline2x,
                                    shape: GFButtonShape.square,
                                    color: GFColor.info,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  GFButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Light",
                                    ),
                                    type: GFType.outline2x,
                                    shape: GFButtonShape.square,
                                    color: GFColor.light,
                                  ),
                                  GFButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Dark",
                                    ),
                                    type: GFType.outline2x,
                                    shape: GFButtonShape.square,
                                    color: GFColor.dark,
                                  ),
                                  GFButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Link",
                                    ),
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
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  GFButton(
                                    onPressed: null,
                                    shape: GFButtonShape.square,
                                    child: Text(
                                      "Primary",
                                    ),
                                    type: GFType.outline2x,
                                    color: GFColor.primary,
                                  ),
                                  GFButton(
                                    onPressed: null,
                                    child: Text(
                                      "Secondary",
                                    ),
                                    color: GFColor.secondary,
                                    type: GFType.outline2x,
                                    shape: GFButtonShape.square,
                                  ),
                                  GFButton(
                                    onPressed: null,
                                    child: Text(
                                      "Success",
                                    ),
                                    type: GFType.outline2x,
                                    shape: GFButtonShape.square,
                                    color: GFColor.success,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  GFButton(
                                    onPressed: null,
                                    child: Text(
                                      "Warning",
                                    ),
                                    type: GFType.outline2x,
                                    shape: GFButtonShape.square,
                                    color: GFColor.warning,
                                  ),
                                  GFButton(
                                    onPressed: null,
                                    child: Text(
                                      "Danger",
                                    ),
                                    type: GFType.outline2x,
                                    shape: GFButtonShape.square,
                                    color: GFColor.danger,
                                  ),
                                  GFButton(
                                    onPressed: null,
                                    child: Text(
                                      "Info",
                                    ),
                                    type: GFType.outline2x,
                                    shape: GFButtonShape.square,
                                    color: GFColor.info,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  GFButton(
                                    onPressed: null,
                                    child: Text(
                                      "Light",
                                    ),
                                    type: GFType.outline2x,
                                    shape: GFButtonShape.square,
                                    color: GFColor.light,
                                  ),
                                  GFButton(
                                    onPressed: null,
                                    child: Text(
                                      "Dark",
                                    ),
                                    type: GFType.outline2x,
                                    shape: GFButtonShape.square,
                                    color: GFColor.dark,
                                  ),
                                  GFButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Link",
                                    ),
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
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  GFButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Large",
                                    ),
                                    color: GFColor.primary,
                                    size: GFSize.large,
                                    type: GFType.outline2x,
                                    shape: GFButtonShape.square,
                                  ),
                                  GFButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Normal",
                                    ),
                                    color: GFColor.primary,
                                    size: GFSize.medium,
                                    type: GFType.outline2x,
                                    shape: GFButtonShape.square,
                                  ),
                                  GFButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Small",
                                    ),
                                    color: GFColor.primary,
                                    size: GFSize.small,
                                    type: GFType.outline2x,
                                    shape: GFButtonShape.square,
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
                                child: Text(
                                  "Large",
                                ),
                                color: GFColor.primary,
                                size: GFSize.large,
                                type: GFType.outline2x,
                                shape: GFButtonShape.square,
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
                                type: GFType.outline2x,
                                shape: GFButtonShape.square,
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
                                type: GFType.outline2x,
                                shape: GFButtonShape.square,
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














                ]
            ),
          )
        ],
      )
    );
  }
}
