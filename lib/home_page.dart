import 'package:flutter/material.dart';
import 'package:login/Transactions.dart';
import 'package:login/Wallet.dart';


class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {


    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        '    Welcome Junxi',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final walletButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 80.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PaletteTabView()),);
        },
        padding: EdgeInsets.all(60),
        color: Colors.green,
        child: Text('Wallet', style: TextStyle(color: Colors.white)),
      ),
    );



    final transactionButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 80.0),

      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(HomePage.tag);
        },
        padding: EdgeInsets.all(60),
        color: Colors.green,
        child: Text('Receipt', style: TextStyle(color: Colors.white)),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.greenAccent,
          Colors.lightGreenAccent,
        ]),
      ),
      child: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            welcome,
            walletButton,
            transactionButton,
          ],
        ),
      ),
    );

    return Scaffold(
      //body: body,
      //backgroundColor: Colors.white,
      body: body
    );
  }
}


//import 'package:flutter/material.dart';
//
//class HomePage extends StatelessWidget {
//  static String tag = 'home-page';
//
//  @override
//  Widget build(BuildContext context) {
//    final alucard = Hero(
//      tag: 'hero',
//      child: Padding(
//        padding: EdgeInsets.all(16.0),
//        child: CircleAvatar(
//          radius: 72.0,
//          backgroundColor: Colors.transparent,
//          backgroundImage: AssetImage('assets/alucard.jpg'),
//        ),
//      ),
//    );
//
//    final welcome = Padding(
//      padding: EdgeInsets.all(8.0),
//      child: Text(
//        'Welcome Junxi',
//        style: TextStyle(fontSize: 28.0, color: Colors.white),
//      ),
//    );
//
//    final lorem = Padding(
//      padding: EdgeInsets.all(8.0),
//      child: Text(
//        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit condimentum mauris id tempor. Praesent eu commodo lacus. Praesent eget mi sed libero eleifend tempor. Sed at fringilla ipsum. Duis malesuada feugiat urna vitae convallis. Aliquam eu libero arcu.',
//        style: TextStyle(fontSize: 16.0, color: Colors.white),
//      ),
//    );
//
//    final body = Container(
//      width: MediaQuery.of(context).size.width,
//      padding: EdgeInsets.all(28.0),
//      decoration: BoxDecoration(
//        gradient: LinearGradient(colors: [
//          Colors.blue,
//          Colors.lightBlueAccent,
//        ]),
//      ),
//      child: Column(
//        children: <Widget>[alucard, welcome, lorem],
//      ),
//    );
//
//    return Scaffold(
//      body: body,
//    );
//  }
//}