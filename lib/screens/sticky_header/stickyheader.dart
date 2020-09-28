import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:flutter/cupertino.dart';

class StickyHeader extends StatefulWidget {
  @override
  _StickyHeaderState createState() => _StickyHeaderState();
}

class _StickyHeaderState extends State<StickyHeader>
    with SingleTickerProviderStateMixin {
  final List<String> imageList = [
    "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/12/13/00/23/christmas-3015776_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/19/10/55/christmas-market-4705877_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/22/04/18/x-mas-4711785__340.jpg",
    "https://cdn.pixabay.com/photo/2016/11/22/07/09/spruce-1848543__340.jpg"
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
            'Sticky Headers',
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
                      color: Color.lerp(
                          Colors.teal[100], Colors.teal[600], stuckValue),
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'Image #$index',
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                          Offstage(
                            offstage: stuckValue <= 0.0,
                            child: Opacity(
                              opacity: stuckValue,
                              child: IconButton(
                                icon: const Icon(Icons.image,
                                    color: Colors.white),
                                onPressed: () => Scaffold.of(context)
                                    .showSnackBar(SnackBar(
                                        content: Text('Favorite #$index'))),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  content: Container(
                    // margin: EdgeInsets.all(8),
                    height: 200,
                    width: MediaQuery.of(context).size.width * 0.5,
                    color: Colors.teal,
                    child: Image.network(imageList[index],
                        fit: BoxFit.cover, width: 100, height: 200),
                  ),
                )),
// Center(
//   // alignment: AlignmentDirectional.center,
//     child: ListView.builder(
//       itemCount: imageList.length,
//         itemBuilder: (context, index) => GFStickyHeaderBuilder(
//           direction: Axis.vertical,
//           // enableHeaderOverlap: true,
//           // stickyContentPosition: GFPosition.end,
//           stickyContentBuilder:
//               (BuildContext context, double stuckValue) {
//             stuckValue = 1.0 - stuckValue.clamp(0.0, 1.0);
//             return Center(
//               child: Container(
//                 height: 50.0,
//                 width: 100,
//                 color:
//                 Colors.grey[900].withOpacity(0.6 + stuckValue * 0.4),
//                 padding: EdgeInsets.symmetric(horizontal: 16.0),
//                 alignment: Alignment.centerLeft,
//                 child: Text(
//                   'Header #$index',
//                   style: const TextStyle(color: Colors.white),
//                 ),
//               ),
//             );
//           },
//           content: Container(
//             // margin: EdgeInsets.all(8),
//             height: 200,
//             width: 200,
//             color: Colors.teal,
//             child: Image.network(imageList[index],
//                 fit: BoxFit.cover, width: 100, height: 200.0),
//           ),
//         ))),
// Container(
//   height: 600,
//   color: Colors.teal,
//   child: ListView.builder(
//       itemCount: imageList.length,
//       itemBuilder: (context, index) => GFStickyHeader(
//         // enableHeaderOverlap: true,
//         // direction: Axis.horizontal,
//         // stickyContentPosition: GFPosition.end,
//         stickyContent: Container(
//           // alignment: AlignmentDirectional.centerEnd,
//           child: Container(
//             alignment: AlignmentDirectional.center,
//             height: 50,
//             width: 100,
//             color: Colors.blueGrey[700],
//             padding: EdgeInsets.symmetric(horizontal: 16.0),
//             child: Text(
//               'Image $index',
//               style: const TextStyle(color: Colors.white),
//             ),
//           ),
//         ),
//         content: Container(
//           // height: 100,
//           width: 200,
//           child: Image.network(
//             imageList[index],
//             fit: BoxFit.cover,
//             height: 100,
//           ),
//         ),
//       )),
// ),
        // ListView(
        //   children: [
        //     Image.network(imageList[3], height: 200, fit: BoxFit.cover,),
        //     Image.network(imageList[4], height: 200, fit: BoxFit.cover,),
        //     GFStickyHeader(
        //       enableHeaderOverlap: true,
        //       stickyContent: Container(
        //         height: 100,
        //         color: Colors.teal,
        //         padding: const EdgeInsets.symmetric(horizontal: 16),
        //         alignment: Alignment.centerLeft,
        //         child: const Text(
        //           'Title',
        //           style: TextStyle(color: Colors.white),
        //         ),
        //       ),
        //       content: ListView(
        //         shrinkWrap: true,
        //         physics: const ScrollPhysics(),
        //         children: [
        //           Image.network(imageList[0], height: 200, fit: BoxFit.fill,),
        //           Image.network(imageList[1], height: 200, fit: BoxFit.fill,),
        //           Image.network(imageList[2], height: 200, fit: BoxFit.fill,),
        //           Image.network(imageList[0], height: 200, fit: BoxFit.fill,),
        //           Image.network(imageList[1], height: 200, fit: BoxFit.fill,),
        //           Image.network(imageList[2], height: 200, fit: BoxFit.fill,)
        //         ],
        //       ),
        //     )

        //     ],
        //   )
      );
}
