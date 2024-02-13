// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:tora/PourHomepage/Accail/ItemPost.dart';

class AccaillProduit extends StatefulWidget {
  const AccaillProduit({super.key});
  @override
  State<AccaillProduit> createState() => _AccaillProduitState();
}

class _AccaillProduitState extends State<AccaillProduit>
    with TickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    _controller = TabController(length: 1, vsync: this);
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
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 100),
              child: TabBar(
                controller: _controller,
                tabs: [
                  Container(
                    height: 20,
                    alignment: Alignment.center,
                    child: Text("Marcket"),
                  ),
                ],
                labelColor: Colors.black87,
                labelPadding: EdgeInsets.only(bottom: 08),
                indicatorColor: Colors.black26,
                indicatorPadding: EdgeInsets.symmetric(horizontal: 65),
                indicatorWeight: 06,
                labelStyle:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _controller,
                children: [
                 ItemPost()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
