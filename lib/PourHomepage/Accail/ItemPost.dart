// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:tora/PourHomepage/Accail/Detaille/DetaillePage.dart';

class ItemPost extends StatefulWidget {
  ItemPost({super.key});

  @override
  State<ItemPost> createState() => _ItemPostState();
}

class _ItemPostState extends State<ItemPost> {
  //get StaggeredGridView => null;

  // final List postItems = [
  @override
  Widget build(BuildContext context) => MasonryGridView.count(
        crossAxisSpacing: 3,
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
                      context as BuildContext,
                      MaterialPageRoute(
                        builder: (context) => PagePourDetail(
                          produitImage: "assets/image/i3.jpg",
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
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                      "Amazon phone",
                      style: TextStyle(
                          color: Colors.black87, fontWeight: FontWeight.w500),
                    )),
                    IconButton(
                        onPressed: () {
                          debugPrint("plus des menu");
                        },
                        icon: const Icon(Icons.more_horiz,
                            size: 28, color: Colors.black87)),
                  ],
                ),
              )
            ],
          ),
        ),
      );
}
