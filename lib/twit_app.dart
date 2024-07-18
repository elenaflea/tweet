import 'package:flutter/material.dart';
import 'package:tp_flutter/home_page.dart';


class TwitApp extends StatelessWidget {
  const TwitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TWITTER',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home:  HomePage(),

    );
  }
}
