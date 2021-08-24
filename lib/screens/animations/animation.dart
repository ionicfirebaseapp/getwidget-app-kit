import 'package:flutter/material.dart';
import 'package:getwidget/components/animation/gf_animation.dart';
import 'package:getwidget/getwidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:getwidget/types/gf_animation_type.dart';

class AnimationPage extends StatefulWidget {
  @override
  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage>
    with SingleTickerProviderStateMixin {
  bool selected = false;
  AnimationController? controller;
  Animation<double>? animation;
  bool _first = true;
  double _fontSize = 30;
  Color _color = GFColors.SUCCESS;
  Animation<Offset>? offsetAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    animation =
        new CurvedAnimation(parent: controller!, curve: Curves.bounceInOut);
    controller!.repeat();

    offsetAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(1.5, 0),
    ).animate(CurvedAnimation(
      parent: controller!,
      curve: Curves.linear,
    ));
  }

  @override
  void dispose() {
    if (controller != null) controller!.dispose();
    super.dispose();
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
          'Animation',
          style: TextStyle(fontSize: 17),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 30, bottom: 20),
              child: GFTypography(
                text: 'Rotation',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),
            GestureDetector(
              onTap: () {
                controller!.repeat();
              },
              child: GFAnimation(
                turnsAnimation: animation,
                controller: controller,
                type: GFAnimationType.rotateTransition,
                alignment: Alignment.center,
                child: Image.asset(
                  'lib/assets/icons/Rotation.png',
                  width: 80,
                  height: 80,
                ),
              ),
            ),
            SizedBox(height: 5),
            Center(child: Text('Tap Me')),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 30, bottom: 20),
              child: GFTypography(
                text: 'Scaling',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),
            GestureDetector(
              onTap: () {
                controller!.repeat();
              },
              child: GFAnimation(
                scaleAnimation: animation,
                controller: controller,
                type: GFAnimationType.scaleTransition,
                child: Image.asset(
                  'lib/assets/icons/scaling.png',
                  width: 80,
                  height: 80,
                ),
              ),
            ),
            SizedBox(height: 5),
            Center(child: Text('Tap Me')),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 30, bottom: 20),
              child: GFTypography(
                text: 'Allignment',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),
            GFAnimation(
              duration: Duration(seconds: 2),
              alignment: Alignment.centerLeft,
              type: GFAnimationType.align,
              child: Image.asset(
                'lib/assets/icons/allign.png',
                width: 80,
                height: 80,
              ),
            ),
            SizedBox(height: 5),
            Center(child: Text('Tap Me')),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 30, bottom: 20),
              child: GFTypography(
                text: 'Slide Transition',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: GFAnimation(
                controller: controller,
                slidePosition: offsetAnimation,
                type: GFAnimationType.slideTransition,
                child: Image.asset(
                  'lib/assets/icons/slide.png',
                  width: 80,
                  height: 80,
                ),
              ),
            ),
            SizedBox(height: 5),
            // Center(child: Text('Tap Me')),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 30, bottom: 20),
              child: GFTypography(
                text: 'Size',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),
            GFAnimation(
              onTap: () {
                if (mounted) {
                  setState(() {
                    selected = !selected;
                  });
                }
              },
              width: selected ? 100 : 50,
              height: selected ? 100 : 50,
              type: GFAnimationType.size,
              controller: controller,
              child: Image.asset(
                'lib/assets/icons/size.png',
              ),
            ),
            SizedBox(height: 5),
            Center(child: Text('Tap Me')),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 30, bottom: 20),
              child: GFTypography(
                text: 'TextStyle',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),
            GFAnimation(
              onTap: () {
                setState(() {
                  _fontSize = _first ? 60 : 30;
                  _color = _first ? Colors.blue : Colors.red;
                  _first = !_first;
                });
              },
              color: _color,
              fontSize: _fontSize,
              type: GFAnimationType.textStyle,
              child: Center(child: Text('Get Widget')),
            ),
            SizedBox(height: 5),
            Center(child: Text('Tap Me')),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 30, bottom: 20),
              child: GFTypography(
                text: 'Container',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),
            GFAnimation(
              width: 50,
              changedWidth: 100,
              height: 50,
              changedHeight: 100,
              activeColor: Colors.transparent,
              color: Colors.transparent,
              fontSize: _fontSize,
              type: GFAnimationType.container,
              child: Image.asset(
                'lib/assets/icons/slide.png',
                width: 80,
                height: 80,
              ),
            ),
            SizedBox(height: 5),
            Center(child: Text('Tap Me')),
            SizedBox(height: 20),
          ],
        ),
      ));
}
