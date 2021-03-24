import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:getwidget/getwidget.dart';

class RatingPage extends StatefulWidget {
  @override
  _RatingPageState createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> {
  final _ratingController = TextEditingController();
  final _customController = TextEditingController();
  double _userRating = 4.5;
  double _rating = 3;
  double _customrating = 2;
  double _iconRating = 2;
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
          'Rating',
          style: TextStyle(fontSize: 17),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(left: 15, top: 30, bottom: 10),
            child: GFTypography(
              text: 'Basic Rating',
              type: GFTypographyType.typo5,
              dividerWidth: 25,
              dividerColor: Color(0xFF19CA4B),
            ),
          ),
          GFRating(
            color: GFColors.SUCCESS,
            borderColor: GFColors.SUCCESS,
            value: _rating,
            onChanged: (value) {
              setState(() {
                _rating = value;
              });
            },
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, top: 30, bottom: 10),
            child: GFTypography(
              text: 'Rating with Icons',
              type: GFTypographyType.typo5,
              dividerWidth: 25,
              dividerColor: Color(0xFF19CA4B),
            ),
          ),
          GFRating(
            color: GFColors.SUCCESS,
            borderColor: GFColors.SUCCESS,
            filledIcon: Icon(
              Icons.check,
              color: GFColors.DANGER,
            ),
            size: GFSize.SMALL,
            value: _iconRating,
            onChanged: (value) {
              setState(() {
                _iconRating = value;
              });
            },
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, top: 30, bottom: 10),
            child: GFTypography(
              text: 'Rating using Text Field',
              type: GFTypographyType.typo5,
              dividerWidth: 25,
              dividerColor: Color(0xFF19CA4B),
            ),
          ),
          GFRating(
            color: GFColors.SUCCESS,
            borderColor: GFColors.SUCCESS,
            value: _userRating,
            showTextForm: true,
            filledIcon: Icon(
              Icons.favorite,
              color: GFColors.DANGER,
            ),
            defaultIcon: Icon(Icons.favorite_border, color: GFColors.DANGER),
            size: GFSize.SMALL,
            halfFilledIcon: Icon(
              Icons.favorite,
              color: Colors.amber,
            ),
            allowHalfRating: true,
            controller: _ratingController,
            suffixIcon: GFButton(
              type: GFButtonType.transparent,
              onPressed: () {
                setState(() {
                  _userRating = double.parse(_ratingController.text);
                });
              },
              child: const Text('Rate'),
            ),
            onChanged: (double rating) {},
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, top: 30, bottom: 10),
            child: GFTypography(
              text: 'Custom Rating',
              type: GFTypographyType.typo5,
              dividerWidth: 25,
              dividerColor: Color(0xFF19CA4B),
            ),
          ),
          GFRating(
            color: GFColors.DANGER,
            borderColor: GFColors.DANGER,
            value: _customrating,
            showTextForm: true,
            halfFilledIcon: Icon(
              Icons.star_half,
            ),
            allowHalfRating: true,
            filledIcon: Icon(Icons.insert_emoticon),
            itemCount: 6,
            size: GFSize.SMALL,
            controller: _customController,
            suffixIcon: GFButton(
              type: GFButtonType.transparent,
              onPressed: () {
                setState(() {
                  _customrating = double.parse(_customController.text);
                });
              },
              child: Icon(Icons.insert_emoticon),
            ),
            onChanged: (double rating) {},
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ));
}
