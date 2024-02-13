// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';

class RechercheProduit extends StatefulWidget {
  const RechercheProduit({super.key});

  @override
  State<RechercheProduit> createState() => _RechercheProduitState();
}

class _RechercheProduitState extends State<RechercheProduit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.black45,
      appBar:AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title:searchBox(),
      ),
    );
  }

  Widget searchBox() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(23),
      ),
      child: TextField(
        onChanged: null,
        style: const TextStyle(
            color: Colors.black, fontWeight: FontWeight.w400, fontSize: 20),
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black,
            size: 24,
          ),
          prefixIconConstraints: BoxConstraints(
            maxHeight: 20,
            maxWidth: 25,
          ),
          border: InputBorder.none,
          hintText: "Search",
          hintStyle: TextStyle(color: Colors.grey, fontSize: 25),
        ),
      ),
    );
  }
}