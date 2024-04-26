import 'package:exam/utlis/global.dart';
import 'package:exam/utlis/list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff4b629b),
          elevation: 8,
          actions:  [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Icon(Icons.notifications_active,color: Colors.white,),
            ),
            Padding(
              padding:  EdgeInsets.all(8.0),
              child: InkWell(onTap: () {
                setState(() {
                 Navigator.of(context).pushNamed('/cart');
                 cartList.add(selectedIndex);
                });
              },
                child: Icon(
                  Icons.add_shopping_cart_outlined,
                  color: Colors.white,
                ),
              ),
            )
          ],
          title: Text(
            'Shoes shop',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Wrap(
              direction: Axis.horizontal,
              children: [
                Center(
                  child: Container(
                    height: 60,
                    width: 360,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.search,
                            color: Colors.black12,
                            size: 30,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'search your shoes',
                            style: TextStyle(color: Colors.grey, fontSize: 17),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                ...List.generate(
                  proList.length,
                  (index) => GestureDetector(
                    onTap: () {

                      Navigator.of(context).pushNamed('/detail',arguments: proList[selectedIndex]['name']);
                      selectedIndex = index;
                    },
                    child: box1(
                      img: proList[index]['img'],
                      name: proList[index]['name'],
                      price: proList[index]['price'],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column box1({required String img, required String name, required int price}) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(7),
          height: 230,
          width: 170,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.black12),
            boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
            color: Colors.black12,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(img),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 170),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Row(
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Text(
                        '${price}',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold,fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
              height: 10,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black12,
                border: Border.all(color: Colors.black12),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
