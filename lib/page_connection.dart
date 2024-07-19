
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tp_flutter/add_twit_form.dart';
import 'package:tp_flutter/home_page.dart';
import 'package:tp_flutter/top_nav_bar.dart';

void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  MyApp({super.key});
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
        GoRoute(
            path: '/add',
            builder: (context,state) => AddTweetForm()
        ),
      ]
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        title: 'CONNECTION',
        theme: ThemeData(
          colorScheme: ColorScheme.light(),
          useMaterial3: true,
        ),
      routerConfig: _router,
     //   home:FormulaireConnection()
    );
  }
}

class FormulaireConnection extends StatefulWidget {
  const FormulaireConnection({super.key});

  @override
  State<FormulaireConnection> createState() => _FormulaireConnectionState();
}

class _FormulaireConnectionState extends State<FormulaireConnection> {
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
                  //  Image.network("https://cliply.co/wp-content/uploads/2020/08/442008112_GLANCING_AVATAR_3D_400px.gif",
                    Image(image: AssetImage('assets/442008112_GLANCING_AVATAR_3D_400px.gif'),
                        height: 200, width: 200),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0,0.0,20.0,2.0),
                    child: TextField(
                      controller: controllerEmail,
                      decoration: InputDecoration(label: Text("e-mail")),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0,0.0,20.0,2.0),
                    child: TextField(
                      maxLength: 20,
                      controller: passwordEmail,
                      obscureText: true,
                      decoration: InputDecoration(label: Text("password")),
                    ),
                  ),

                  Row(
                    children: [
                      Checkbox(value: valueCheck, onChanged: (c){
                        setState(() {
                          valueCheck = c!;
                        });
                      }),
                      Text("Se souvenir de moi")
                    ],
                  ),
                  Text(message, style: TextStyle(color: Colors.deepPurple),),
                  //Spacer(),
                  Container(
                    width: MediaQuery.of(context).size.width -60,
                    child: FilledButton(
                      onPressed: () => context.go("/twit"),
                       // setState(() {
                         // if(valueCheck)
                        //  message = "Hello ${controllerEmail.text}!!! Je me souviendrai de toi";
                         // else message = "Hello ${controllerEmail.text}!!! Je ne me souviendrai PAS de toi";
                       // });

                      child: Text('Connect'),
                    ),
                  )

                ],
              ),
          ),
        )
    );
  }
}
