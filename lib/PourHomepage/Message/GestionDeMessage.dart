// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tora/PourHomepage/Message/Shop/ShopCart.dart';

class GestionDeMessage extends StatefulWidget {
  const GestionDeMessage({super.key});

  @override
  State<GestionDeMessage> createState() => _GestionDeMessageState();
}

class _GestionDeMessageState extends State<GestionDeMessage>
    with TickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    _controller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 90),
              child: TabBar(
                controller: _controller,
                tabs: [
                  Container(
                    height: 25,
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Shop"),
                        Icon(Icons.shopping_cart)
                      ],
                    ),
                  ),
                  Container(
                    height: 25,
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      
                        Text("Message"),
                        Icon(Icons.message)
                      ],
                    ),
                  ),
                ],
                labelColor: Colors.black87,
                labelPadding: EdgeInsets.only(bottom: 10),
                indicatorColor: Colors.black26,
                indicatorPadding: EdgeInsets.symmetric(horizontal: 08),
                indicatorWeight: 04,
                labelStyle:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _controller,
                children: [
                  ShopCart(),
                  Container(
                    height: 100,
                    color: Colors.amber,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
