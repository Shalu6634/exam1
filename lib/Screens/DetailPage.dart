import 'package:exam/utlis/global.dart';
import 'package:exam/utlis/list.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5,
        title: Text(
          'Product Screen',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(40),
            height: 300,
            width: 300,
            child: Container(
              margin: EdgeInsets.only(top: 230),
              height: 200,
              width: 200,
              child: Row(
                children: [
                  Text(
                    proList[selectedIndex]['name'],
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ), Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      proList[selectedIndex]['price'] .toString(),
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(color: Colors.black12),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(proList[selectedIndex]['img']),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('⭐⭐Shoes serve multiple purposes, ranging from everyday '
                'wear for walking and standing to specialized footwear for '
                'specific activities like running, hiking, dancing, or formal events⭐⭐'),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                cartList.add(selectedIndex);
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 130),
              child: Container(
                height: 60,
                width: 250,
                child: Center(
                  child: Text(
                    'Add to Cart',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Color(0xff4b629b),
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
