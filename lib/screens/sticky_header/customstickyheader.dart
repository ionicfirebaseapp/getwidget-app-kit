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
    "lib/assets/images/s1.png",
    "lib/assets/images/s2.png",
    "lib/assets/images/s3.png",
    "lib/assets/images/s4.png",
    "lib/assets/images/s5.png",
    "lib/assets/images/s1.png",
    "lib/assets/images/s2.png",
    "lib/assets/images/s3.png",
    "lib/assets/images/s4.png",
    "lib/assets/images/s5.png",
  ];

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
                    return Container(
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
                              'Product #$index',
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
