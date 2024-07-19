import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TopNavBar extends StatelessWidget {
  TopNavBar({super.key});


  @override
  Widget build(BuildContext context)
  =>

      Container(
        color:  Color(0xFF764AF1),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
              onPressed: ()=>context.go("/add"),
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
                  onPressed: ()=>context.go("/twit"),
                  icon: Icon(
                    Icons.manage_search_rounded, size:30, color: Colors.white,
                  ),
                ),
              ]
          ),
        ),
      );

}
