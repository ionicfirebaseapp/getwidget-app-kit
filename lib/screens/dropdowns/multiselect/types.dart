import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class MultiselectTypes extends StatefulWidget {
  @override
  _MultiselectTypesState createState() => _MultiselectTypesState();
}

class _MultiselectTypesState extends State<MultiselectTypes>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  int _value = 1;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  String dropdownValue = 'One';
  List<dynamic> dropList = [
    'Messi',
    'Griezmann',
    'Coutinho',
    'Fati',
    'Dest',
  ];
  String dropdown;
  String selected, selectedIndex;
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: GFColors.DARK,
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                child: Icon(
                  CupertinoIcons.back,
                  color: GFColors.SUCCESS,
                ),
              )),
          title: const Text(
            'Multiselect',
            style: TextStyle(fontSize: 17),
          ),
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 40,
                margin: const EdgeInsets.only(top: 20, left: 25, right: 25),
                child: GFSegmentTabs(
                  tabController: tabController,
                  width: 280,
                  length: 2,
                  tabs: const <Widget>[
                    Tab(
                      child: Text('Basic'),
                    ),
                    Tab(
                      child: Text('Custom'),
                    ),
                  ],
                  tabBarColor: GFColors.LIGHT,
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelColor: GFColors.WHITE,
                  unselectedLabelColor: GFColors.DARK,
                  indicator: const BoxDecoration(
                    color: Colors.black,
                    border: Border(
                      bottom: BorderSide(
                        color: GFColors.SUCCESS,
                        width: 3,
                      ),
                    ),
                  ),
                  indicatorPadding: const EdgeInsets.all(8),
                  indicatorWeight: 2,
                  border: Border.all(color: Colors.white, width: 2),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height - 140,
                child: GFTabBarView(
                  controller: tabController,
                  height: 400,
                  children: <Widget>[
                    GFMultiSelect(
                      items: dropList,
                      onSelect: (value) {
                        print('sel $value ');
                      },
                      dropDownTitleTileText: 'Messi, Griezmann, Coutinho ',
                      // dropDownTitleTileHintText: 'select',
                      // dropDownTitleTileHintTextStyle: const TextStyle(
                      //     fontSize: 14,
                      //     color: Colors.black54),
                      dropdownTitleTileMargin: EdgeInsets.only(
                          top: 22, left: 18, right: 18, bottom: 5),
                      dropdownTitleTilePadding: EdgeInsets.all(10),
                      // hideDropdownUnderline: true,
                      dropdownUnderlineBorder:
                          const BorderSide(color: Colors.transparent, width: 2),
                      dropdownTitleTileBorder:
                          Border.all(color: Colors.grey[200], width: 1),
                      dropdownTitleTileBorderRadius: BorderRadius.circular(5),
                      expandedIcon: const Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.black54,
                      ),
                      collapsedIcon: const Icon(
                        Icons.keyboard_arrow_up,
                        color: Colors.black54,
                      ),
                      submitButton: Text('OK'),
                      dropDownTitleTileTextStyle:
                          const TextStyle(fontSize: 14, color: Colors.black54),

                      // color: Colors.blueGrey,
                      // avatar: const GFAvatar(
                      //   backgroundColor: Colors.red,
                      // ),
                      padding: const EdgeInsets.all(6),
                      margin: const EdgeInsets.all(6),
                      // size: GFSize.LARGE,
                      type: GFCheckboxType.basic,
                      checkColor: Colors.white,
                      activebgColor: GFColors.SUCCESS,
                      // inactivebgColor: Colors.grey[200],
                      activeBorderColor: GFColors.SUCCESS,
                      inactiveBorderColor: Colors.grey[200],
                      // dropdownbgColor: Colors.pink,
                      //  type: GFCheckboxType.custom,
                      // activeIcon: const Icon(
                      //   Icons.check,
                      //   size: 20,
                      //   color: GFColors.DARK,
                      // ),
                      // inactiveIcon: const Icon(
                      //   Icons.check_box_outline_blank,
                      //   size: 20,
                      //   color: GFColors.DARK,
                      // ),
                      // custombgColor: Colors.green,
                      // selected: true,
                    ),

                    //      Container(
                    //       //  height: 60,
                    //       //  width: 200,
                    //        margin: EdgeInsets.all(15),
                    //        decoration: BoxDecoration(
                    //          boxShadow: [
                    //            BoxShadow(
                    //              color: Colors.black,
                    //              blurRadius: 0
                    //            )
                    //          ]
                    //        ),
                    //        child: GFDropdown(
                    //   // isExpanded: true,
                    //   // itemHeight: 60,

                    //   // isDense: true,
                    //   hint: const Text('FC Barcelona'),
                    //   // padding: const EdgeInsets.all(12),
                    //   // borderRadius: BorderRadius.circular(12),
                    //   // border: const BorderSide(color: Colors.pink, width: 2, style: BorderStyle.solid),
                    //   // dropdownColor: Colors.tealAccent,
                    //   dropdownButtonColor: Colors.amber,
                    //   value: dropdownValue,
                    //   onChanged: (newValue) {
                    //     print('value $newValue');
                    //     setState(() {
                    //         dropdownValue = newValue;
                    //     });
                    //   },
                    //   items: ['FC Barcelona', 'Real Madrid', 'Manchester city']
                    //         .map((value) => DropdownMenuItem(
                    //     value: value,
                    //     child: Text(value),
                    //   )).toList(),
                    // ),
                    //      ),
                    Container(
                      // height: 60,
                      // margin: EdgeInsets.all(15),
                      // decoration: BoxDecoration(boxShadow: [
                      //   BoxShadow(color: Colors.green, blurRadius: 0)
                      // ]),
                      child: GFMultiSelect(
                        items: dropList,
                        onSelect: (value) {
                          print('sel $value ');
                        },
                        dropDownTitleTileText: 'Messi, Griezmann, Coutinho ',
                        // dropDownTitleTileHintText: 'select',
                        // dropDownTitleTileHintTextStyle: const TextStyle(
                        //     fontSize: 14,
                        //     color: Colors.black54),
                        dropdownTitleTileColor: Colors.grey[200],
                        dropdownTitleTileMargin: EdgeInsets.only(
                            top: 22, left: 18, right: 18, bottom: 5),
                        dropdownTitleTilePadding: EdgeInsets.all(10),
                        // hideDropdownUnderline: true,
                        dropdownUnderlineBorder: const BorderSide(
                            color: Colors.transparent, width: 2),
                        dropdownTitleTileBorder:
                            Border.all(color: Colors.grey[300], width: 1),
                        dropdownTitleTileBorderRadius: BorderRadius.circular(5),
                        expandedIcon: const Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.black54,
                        ),
                        collapsedIcon: const Icon(
                          Icons.keyboard_arrow_up,
                          color: Colors.black54,
                        ),
                        submitButton: Text('OK'),
                        dropDownTitleTileTextStyle: const TextStyle(
                            fontSize: 14, color: Colors.black54),

                        // color: Colors.blueGrey,
                        // avatar: const GFAvatar(
                        //   backgroundColor: Colors.red,
                        // ),
                        padding: const EdgeInsets.all(6),
                        margin: const EdgeInsets.all(6),
                        // size: GFSize.LARGE,
                        type: GFCheckboxType.basic,
                        checkColor: Colors.white,
                        activebgColor: Colors.green.withOpacity(0.5),
                        // inactivebgColor: Colors.grey[200],
                        // activeBorderColor: GFColors.SUCCESS,
                        inactiveBorderColor: Colors.grey[200],
                        // dropdownbgColor: Colors.pink,
                        //  type: GFCheckboxType.custom,
                        // activeIcon: const Icon(
                        //   Icons.check,
                        //   size: 20,
                        //   color: GFColors.DARK,
                        // ),
                        // inactiveIcon: const Icon(
                        //   Icons.check_box_outline_blank,
                        //   size: 20,
                        //   color: GFColors.DARK,
                        // ),
                        // custombgColor: Colors.green,
                        // selected: true,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
}
