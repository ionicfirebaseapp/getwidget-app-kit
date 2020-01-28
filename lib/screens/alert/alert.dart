import 'package:getflutter/getflutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:getflutter/components/alert/gf_alert.dart';


class AlertPage extends StatefulWidget {
  @override
  _AlertPageState createState() => _AlertPageState();
}

class _AlertPageState extends State<AlertPage> {
 bool showalert=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
        title: Text(
          'Alert',
          style: TextStyle(fontSize: 17),
        ),
        centerTitle: true,
      ),
      body: GFFloatingWidget(
//        horizontalPosition: 40,
      verticalPosition: 50,
//      blur: true,
//      blur: false,

        child: showalert? Column(
          children: <Widget>[
//            Padding(padding: EdgeInsets.only(top:20)),
            GFAlert(

              title: 'Hi, Welcome to GetFlutter',
              content: 'Get Flutter is one of the largest Flutter open-source UI library for mobile or web apps. It has more than 1000+ pre-built reusable widgets.',
              bottombar: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  GFButton(onPressed: (){
                    setState(() {
                      showalert=false;
                    });
                  }, text: 'OK',),
                  SizedBox(
                    width: 5,
                  ),
                  GFButton(onPressed: (){
                    setState(() {
                      showalert=false;
                    });
                  }, text: 'Close',)
                ],
              ),
            ),
          ],
        ):Container(),
        body:  Container(
            color: GFColors.getGFColor(GFColor.white),
            height: MediaQuery.of(context).size.height,
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GFButton(
                    text: 'Click to view the Alert',
                    onPressed: (){
                      setState(() {
                        showalert=!showalert;
                      });
                    }
                ),
              ],
            )
        ),
      ),




    );
  }
}
