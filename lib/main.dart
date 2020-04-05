import 'package:flutter/material.dart';
import 'login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
  LoginPage.tag: (context) => LoginPage(),
  };
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Ifeoluwa Joshua' ,
     debugShowCheckedModeBanner: false,
     theme: ThemeData(
     primarySwatch: Colors.lightBlue,
     fontFamily: 'Nunito',
   ),
   home: LoginPage(),
   routes: routes,
 );
  }
}