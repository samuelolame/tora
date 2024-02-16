// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables,

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tora/PourHomepage/Accail/ItemMenuOption.dart';

class PagePourDetail extends StatefulWidget {
  final String produitImage;
  final String photoProfil;
  const PagePourDetail(
      {super.key, required this.produitImage, required this.photoProfil});

  @override
  State<PagePourDetail> createState() => _PagePourDetailState();
}

class _PagePourDetailState extends State<PagePourDetail> {
  bool isLiked = true;
  int likeProduit=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white70,
        body: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      widget.produitImage,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: SafeArea(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () => Navigator.pop(context),
                              child: CircleAvatar(
                                backgroundColor: Colors.black.withOpacity(0.8),
                                child: Icon(
                                  CupertinoIcons.chevron_back,
                                  color: Colors.white70,
                                  size: 28,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                debugPrint("Show More");
                                showModalBottomSheet(
                                    backgroundColor:
                                        const Color.fromARGB(255, 173, 173, 173),
                                    barrierColor:
                                        Color.fromARGB(255, 12, 30, 197)
                                            .withOpacity(0.2),
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
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 10,
                bottom: 30,
                left: 18,
                right: 18,
              ),
              color: Colors.white12,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          'Motre pour Home',
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        '180\$',
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromARGB(255, 62, 59, 255)),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      '220\$',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromARGB(255, 90, 89, 89)),
                    ),
                  ),
                  SizedBox(
                    height: 06,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                isLiked = !isLiked;
                                likeProduit++;
                              });
                            },
                            icon: Icon(
                              CupertinoIcons.heart_circle_fill,
                              color: isLiked ? Colors.white : Colors.red,
                              size: 45,
                            ),
                          ),
                          Text("$likeProduit",style: TextStyle(fontSize: 18),),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.share,
                                color: Colors.green,
                                size: 45,
                              ))
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          debugPrint('add to ShopCart');
                        },
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(08),
                              color: Colors.black87),
                          child: Center(
                            child: Icon(
                              Icons.add,
                              color: Colors.amber,
                              size: 50,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
