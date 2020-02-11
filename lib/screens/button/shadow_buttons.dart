import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:getflutter/getflutter.dart';

class ShadowButtons extends StatefulWidget {
  @override
  _ShadowButtonsState createState() => _ShadowButtonsState();
}

class _ShadowButtonsState extends State<ShadowButtons> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: GFColors.DARK,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              CupertinoIcons.back,
              color: GFColors.SUCCESS,
            ),
          ),
          title: const Text(
            'Shadow Buttons',
            style: TextStyle(fontSize: 17),
          ),
          centerTitle: true,
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 30),
                child: GFTypography(
                  text: 'Default',
                  type: GFTypographyType.typo5,
                  dividerWidth: 25,
                  dividerColor: Color(0xFF19CA4B),
                ),
              ),
              GFCard(
                content: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GFButton(
                          onPressed: () {},
                          shape: GFButtonShape.standard,
                          buttonBoxShadow: true,
                          child: const Text(
                            'Primary',
                          ),
                          color: GFColors.PRIMARY,
                        ),
                        GFButton(
                          onPressed: () {},
                          child: const Text(
                            'Secondary',
                          ),
                          color: GFColors.SECONDARY,
                          buttonBoxShadow: true,
                        ),
                        GFButton(
                          onPressed: () {},
                          child: const Text(
                            'Success',
                          ),
                          buttonBoxShadow: true,
                          color: GFColors.SUCCESS,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GFButton(
                          onPressed: () {},
                          child: const Text(
                            'Warning',
                          ),
                          buttonBoxShadow: true,
                          color: GFColors.WARNING,
                        ),
                        GFButton(
                          onPressed: () {},
                          child: const Text(
                            'Danger',
                          ),
                          buttonBoxShadow: true,
                          color: GFColors.DANGER,
                        ),
                        GFButton(
                          onPressed: () {},
                          child: const Text(
                            'Info',
                          ),
                          buttonBoxShadow: true,
                          color: GFColors.INFO,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GFButton(
                          onPressed: () {},
                          child: const Text(
                            'Light',
                          ),
                          buttonBoxShadow: true,
                          color: GFColors.LIGHT,
                        ),
                        GFButton(
                          onPressed: () {},
                          child: const Text(
                            'Dark',
                            style: TextStyle(color: GFColors.WHITE),
                          ),
                          buttonBoxShadow: true,
                          color: GFColors.DARK,
                        ),
                        GFButton(
                          onPressed: () {},
                          child: const Text(
                            'Link',
                          ),
                          buttonBoxShadow: false,
                          color: GFColors.TRANSPARENT,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 10),
                child: GFTypography(
                  text: 'Button Sizes',
                  type: GFTypographyType.typo5,
                  dividerWidth: 25,
                  dividerColor: Color(0xFF19CA4B),
                ),
              ),
              GFCard(
                content: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GFButton(
                          onPressed: () {},
                          child: const Text(
                            'Large',
                          ),
                          color: GFColors.PRIMARY,
                          size: GFSize.LARGE,
                          buttonBoxShadow: true,
                        ),
                        GFButton(
                          onPressed: () {},
                          child: const Text(
                            'Normal',
                          ),
                          color: GFColors.PRIMARY,
                          size: GFSize.MEDIUM,
                          buttonBoxShadow: true,
                        ),
                        GFButton(
                          onPressed: () {},
                          child: const Text(
                            'Small',
                          ),
                          color: GFColors.PRIMARY,
                          size: GFSize.SMALL,
                          buttonBoxShadow: true,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 10),
                child: GFTypography(
                  text: 'Block Buttons',
                  type: GFTypographyType.typo5,
                  dividerWidth: 25,
                  dividerColor: Color(0xFF19CA4B),
                ),
              ),
              GFCard(
                content: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(
                      height: 10,
                    ),
                    GFButton(
                      onPressed: () {},
                      blockButton: true,
                      child: const Text('Large',
                          style: TextStyle(color: GFColors.WHITE)),
                      color: GFColors.PRIMARY,
                      size: GFSize.LARGE,
                      buttonBoxShadow: true,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GFButton(
                      onPressed: () {},
                      blockButton: true,
                      child: const Text('Normal',
                          style: TextStyle(color: GFColors.WHITE)),
                      color: GFColors.PRIMARY,
                      size: GFSize.MEDIUM,
                      buttonBoxShadow: true,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GFButton(
                      onPressed: () {},
                      blockButton: true,
                      child: const Text('Small',
                          style: TextStyle(color: GFColors.WHITE)),
                      color: GFColors.PRIMARY,
                      size: GFSize.SMALL,
                      buttonBoxShadow: true,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
