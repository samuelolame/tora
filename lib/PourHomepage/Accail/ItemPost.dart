// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:tora/PourHomepage/Accail/Detaille/DetaillePage.dart';
import 'package:tora/PourHomepage/Accail/ItemMenuOption.dart';

class ItemPost extends StatefulWidget {
  final String photoProfil;
  const ItemPost({super.key, required this.photoProfil});

  @override
  State<ItemPost> createState() => _ItemPostState();
}

class _ItemPostState extends State<ItemPost> {
  @override
  Widget build(BuildContext context) => MasonryGridView.count(
        crossAxisSpacing: 8,
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        itemCount: 50,
        itemBuilder: (context, index) => buildItemPost(index),
      );

  Widget buildItemPost(int index) => Card(
        color: Colors.white24,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          margin: const EdgeInsets.all(8),
          child: Column(
            children: [
              InkWell(
                splashColor: Colors.white10,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PagePourDetail(
                          produitImage: "assets/image/i3.jpg",
                          photoProfil: widget.photoProfil,
                        ),
                      ));
                  debugPrint("ItemProduit Is validate");
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/image/i3.jpg",
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {
                    debugPrint("Show More");
                    showModalBottomSheet(
                        backgroundColor:
                            Color.fromARGB(255, 159, 225, 255).withOpacity(0.9),
                        barrierColor:
                            Color.fromARGB(255, 12, 30, 197).withOpacity(0.2),
                        context: context,
                        builder: (context) {
                          return ItemMenuOtion(
                            photoProfil: widget.photoProfil,
                          );
                        });
                  },
                  child: Icon(
                    CupertinoIcons.ellipsis,
                    color: Colors.black87,
                    size: 32,
                  ),
                ),
              )
            ],
          ),
        ),
      );
}
