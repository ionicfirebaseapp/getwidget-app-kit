import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:flutter/cupertino.dart';

class BottomSheetPage extends StatefulWidget {
  @override
  _BottomSheetPageState createState() => _BottomSheetPageState();
}

class _BottomSheetPageState extends State<BottomSheetPage> {
  final GFBottomSheetController _controller = GFBottomSheetController();
  bool isSelected = false;
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
            'BottomSheet',
            style: TextStyle(fontSize: 17),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[buildPostImage(), SizedBox(height: 20)],
        ),
        bottomSheet: GFBottomSheet(
          controller: _controller,
          maxContentHeight: 300,
          enableExpandableContent: true,
          stickyHeaderHeight: 100,
          stickyHeader: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.black45, blurRadius: 0)]),
            child: const GFListTile(
              avatar: GFAvatar(
                backgroundImage: AssetImage('lib/assets/images/img.png'),
              ),
              titleText: 'Eva Mendez',
              subTitleText: '11 minutes ago',
            ),
          ),
          contentBody: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                children: [
                  //  Container(
                  //       margin: EdgeInsets.symmetric(horizontal: 10),
                  //       height: 60,
                  //       padding: EdgeInsets.only(bottom: 15),
                  //       child: TextFormField(

                  //         initialValue: "Enter Message",
                  //         keyboardType: TextInputType.emailAddress,
                  //         decoration: InputDecoration(

                  //             errorBorder: OutlineInputBorder(
                  //                 borderSide: BorderSide(
                  //                     width: 0, color: Color(0xFFF44242))),
                  //             errorStyle: TextStyle(color: Color(0xFFF44242)),
                  //             contentPadding: EdgeInsets.all(10),
                  //             enabledBorder: const OutlineInputBorder(
                  //               borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                  //             ),

                  //             focusedBorder: OutlineInputBorder(
                  //               borderSide: BorderSide(color: Colors.grey),
                  //             ),
                  //             fillColor: Colors.white,
                  //             focusColor: Colors.white),
                  //       ),
                  //     ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'lib/assets/images/img1.png'))),
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 6),
                            child: Text(
                              'Add to your story',
                              style: TextStyle(color: Colors.blue),
                            ))
                      ],
                    ),
                  ),
                  ListView.builder(
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int index) {
                        return SingleChildScrollView(
                            child: InkWell(
                          child: GFListTile(
                            avatar: GFAvatar(
                              backgroundImage:
                                  AssetImage('lib/assets/images/img2.png'),
                              size: 20,
                            ),
                            subTitleText: 'John Mendez',
                            icon: Container(
                              width: 66,
                              height: 30,
                              child: GFButton(
                                onPressed: () {},
                                color: GFColors.PRIMARY,
                                child: Center(
                                    child: Text(
                                  'Send',
                                  style: TextStyle(color: Colors.white),
                                )),
                              ),
                            ),
                          ),
                        ));
                      }),
                ],
              ),
            ),
          ),
        ),
//                 bottomSheet: GFBottomSheet(
//           controller: _controller,
//           maxContentHeight: 300,
// // minContentHeight: 200,
//           enableExpandableContent: true,
//           stickyHeaderHeight: 70,
//           stickyHeader: const GFListTile(
//             padding: EdgeInsets.zero,
//             avatar: GFAvatar(
//                 backgroundImage: AssetImage('lib/assets/images/img.png'),
//                 size: 30,
//                 ),
//             titleText: 'Eva Mendez',
//             subtitleText: '11 minutes ago',
//           ),
//           contentBody: Container(
//             margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
//             child: ListView(
//               shrinkWrap: true,
//               physics: const ScrollPhysics(),
//               children: [
//                 Container(
//                   margin: EdgeInsets.symmetric(horizontal: 10),
//                   height: 60,
//                   padding: EdgeInsets.only(bottom: 15),
//                   child: TextFormField(
//                     initialValue: "Enter Message",
//                     keyboardType: TextInputType.emailAddress,
//                     decoration: InputDecoration(
//                         errorBorder: OutlineInputBorder(
//                             borderSide:
//                                 BorderSide(width: 0, color: Color(0xFFF44242))),
//                         errorStyle: TextStyle(color: Color(0xFFF44242)),
//                         contentPadding: EdgeInsets.all(10),
//                         enabledBorder: const OutlineInputBorder(
//                           borderSide:
//                               const BorderSide(color: Colors.grey, width: 0.0),
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderSide: BorderSide(color: Colors.grey),
//                         ),
//                         fillColor: Colors.white,
//                         focusColor: Colors.white),
//                   ),
//                 ),
//                 Container(
//                   child: Row(
//                     children: <Widget>[
//                       Container(
//                         width: 30,
//                         height: 30,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(50),
//                             image: DecorationImage(
//                                 image: AssetImage('lib/assets/images/img.png'))),
//                       ),
//                       Container(
//                           margin: EdgeInsets.only(left: 6),
//                           child: Text(
//                             'Add to your story',
//                             style: TextStyle(color: Colors.blue),
//                           ))
//                     ],
//                   ),
//                 ),
//                 ListView.builder(
//                     physics: ScrollPhysics(),
//                     shrinkWrap: true,
//                     scrollDirection: Axis.vertical,
//                     itemCount: 3,
//                     itemBuilder: (BuildContext context, int index) {
//                       return SingleChildScrollView(
//                           child: InkWell(
//                         child: GFListTile(
//                           avatar: GFAvatar(
//                             backgroundImage:
//                                 AssetImage('lib/assets/images/img.png'),
//                             size: 20,
//                           ),
//                           subtitleText: 'John Mendez',
//                           icon: Container(
//                             width: 66,
//                             height: 30,
//                             child: GFButton(
//                               onPressed: () {},
//                               color: GFColors.PRIMARY,
//                               child: Center(
//                                   child: Text(
//                                 'Send',
//                                 style: TextStyle(color: Colors.white),
//                               )),
//                             ),
//                           ),
//                         ),
//                       ));
//                     }),
//               ],
//             ),
//           ),
//         ),
      );

  Widget buildPostImage() {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.65,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('lib/assets/images/story.jpg'),
            fit: BoxFit.fill,
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.2), BlendMode.darken),
          )),
        ),
        Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 83,
              padding: EdgeInsets.all(10),
              color: Colors.black.withOpacity(0.30),
              child: Column(
                children: <Widget>[
                  Text(
                    'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      Text(
                        '123 Likes .',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        ' 86 Comments .',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        ' 19 Shares',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
            ))
      ],
    );
  }
}
