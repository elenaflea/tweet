import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tp_flutter/buttons_line.dart';
import 'package:tp_flutter/content_line.dart';
import 'package:tp_flutter/content_service.dart';
import 'package:tp_flutter/page_connection.dart';
import 'package:tp_flutter/top_nav_bar.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 10,
        backgroundColor: Color(0xFFB1AFFF),
      ),
      body:


      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children : [
        TopNavBar(),
          //ContentLine(),
          Flexible(child: ContentService()),
        ],
      ),
    );
  }

}


