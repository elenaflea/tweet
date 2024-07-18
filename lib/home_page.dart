import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tp_flutter/buttons_line.dart';
import 'package:tp_flutter/content_line.dart';
import 'package:tp_flutter/content_service.dart';
import 'package:tp_flutter/page_connection.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 10,
        backgroundColor: Color(0xFFB1AFFF),
      //  title: Text("TP TWITTER", style: TextStyle(color: Colors.white),),
      ),
      body:


      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children : [
          ButtonBar(),
        //  ContentLine(),
          Flexible(child: ContentService()),
         // ButtonsLine(),
        ],
      ),
    );
  }

}


class ButtonBar extends StatelessWidget {
   ButtonBar({super.key});

   final _router = GoRouter(
       initialLocation: '/connect',
       routes: [
         GoRoute(
             path: '/connect',
             builder: (context,state) => FormulaireConnection()
         ),
         GoRoute(
             path: '/twit',
             builder: (context,state) => HomePage()
         ),
       ]
   );

  @override
   Widget build(BuildContext context)
   =>
       Container(
         color:  Color(0xFF764AF1),
         child: Padding(
           padding: const EdgeInsets.all(10.0),
           child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 IconButton(
                   onPressed: ()=> {},
                   icon: Icon(
                     Icons.add_circle, size:30, color: Colors.white,
                   ),
                 ),
                 IconButton(
                   onPressed: ()=>context.go("/connect"),
                  // onPressed: ()=> {},
                   icon: Icon(
                     Icons.home_filled, size:30, color: Colors.white,
                   ),
                 ),
                 IconButton(
                   onPressed: ()=> {},
                   icon: Icon(
                     Icons.manage_search_rounded, size:30, color: Colors.white,
                   ),
                 ),
               ]
           ),
         ),
       );
}
