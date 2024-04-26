import 'package:exam/Screens/CartScreen.dart';
import 'package:exam/Screens/DetailPage.dart';
import 'package:exam/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>HomePage(),
        '/detail':(context)=>DetailScreen(),
        '/cart':(context)=>CartScreen(),
      },
    );
  }
}
