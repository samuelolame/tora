// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UseProfil extends StatefulWidget {
  final String photoProfil;
  const UseProfil({super.key, required this.photoProfil});

  @override
  State<UseProfil> createState() => _UseProfilState();
}

class _UseProfilState extends State<UseProfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 22,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          showCupertinoModalPopup(
                              barrierColor: Color.fromARGB(255, 30, 11, 199)
                                  .withOpacity(0.8),
                              context: context,
                              builder: (context) {
                                return Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        radius: 80,
                                        backgroundImage:
                                            AssetImage(widget.photoProfil),
                                      ),
                                      SizedBox(height: 15),
                                      Text(
                                        "@FashionShop",
                                        style: TextStyle(
                                            color: Colors.white70,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 28),
                                      ),
                                      Row(
                                        children: [],
                                      )
                                    ],
                                  ),
                                );
                              });
                        },
                        child: CircleAvatar(
                          radius: 27,
                          backgroundImage: AssetImage(widget.photoProfil),
                        ),
                      ),
                      Text(
                        "My Profil",
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.menu,
                            color: Colors.black87,
                            size: 32,
                          ))
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              //height: 1.5,
              color: Colors.black,
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 05),
              child: Container(
                height: 100,
                color: Colors.amber,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: floatingButton(),
    );
  }

  Widget floatingButton() {
    return FloatingActionButton(
      backgroundColor: Colors.black26,
      tooltip: "New Post",
      onPressed: () {},
      child: Icon(Icons.add, size: 29, color: Colors.yellow,),
    );
  }
}
