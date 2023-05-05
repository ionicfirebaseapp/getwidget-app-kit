import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class MultiselectTypes extends StatefulWidget {
  @override
  _MultiselectTypesState createState() => _MultiselectTypesState();
}

class _MultiselectTypesState extends State<MultiselectTypes>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController!.dispose();
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
  String? dropdown;
  String? selected, selectedIndex;

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
                    ///
                    /// todo: need fix
                    ///
                    GFMultiSelect(
                      items: dropList,
//                      onSelect: (value) {
//                        print('sel $value ');
//                      },
//
//                      dropdownTitleTileText: 'Messi, Griezmann, Coutinho ',
//                      dropdownTitleTileMargin: EdgeInsets.only(
//                          top: 22, left: 18, right: 18, bottom: 5),
//                      dropdownTitleTilePadding: EdgeInsets.all(10),
//                      dropdownUnderlineBorder:
//                          const BorderSide(color: Colors.transparent, width: 2),
//                      dropdownTitleTileBorder:
//                          Border.all(color: Colors.grey[200], width: 1),
//                      dropdownTitleTileBorderRadius: BorderRadius.circular(5),
//                      expandedIcon: const Icon(
//                        Icons.keyboard_arrow_down,
//                        color: Colors.black54,
//                      ),
//                      collapsedIcon: const Icon(
//                        Icons.keyboard_arrow_up,
//                        color: Colors.black54,
//                      ),
//                      submitButton: Text('OK'),
//                      cancelButton: Text('Cancel'),
//                      dropdownTitleTileTextStyle:
//                          const TextStyle(fontSize: 14, color: Colors.black54),
                      padding: const EdgeInsets.all(6),
                      margin: const EdgeInsets.all(6),
                      type: GFCheckboxType.basic,
                      activeBgColor: GFColors.SUCCESS,
                      activeBorderColor: GFColors.SUCCESS,
                      inactiveBorderColor: Colors.grey[200]!,
                      onSelect: (value) {},
                    ),
                    Container(
                      child: GFMultiSelect(
                        items: dropList,
                        //  onSelect: (value) {
                        //    print('sel $value ');
                        //  },
                        dropdownTitleTileText: 'Messi, Griezmann, Coutinho ',
                        dropdownTitleTileColor: Colors.grey[200],
                        dropdownTitleTileMargin: EdgeInsets.only(
                            top: 22, left: 18, right: 18, bottom: 5),
                        dropdownTitleTilePadding: EdgeInsets.all(10),
                        dropdownUnderlineBorder: const BorderSide(
                            color: Colors.transparent, width: 2),
                        //  dropdownTitleTileBorder:
                        //      Border.all(color: Colors.grey[300], width: 1),
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
                        dropdownTitleTileTextStyle: const TextStyle(
                            fontSize: 14, color: Colors.black54),
                        padding: const EdgeInsets.all(6),
                        margin: const EdgeInsets.all(6),
                        type: GFCheckboxType.basic,
                        activeBgColor: Colors.green.withOpacity(0.5),
                        inactiveBorderColor: Colors.grey[200]!,
                        onSelect: (value) {},
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
