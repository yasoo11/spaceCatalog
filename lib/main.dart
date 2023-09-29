import 'package:flutter/material.dart';
import 'package:test16/gliese581c/gliese581c.dart';
import 'package:test16/home_layout/home_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     theme: ThemeData.dark(),
     initialRoute: HomeLayout.routeName,
      routes: {
       HomeLayout.routeName:(c)=>const HomeLayout(),
       Gliese581c.routeName:(c)=> Gliese581c(),
      },
    );
  }
}