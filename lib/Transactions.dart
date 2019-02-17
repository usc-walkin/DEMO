import 'package:flutter/material.dart';
import 'package:login/EOS.dart';

class Transactions extends StatelessWidget {
  static String tag = 'transactions';

  @override
  Widget build(BuildContext context) {


    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'View Transactions',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(EOS.tag);
        },
        padding: EdgeInsets.all(12),
        color: Colors.lightGreen,
        child: Text('Log In', style: TextStyle(color: Colors.white)),
      ),
    );

//    final loginButton = Padding(
//      padding: EdgeInsets.symmetric(vertical: 16.0),
//      child: RaisedButton(
//        shape: RoundedRectangleBorder(
//          borderRadius: BorderRadius.circular(24),
//        ),
//        onPressed: () {
//          Navigator.of(context).pushNamed(HomePage.tag);
//        },
//        padding: EdgeInsets.all(12),
//        color: Colors.lightGreen,
//        child: Text('Log In', style: TextStyle(color: Colors.white)),
//      ),
//    );
//
//    final loginButton = Padding(
//      padding: EdgeInsets.symmetric(vertical: 16.0),
//      child: RaisedButton(
//        shape: RoundedRectangleBorder(
//          borderRadius: BorderRadius.circular(24),
//        ),
//        onPressed: () {
//          Navigator.of(context).pushNamed(HomePage.tag);
//        },
//        padding: EdgeInsets.all(12),
//        color: Colors.lightGreen,
//        child: Text('Log In', style: TextStyle(color: Colors.white)),
//      ),
//    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.lightBlueAccent,
        ]),
      ),
      child: Column(
        children: <Widget>[ welcome,
        loginButton
        ],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}