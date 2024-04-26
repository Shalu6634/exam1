
import 'package:exam/utlis/global.dart';
import 'package:exam/utlis/list.dart';
import 'package:flutter/material.dart';
class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text('CartScreen'),

     ),
      body: Container(
        height: 100,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(proList[selectedIndex]['img']),
          )
        ),
      ),
    );
  }
}
