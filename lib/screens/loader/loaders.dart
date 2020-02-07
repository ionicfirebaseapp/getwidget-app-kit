import 'package:flutter/material.dart';
import 'package:getflutter/components/loader/gf_loader.dart';
import 'package:getflutter/getflutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:getflutter/types/gf_loader_type.dart';

class Loaders extends StatefulWidget {
  @override
  _LoadersState createState() => _LoadersState();
}

class _LoadersState extends State<Loaders> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: GFColors.getGFColor(GFColor.dark),
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              CupertinoIcons.back,
              color: GFColors.getGFColor(GFColor.success),
            ),
          ),
          title: const Text(
            'Loaders',
            style: TextStyle(fontSize: 17),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children:  <Widget>[
            const SizedBox(
              height: 30,
            ),
           const  GFLoader(
                //  dotIcon: Icon(Icons.insert_emoticon),
//   duration: Duration(seconds: 2),
                ),
            const SizedBox(
              height: 30,
            ),
           const  GFLoader(
              size: GFSize.medium,
              type: GFLoaderType.square
            ),
           const SizedBox(
              height: 30,
            ),
            const GFLoader(
                size: GFSize.large,
                type: GFLoaderType.custom,
//                child: IconData(1)
            ),
            SizedBox(
              height: 30,
            ),
//            GFLoader(
//             size: GFSize.large,
//              type: GFLoaderType.custom,
//              loaderIconOne: Icon(Icons.insert_emoticon),
//              loaderIconTwo: Icon(Icons.insert_emoticon),
//              loaderIconThree: Icon(Icons.email),
////   dotIcon: Icon(Icons.insert_emoticon),
//
//              duration: Duration(seconds: 3),
//            ),
            const SizedBox(
              height: 30,
            ),
            const GFLoader(
              size: GFSize.small,
              type: GFLoaderType.android,
//androidLoaderColor:const AlwaysStoppedAnimation<Color>(Colors.red),



//   dotIcon: Icon(Icons.insert_emoticon),

              duration: Duration(seconds: 3),
            ),

            const SizedBox(
              height: 30,
            ),
            const GFLoader(
//              size: GFSize.large,
              type: GFLoaderType.ios,
//androidLoaderColor:const AlwaysStoppedAnimation<Color>(Colors.red),



//   dotIcon: Icon(Icons.insert_emoticon),

              duration: Duration(seconds: 3),
            ),
    const GFLoader(
  type: GFLoaderType.custom,
size: GFSize.large,
//  child: Text('cfgvbhjnk', style: TextStyle(color: Colors.redAccent),),
//child: Text('bjnkj')
child: Image(image: AssetImage('lib/assets/gif/loader.gif'), width: 90,),

),
//SizedBox(
//  height: 20,
//),
           const  GFLoader(

            ),

             const Padding(
              padding: EdgeInsets.only(left: 15, top: 30),
              child: GFTypography(
                text: 'Basic Loader',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),

           GFCard(
             content: Column(
               children: <Widget>[
                 const SizedBox(height: 25,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children:const <Widget>[
                     GFLoader(

                     ),
                     GFLoader(
                       androidLoaderColor:const AlwaysStoppedAnimation<Color>(Colors.red),
                     ),
                     GFLoader(
                       androidLoaderColor:const AlwaysStoppedAnimation<Color>(Colors.amber),
                     ),
                     GFLoader(
                       androidLoaderColor:const AlwaysStoppedAnimation<Color>(Colors.green),
                     ),
                   ],
                 ),
                 const SizedBox(height: 25,),

                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children:const <Widget>[
                     GFLoader(
                     loaderstrokeWidth: 2,
                       size: GFSize.small,
                     ),
                     GFLoader(
                       androidLoaderColor:const AlwaysStoppedAnimation<Color>(Colors.red),
                       loaderstrokeWidth: 2,
                       size: GFSize.medium,
                     ),
                     GFLoader(
                       androidLoaderColor:const AlwaysStoppedAnimation<Color>(Colors.amber),
                       loaderstrokeWidth: 2,
                       size: GFSize.large,
                     ),
                     GFLoader(
                       androidLoaderColor:const AlwaysStoppedAnimation<Color>(Colors.green),
                       loaderstrokeWidth: 2,
                       size: 60,
                     ),
                   ],
                 ),
                 const SizedBox(height: 25,),
               ],
             )
           ),

            const Padding(
              padding: EdgeInsets.only(left: 15, top: 30),
              child: GFTypography(
                text: 'IOS Loader',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),

            GFCard(
                content: Column(
                  children: <Widget>[
                    const SizedBox(height: 25,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:const <Widget>[
                        GFLoader(
                        type: GFLoaderType.ios,
                          size: GFSize.small,
                        ),
                        GFLoader(
                          type: GFLoaderType.ios,
                        ),
                        GFLoader(
                          type: GFLoaderType.ios,
                          size: GFSize.large,
                        ),
                        GFLoader(
                          type: GFLoaderType.ios,
                          size: 60,
                        ),
                      ],
                    ),
                    const SizedBox(height: 25,),
                  ],
                )
            ),


            const Padding(
              padding: EdgeInsets.only(left: 15, top: 30),
              child: GFTypography(
                text: 'Circular Loader',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),

            GFCard(
                content: Column(
                  children: <Widget>[
                    const SizedBox(height: 25,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:const <Widget>[
                        GFLoader(
                          type: GFLoaderType.circle,
                          size: GFSize.small,
                        ),
                        GFLoader(
                          type: GFLoaderType.circle,
                          size: GFSize.medium,
                        ),
                        GFLoader(
                          type: GFLoaderType.circle,
                          size: GFSize.large,
                        ),
                        GFLoader(
                          type: GFLoaderType.circle,
                          size: 60,
                        ),
                      ],
                    ),
                    const SizedBox(height: 25,),
                  ],
                )
            ),

            const Padding(
              padding: EdgeInsets.only(left: 15, top: 30),
              child: GFTypography(
                text: 'Square Loader',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),

            GFCard(
                content: Column(
                  children: <Widget>[
                    const SizedBox(height: 25,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:const <Widget>[
                        GFLoader(
                          type: GFLoaderType.square,
                          size: GFSize.small,
                        ),
                        GFLoader(
                          type: GFLoaderType.square,
                          size: GFSize.medium,
                        ),
                        GFLoader(
                          type: GFLoaderType.square,
                          size: GFSize.large,
                        ),
                        GFLoader(
                          type: GFLoaderType.square,
                          size: 60,
                        ),
                      ],
                    ),
                    const SizedBox(height: 25,),
                  ],
                )
            ),

            const Padding(
              padding: EdgeInsets.only(left: 15, top: 30),
              child: GFTypography(
                text: 'Custom Loader',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),

            GFCard(
                content: Column(
                  children: <Widget>[
                    const SizedBox(height: 25,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:const <Widget>[
                        GFLoader(
                          type: GFLoaderType.custom,
//                          size: GFSize.large,
                          child: Image(image: AssetImage('lib/assets/gif/loader.gif'), width: 150,),
                        ),
                        GFLoader(
                          type: GFLoaderType.custom,
                          size: GFSize.small,
                          child: Image(image: AssetImage('lib/assets/gif/loader1.gif'), width: 150,),
                        ),


                      ],
                    ),
                    const SizedBox(height: 25,),
                  ],
                )
            ),
          ],
        ),
      );
}
