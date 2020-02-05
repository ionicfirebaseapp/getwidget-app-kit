import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';
import 'package:flutter/cupertino.dart';

class SearchbarPage extends StatefulWidget {
  @override
  _SearchbarPageState createState() => _SearchbarPageState();
}

class _SearchbarPageState extends State<SearchbarPage> {
  List list = [
    'Flutter',
    'React',
    'Ionic',
    'Xamarin',
    'Flutter2',
    'React2',
    'Ionic2',
    'Xamarin2',
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: GFAppBar(
          backgroundColor: GFColors.getGFColor(GFColor.dark),
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                child: Icon(
                  CupertinoIcons.back,
                  color: GFColors.getGFColor(GFColor.success),
                ),
              )),
          title: const Text(
            'SearchBar',
            style: TextStyle(fontSize: 17),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 30, bottom: 10),
              child: GFTypography(
                text: 'Basic SearchBar',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),
            GFSearchBar(
                // searchBoxInputDecoration: InputDecoration(
                //   enabledBorder: OutlineInputBorder(
                //       borderSide: BorderSide(
                //         color: Colors.teal,
                //       ),
                //       borderRadius: BorderRadius.circular(50)),
                // ),
                searchList: list,
//              hideSearchBoxWhenItemSelected: false,
//              overlaySearchListHeight: 100.0,
                searchQueryBuilder: (query, list) => list
                    .where((item) =>
                        item.toLowerCase().contains(query.toLowerCase()))
                    .toList(),
                overlaySearchListItemBuilder: (item) => Container(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        item,
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
//              noItemsFoundWidget: Container(
//                color: Colors.green,
//                child: Text("no items found..."),
//              ),
                onItemSelected: (item) {
                  setState(() {
                    print('$item');
                  });
                }),
          ],
        ),
      );
}
