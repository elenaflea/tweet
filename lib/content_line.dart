

import 'package:flutter/material.dart';
import 'package:tp_flutter/buttons_line.dart';
//import 'package:intl/intl_browser.dart';

class ContentLine extends StatelessWidget {
  const ContentLine({super.key});

  @override
  Widget build(BuildContext context)
  =>


      Container(
       // color:  Color(0xFFEEEDEB),
        color:  Color(0xFFffffff),
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child:

          Column(
            children: [
              Container(
                color:  Color(0xFFffffff),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(0.0),
                          child:
                          // Image.network('https://avatar.iran.liara.run/public',
                          Image(image: AssetImage('assets/ava3.gif'),
                              height: 140, width: 140),
                        ),
                        Flexible(
                            child:
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("User00054",
                                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                                    Flexible(child: Text("50s")
                                    ),
                                  ],
                                ),
                                Text("Hello, Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page"
                                , style: TextStyle(color: Colors.black, fontSize: 14.0),
                                ),

                              ],
                            )
                        )
                      ]
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0,0.0,0.0,20.0),
                child: ButtonsLine(),
              )
            ],
          )
          /*Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
               // Image.network("https://img.pikbest.com/origin/09/25/27/95SpIkbEsTbUh.png!sw800",
              Image.asset('assets/book.png',
                    height: 120, width: 120),
                Flexible(
                  child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("UserName", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                          Flexible(
                              child:
                              Text("50s")
                                //Text(DateTime.now().toLocal().toString())
                                //Text(DateFormat('yyyy-MM-dd hh:mm:ss').format(DateTime.now()).toString())
                          ),
                        ],
                      ),

                      Text('Hello, Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page',
                        //overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.black, fontSize: 18.0),
                      )
                    ],
                  )
                )
              ]
          )*/,
        ),
      );

}
