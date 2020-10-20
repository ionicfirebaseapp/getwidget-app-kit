import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class DropDownTypes extends StatefulWidget {
  @override
  _DropDownTypesState createState() => _DropDownTypesState();
}

class _DropDownTypesState extends State<DropDownTypes>
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

  String dropdownValue = 'FC Barcelona';
  List<dynamic> dropList = [
    'Running',
    'Walking',
    'Eating',
    'Sleeping',
    'Playing',
    'Drinking',
    'Jogging'
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
            'Dropdowns',
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
                    Container(
                      height: 50,
                      color: Colors.red,
                      child: DropdownButton(
                          value: _value,
                          underline: Container(),
                          icon: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              // Text('ROOM'),
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.black,
                              ),
                            ],
                          ),
                          items: [
                            DropdownMenuItem(
                              child: Text(
                                "Dish wash water",
                              ),
                              value: 1,
                            ),
                            DropdownMenuItem(
                              child: Text(
                                "dish wash",
                              ),
                              value: 2,
                            ),
                          ],
                          onChanged: (value) {
                            setState(() {
                              _value = value;
                            });
                          }),
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
                      height: 60,
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(color: Colors.black, blurRadius: 0)
                      ]),
                      child: GFDropdown(
                        // isExpanded: true,
                        itemHeight: 60,
                        // isDense: true,
                        hint: const Text('FC Barcelona'),
                        // padding: const EdgeInsets.all(12),
                        // borderRadius: BorderRadius.circular(12),
                        // border: const BorderSide(color: Colors.pink, width: 2, style: BorderStyle.solid),
                        // dropdownColor: Colors.tealAccent,
                        dropdownButtonColor: Colors.amber,
                        value: dropdownValue,
                        onChanged: (newValue) {
                          print('value $newValue');
                          setState(() {
                            dropdownValue = newValue;
                          });
                        },
                        items:
                            ['FC Barcelona', 'Real Madrid', 'Manchester city']
                                .map((value) => DropdownMenuItem(
                                      value: value,
                                      child: Text(value),
                                    ))
                                .toList(),
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
