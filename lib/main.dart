import 'package:flutter/material.dart';
import 'package:picpay_copy/src/pages/home/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PicPay Clone',
      theme: ThemeData(
        primaryColor: Color(0xFF1D1E20),
        // scaffoldBackgroundColor: Color(0xFF1D1E20),
        buttonColor: Color(0xFF11C76F)
      ),
      home: HomePage(),
    );
  }
}
