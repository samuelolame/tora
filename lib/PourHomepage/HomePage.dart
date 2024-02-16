// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:tora/PourHomepage/Accail/AccailProduit.dart';
import 'package:tora/PourHomepage/Message/GestionDeMessage.dart';
import 'package:tora/PourHomepage/Profil/UseProfil.dart';
import 'package:tora/PourHomepage/Rechercher/RechercheProduit.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int indexNavigation = 0;
  final tabs = [
    const Center(child: AccaillProduit(photoProfil:"assets/image/images-6.jpg",)),
    const Center(child: RechercheProduit()),
    const Center(child: GestionDeMessage()),
    const Center(child: UseProfil(photoProfil:"assets/image/images-6.jpg"),),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.white,
      body: tabs[indexNavigation],
      bottomNavigationBar: navigationBar(),
    );
  }

  Widget navigationBar() {
    return BottomNavigationBar(
      currentIndex: indexNavigation,
      backgroundColor: Colors.white60,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black54,
      unselectedFontSize: 08,
      selectedFontSize: 12,
      showUnselectedLabels: false,
      showSelectedLabels: true,
      type: BottomNavigationBarType.fixed,
      iconSize: 25,
      elevation: 2,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "accueil"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: "Recherche"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
            ),
            label: "message"),
        BottomNavigationBarItem(
            icon: CircleAvatar(
              radius:18,
              backgroundImage: AssetImage("assets/image/images-6.jpg"),
            ),
            label: "profil"),
      ],
      onTap: (index) {
        setState(() {
          indexNavigation = index;
          debugPrint("Navigatoin dans les pages");
        });
      },
    );
  }
}
