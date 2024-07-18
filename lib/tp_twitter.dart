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
          toolbarHeight: 100,
          backgroundColor: Color(0xFF478CCF),
         //   leading: Center(child: Text("New", style: TextStyle(fontSize: 18))),
            title: Text("TP Widget List"),
          //  actions: [
              //  Text("Search",  style: TextStyle(fontSize: 18)),
              //  ],

        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children : [
            Container(
              color:  Color(0xFF58B0F0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [
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
                        Icons.search,
                      ),
                    ),
                  ]),
            ),

          ],

      ),
      ),
    );
  }
}
