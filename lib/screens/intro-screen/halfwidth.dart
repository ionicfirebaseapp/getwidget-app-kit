import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class HalfWidthIntro extends StatefulWidget {
  HalfWidthIntro({Key? key}) : super(key: key);
  @override
  _HalfWidthIntroState createState() => _HalfWidthIntroState();
}

class _HalfWidthIntroState extends State<HalfWidthIntro> {
  late PageController _pageController;
  List<Widget>? slideList;
  late int initialPage;
  @override
  void initState() {
    _pageController = PageController(initialPage: 2);
    initialPage = _pageController.initialPage;
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.grey[200],
        body: SafeArea(
          child: GFIntroScreen(
            height: MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.width * 0.9,
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
            border: Border.all(color: Colors.grey[200]!),
            slides: slides()!,
            pageController: _pageController,
            // showIntroSCreenBottomNavigationBar: false,
// introScreenBottomNavigationBar: false,
            introScreenBottomNavigationBar: GFIntroScreenBottomNavigationBar(
              pageController: _pageController,
              pageCount: slideList!.length,
              currentIndex: initialPage,

              // child: Text('dfghj'),
              // onForwardButtonTap: () {
              //   // print('fffffff');
              //   _pageController.nextPage(
              //       duration: const Duration(milliseconds: 500),
              //       curve: Curves.linear);
              // },
              // onBackButtonTap: () {
              //   // print('kkkkkkkkk');
              //   _pageController.previousPage(
              //       duration: const Duration(milliseconds: 500),
              //       curve: Curves.linear);
              // },
              // onDoneTap: (){
              //   print('done');
              // },
              // onSkipTap: (){
              //   print('skip');
              // },
              // backButtonTextStyle: TextStyle(
              //   fontSize: 12
              // ),

              // backButton: GFButton(onPressed: null, child: Text('back'),),
              // forwardButton: GFButton(onPressed: null, child: Text('next'),),
              // skipButton: GFButton(onPressed: null, child: Text('skip'),),
              // doneButton: GFButton(onPressed: null, child: Text('done'),),

              backButtonText: 'Previous',
              forwardButtonText: 'Next',
              skipButtonText: 'Skip',
              doneButtonText: 'Done',

              navigationBarHeight: 50,
              navigationBarWidth: 300,
              // navigationBarMargin: EdgeInsets.all(20),
              // navigationBarPadding: EdgeInsets.all(20),
              navigationBarShape: RoundedRectangleBorder(
                side: const BorderSide(color: Colors.blue, width: 4),
                borderRadius: BorderRadius.circular(60),
              ),
              navigationBarColor: Colors.white,

              showDivider: false,
              // dividerHeight: 2,
              // dividerThickness: 13,
              // dividerColor: GFColors.ALT,

              dotHeight: 10,
              dotWidth: 16,
              dotShape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.grey[200]!, width: 1),
                  borderRadius: BorderRadius.circular(5)),
              inactiveColor: Colors.grey[200]!,
              activeColor: GFColors.SUCCESS,
              dotMargin: EdgeInsets.symmetric(horizontal: 6),

              // showButton: false,
              showPagination: true,
            ),
            currentIndex: 0,
            pageCount: 0,
          ),
        ),
      );

  List<Widget>? slides() {
    slideList = [
      Container(
        // color: Colors.teal,
        child: GFImageOverlay(
          width: MediaQuery.of(context).size.width,
// margin: const EdgeInsets.all(16),
          padding: EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 20),
                child: Text(
                  'Welcome Back!',
                  style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontSize: 25),
                ),
              ),
            ],
          ),
          color: Colors.orange,
          image: const AssetImage('lib/assets/images/i1.png'),
          boxFit: BoxFit.cover,
          colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
        ),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            // color: Colors.blue,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40)),
            image: DecorationImage(
              image: AssetImage('lib/assets/images/i2.png'),
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.darken),
            )),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            // color: Colors.red,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40)),
            image: DecorationImage(
              image: AssetImage('lib/assets/images/i3.png'),
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.darken),
            )),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            // color: Colors.teal,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40)),
            image: DecorationImage(
              image: AssetImage('lib/assets/images/i4.png'),
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.darken),
            )),
      ),
    ];
    return slideList;
  }
}
