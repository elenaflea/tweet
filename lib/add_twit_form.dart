
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tp_flutter/home_page.dart';
import 'package:tp_flutter/top_nav_bar.dart';



class AddTweetForm extends StatefulWidget {
  const AddTweetForm({super.key});

  @override
  State<AddTweetForm> createState() => _AddTweetFormState();
}

class _AddTweetFormState extends State<AddTweetForm> {
  final controllerEmail = TextEditingController(text: "");
  final passwordEmail = TextEditingController(text: "");
  bool valueCheck = false;
  String message ="";
  String emailValue = "";
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 10,
          backgroundColor: Color(0xFFB1AFFF),
          //  title: Text("TP TWITTER", style: TextStyle(color: Colors.white),),
        ),
        body: SafeArea(
          child: Container(
            color:  Color(0xFFffffff),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                TopNavBar(),
                Padding
                  (
                  padding: const EdgeInsets.all(1.0),
                  child:
                  Image(image: AssetImage('assets/edit.png'),
                      height: 200, width: 200),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0,0.0,20.0,30.0),
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    minLines: 1,
                    maxLines: 10,
                    controller: controllerEmail,
                    decoration: InputDecoration(label: Text("let message")),

                  ),
                ),



                //Spacer(),
                Container(
                  width: MediaQuery.of(context).size.width -60,
                  child: FilledButton(
                    onPressed: () => context.go("/twit"),

                    child: Text('Publish'),
                  ),
                )

              ],
            ),
          ),
        )
    );
  }
}
