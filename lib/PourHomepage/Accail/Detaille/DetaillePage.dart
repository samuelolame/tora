// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables,

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PagePourDetail extends StatefulWidget {
  final String produitImage;
  const PagePourDetail({super.key, required this.produitImage});

  @override
  State<PagePourDetail> createState() => _PagePourDetailState();
}

class _PagePourDetailState extends State<PagePourDetail> {
  bool isLiked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          },
                          child: Icon(
                            CupertinoIcons.ellipsis,
                            color: Colors.black87,
                            size: 32,
                          ),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white.withOpacity(0.9),
                      child: Icon(
                        CupertinoIcons.viewfinder,
                        color: Colors.black87,
                        size: 30,
                      ),
                    )
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    isLiked= !isLiked;
                  });
                },
                icon: Icon(
                  CupertinoIcons.heart_circle_fill,
                  color: isLiked ? Colors.grey : Colors.red,
                  size: 30,
                ),
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 17,
                      vertical: 15,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0x0ff1f1f1),
                      borderRadius: BorderRadius.circular(34),
                    ),
                    child: Text(
                      "View",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        //color: Colors.black54
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 17,
                      vertical: 15,
                    ),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: BorderRadius.circular(34),
                    ),
                    child: Text(
                      "Save",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.share,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
