import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsLine extends StatelessWidget {
  const ButtonsLine({super.key});

  @override
  Widget build(BuildContext context)
  =>


      Container(
        color:  Color(0xFFdddddd),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:      Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TextButton(onPressed: ()=>context.go("/add"), child:
                Icon(Icons.comment_bank, size:26,)
              ),
              TextButton(onPressed: () {}, child:
             // const Text("Retweet")
              Icon(Icons.send_rounded, size:26,)
              ),
              TextButton(onPressed: () {}, child:
              //const Text("Favoris")
              Icon(Icons.star, size:26,)
              ),
            ],
          ),
        ),
      );

}
