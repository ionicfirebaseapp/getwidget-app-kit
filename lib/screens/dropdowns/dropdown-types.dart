import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:gf_app/screens/dropdowns/dropdown/types.dart';
import 'package:gf_app/screens/dropdowns/multiselect/types.dart';

class DropDown extends StatefulWidget {
  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String dropdownValue = 'One';
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
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => DropDownTypes()),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 15, right: 15, top: 20),
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(7)),
                        color: GFColors.DARK,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.40),
                              blurRadius: 5)
                        ]),
                    child: GFListTile(
                        color: GFColors.DARK,
                        title: const Text(
                          'Drop down',
                          style: TextStyle(color: GFColors.WHITE),
                        ),
                        icon: Icon(
                          CupertinoIcons.forward,
                          color: GFColors.SUCCESS,
                        )),
                  )),
              Container(
                //  height: 60,
                width: 200,
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    boxShadow: [BoxShadow(color: Colors.black, blurRadius: 0)]),
                child: GFDropdown(
                  // isExpanded: true,
                  // itemHeight: 60,
                  // icon: Icon(Icons.keyboard_arrow_down),
                  // isDense: true,
                  hint: const Text('one'),
                  // padding: const EdgeInsets.all(12),
                  borderRadius: BorderRadius.circular(2),
                  // border: const BorderSide(color: Colors.pink, width: 2, style: BorderStyle.solid),
                  // dropdownColor: Colors.tealAccent,
                  // dropdownButtonColor: Colors.amber,
                  // underline: Color(0xFFFFFFFF),
                  underline: Text(''),
                  value: dropdownValue,
                  onChanged: (newValue) {
                    print('value $newValue');
                    setState(() {
                      dropdownValue = newValue;
                    });
                  },
                  items: ['One', 'Two', 'Free', 'Four']
                      .map((value) => DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          ))
                      .toList(),
                ),
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              MultiselectTypes()),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 15, right: 15, top: 20),
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(7)),
                        color: GFColors.DARK,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.40),
                              blurRadius: 5)
                        ]),
                    child: GFListTile(
                        color: GFColors.DARK,
                        title: const Text(
                          'Multi select',
                          style: TextStyle(color: GFColors.WHITE),
                        ),
                        icon: Icon(
                          CupertinoIcons.forward,
                          color: GFColors.SUCCESS,
                        )),
                  )),
              // GFMultiSelect(
              //   items: dropList,
              //   onSelect: (value) {
              //     print('sel $value ');
              //   },
              //   dropDownTitleTileText: 'Select options : ',
              //   dropDownTitleTileHintText: 'select',
              //   dropDownTitleTileHintTextStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.pink),
              //   dropdownTitleTileMargin: EdgeInsets.all(2),
              //   dropdownTitleTilePadding: EdgeInsets.all(4),
              //   hideDropdownUnderline: true,
              //   // dropdownUnderlineBorder: const BorderSide(color: Colors.transparent, width: 2),
              //   // dropdownTitleTileBorder: Border.all(color: Colors.pink, width: 2),
              //   dropdownTitleTileBorderRadius: BorderRadius.circular(75),
              //   expandedIcon: const Icon(Icons.edit, color: Colors.tealAccent,),
              //   collapsedIcon: const Text('close'),
              //   submitButton: const Text('OK'),
              //   dropDownTitleTileTextStyle: const TextStyle(
              //       fontSize: 16,
              //       fontWeight: FontWeight.w500,
              //       color: Colors.pink),
              //   //
              //   color: Colors.blueGrey,
              //   avatar: const GFAvatar(
              //     backgroundColor: Colors.red,
              //   ),
              //   padding: const EdgeInsets.all(6),
              //   margin: const EdgeInsets.all(26),
              //   size: GFSize.LARGE,
              //   type: GFCheckboxType.basic,
              //   checkColor: GFColors.ALT,
              //   activebgColor: GFColors.LIGHT,
              //   inactivebgColor: GFColors.SECONDARY,
              //   activeBorderColor: GFColors.SUCCESS,
              //   inactiveBorderColor: GFColors.PRIMARY,
              //   dropdownbgColor: Colors.pink,
              //   activeIcon: const Icon(
              //     Icons.check,
              //     size: 20,
              //     color: GFColors.DARK,
              //   ),
              //   inactiveIcon: const Icon(
              //     Icons.check_box_outline_blank,
              //     size: 20,
              //     color: GFColors.DARK,
              //   ),
              //   custombgColor: Colors.green,
              //   selected: true,
              // ),
              // const SizedBox(
              //   height: 22,
              // ),
              // GFDropdown(
              //   isExpanded: true,
              //   isDense: true,
              //   hint: selected == null ? const Text('select') : Text('$selectedIndex $selected'),
              //   padding: const EdgeInsets.all(12),
              //   borderRadius: BorderRadius.circular(42),
              //   border: const BorderSide(color: Colors.pink, width: 2, style: BorderStyle.solid),
              //   dropdownColor: Colors.tealAccent,
              //   dropdownButtonColor: Colors.amber,
              //   value: dropdown,
              //   onChanged: (newValue) {
              //     print('val $newValue');
              //     setState(() {
              //       selected = newValue.value;
              //       selectedIndex = newValue.key.toString();
              //     });
              //   },
              //   items: ['One', 'Two', 'Free', 'Four']
              //       .asMap()
              //       .entries
              //       .map((value) => DropdownMenuItem(
              //     value: value,
              //     child: Text('${value.value}'),
              //   ))
              //       .toList(),
              // ),
              // const SizedBox(
              //   height: 22,
              // ),
              // GFDropdown(
              //   // isExpanded: true,
              //   // isDense: true,
              //   // hint: const Text('select'),
              //   // padding: const EdgeInsets.all(12),
              //   // borderRadius: BorderRadius.circular(12),
              //   // border: const BorderSide(color: Colors.pink, width: 2, style: BorderStyle.solid),
              //   // dropdownColor: Colors.tealAccent,
              //   // dropdownButtonColor: Colors.amber,
              //   value: dropdownValue,
              //   onChanged: (newValue) {
              //     print('value $newValue');
              //     setState(() {
              //       dropdownValue = newValue;
              //     });
              //   },
              //   items: ['One', 'Two', 'Free', 'Four']
              //       .map((value) => DropdownMenuItem(
              //     value: value,
              //     child: Text(value),
              //   )).toList(),
              // ),
            ],
          ),
        ),
      );
}
