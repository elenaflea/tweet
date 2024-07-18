import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:tp_flutter/buttons_line.dart';
import 'package:tp_flutter/tweet.dart';





class ContentService extends StatelessWidget {
  const ContentService({super.key});

  @override
  Widget build(BuildContext context) {
    return  FutureBuilder<Response> (
        future: get(Uri.parse("https://raw.githubusercontent.com/Chocolaterie/EniWebService/main/api/tweets.json")),
        builder: (context, snapshot) {
          if(snapshot.hasData && snapshot.data?.body != null) {
            final body = snapshot.data!.body;
            List<dynamic> list =  jsonDecode(body);
            return ListData(
                list.map((p)=>Tweet.fromMap(p)).toList()
            );
          }
          return CircularProgressIndicator();
        }
    );
  }
}

class ListData extends StatelessWidget {
  final List<Tweet> listResult;
  const ListData(this.listResult,{super.key});

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
       itemCount: listResult.length ,
        itemBuilder: (context, index)=>

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
                                Image(image: AssetImage('assets/ava${index+9}.gif'),
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
                                          Text(listResult[index].author,
                                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                                          Flexible(child: Text(listResult[index].created_date.toString())
                                          ),
                                        ],
                                      ),
                                      Text(listResult[index].message, style: TextStyle(color: Colors.black, fontSize: 14.0),
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
                ),



    );
  }
}

