import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home:  Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("DemoWidgetContent"),
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children:[
              Row(
                children: [
                  TabBar(
                      indicatorColor: Color(0xFF58B0F0),
                      tabs: [
                        Tab(
                          text: "New",
                          icon: Icon(
                            Icons.add,
                          ),
                        ),
                        Tab(
                          text: "Home",
                          icon: Icon(
                            Icons.home,
                          ),
                        ),
                        Tab(
                          text: "Search",
                          icon: Icon(
                            Icons.search_off_sharp,
                          ),
                        ),
                      ]),
                ],
              ),


            ]

        ),


      ),
    );
  }
}
