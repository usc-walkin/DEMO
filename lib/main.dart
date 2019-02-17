import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_page.dart';
import 'package:login/Wallet.dart';
//import 'package:login/Receipt.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
    Palette.tag: (context) => ColorsDemo()
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kodeversitas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Nunito',
      ),
      //home: ColorDemo(),
      //home: LoginPage(),
      home: ColorsDemo(),
      routes: routes,
    );
  }
}
