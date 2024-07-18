

import 'package:flutter/material.dart';
//import 'package:intl/intl_browser.dart';

class ContentLine extends StatelessWidget {
  const ContentLine({super.key});

  @override
  Widget build(BuildContext context)
  =>


      Container(
        color:  Color(0xFFEEEDEB),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
               // Image.network("https://img.pikbest.com/origin/09/25/27/95SpIkbEsTbUh.png!sw800",
              Image.asset('assets/book.png',
                    height: 140, width: 140),
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
          ),
        ),
      );

}
