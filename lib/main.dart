import 'package:flutter/material.dart';
import 'package:xiaomi_store/src/pages/details_page.dart';
import 'package:xiaomi_store/src/pages/home_page.dart';

void main() => runApp(Xiaomi());

class Xiaomi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Xiaomi Store',
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => HomePage(),
        'details': (BuildContext context) => Details()
      },
    );
  }
}
