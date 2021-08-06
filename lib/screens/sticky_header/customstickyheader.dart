import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:flutter/cupertino.dart';

class CustomStickyHeader extends StatefulWidget {
  @override
  _CustomStickyHeaderState createState() => _CustomStickyHeaderState();
}

class _CustomStickyHeaderState extends State<CustomStickyHeader>
    with SingleTickerProviderStateMixin {
  final List<String> imageList = [
    "lib/assets/images/e1.png",
    "lib/assets/images/e2.png",
    "lib/assets/images/e3.png",
    "lib/assets/images/e5.png",
    "lib/assets/images/e1.png",
    "lib/assets/images/s3.png",
    "lib/assets/images/s4.png",
    "lib/assets/images/s5.png",
  ];
  int groupValue = 0;

  @override
  void initState() {
    super.initState();
  }

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
            'Sticky Header',
            style: TextStyle(fontSize: 17),
          ),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: imageList.length,
            itemBuilder: (context, index) => GFStickyHeaderBuilder(
                  direction: Axis.horizontal,
                  // enableHeaderOverlap: true,
                  // stickyContentPosition: GFPosition.end,
                  stickyContentBuilder:
                      (BuildContext context, double stuckValue) {
                    stuckValue = 1.0 - stuckValue.clamp(0.0, 1.0);
                    return Column(
                      children: [
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.5,
                          color: Color.lerp(Color(0xFF42335d).withOpacity(0.6),
                              Color(0xFF42335d), stuckValue),
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  'Product Name $index',
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ),
                              // Offstage(
                              //   offstage: stuckValue <= 0.0,
                              //   child: Opacity(
                              //     opacity: stuckValue,
                              //     child: IconButton(
                              //       icon: const Icon(Icons.image,
                              //           color: Colors.white),
                              //       onPressed: () => Scaffold.of(context)
                              //           .showSnackBar(SnackBar(
                              //               content: Text('Favorite #$index'))),
                              //     ),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                        Container(
                          // height: 200,
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: ListView.builder(
                              physics: ScrollPhysics(),
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: 1,
                              itemBuilder: (BuildContext context, int index) {
                                return SingleChildScrollView(
                                  child: Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        // GFRadioListTile(
                                        //   titleText: 'Medium',
                                        //   size: 20,
                                        //   activeBorderColor: Colors.green,
                                        //   focusColor: Colors.green,
                                        //   type: GFRadioType.square,
                                        //   value: 1,
                                        //   groupValue: groupValue,
                                        //   onChanged: (val) {
                                        //     setState(() {
                                        //       groupValue = val;
                                        //     });
                                        //   },
                                        //   inactiveIcon: null,
                                        // ),
                                        SizedBox(height: 15),
                                        Row(
                                          children: [
                                            GFRadio(
                                              type: GFRadioType.blunt,
                                              size: 23,
                                              value: 1,
                                              groupValue: groupValue,
                                              onChanged: (dynamic val) {
                                                setState(() {
                                                  groupValue = val;
                                                });
                                              },
                                              inactiveIcon: null,
                                              activeBorderColor:
                                                  GFColors.SUCCESS,
                                              customBgColor: GFColors.SUCCESS,
                                            ),
                                            SizedBox(width: 5),
                                            Text('Large')
                                          ],
                                        ),
                                        SizedBox(height: 8),
                                        Row(
                                          children: [
                                            GFRadio(
                                              type: GFRadioType.blunt,
                                              size: 23,
                                              value: 2,
                                              groupValue: groupValue,
                                              onChanged: (dynamic val) {
                                                setState(() {
                                                  groupValue = val;
                                                });
                                              },
                                              inactiveIcon: null,
                                              activeBorderColor:
                                                  GFColors.SUCCESS,
                                              customBgColor: GFColors.SUCCESS,
                                            ),
                                            SizedBox(width: 5),
                                            Text('Medium')
                                          ],
                                        ),
                                        SizedBox(height: 8),
                                        Row(
                                          children: [
                                            GFRadio(
                                              type: GFRadioType.blunt,
                                              size: 23,
                                              value: 3,
                                              groupValue: groupValue,
                                              onChanged: (dynamic val) {
                                                setState(() {
                                                  groupValue = val;
                                                });
                                              },
                                              inactiveIcon: null,
                                              activeBorderColor:
                                                  GFColors.SUCCESS,
                                              customBgColor: GFColors.SUCCESS,
                                            ),
                                            SizedBox(width: 5),
                                            Text('Small')
                                          ],
                                        ),
                                        SizedBox(height: 8),
                                        Row(
                                          children: [
                                            GFRadio(
                                              type: GFRadioType.blunt,
                                              size: 23,
                                              value: 3,
                                              groupValue: groupValue,
                                              onChanged: (dynamic val) {
                                                setState(() {
                                                  groupValue = val;
                                                });
                                              },
                                              inactiveIcon: null,
                                              activeBorderColor:
                                                  GFColors.SUCCESS,
                                              customBgColor: GFColors.SUCCESS,
                                            ),
                                            SizedBox(width: 5),
                                            Text('Extra Small')
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ],
                    );
                  },
                  content: Container(
                    // margin: EdgeInsets.all(8),
                    height: 200,
                    width: MediaQuery.of(context).size.width * 0.5,
                    color: Colors.teal,
                    child: Image.asset(imageList[index],
                        fit: BoxFit.fill, width: 100, height: 200),
                  ),
                )),
      );
}
