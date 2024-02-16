// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tora/PourHomepage/Profil/UseProfil.dart';

class ItemMenuOtion extends StatelessWidget {
  final String photoProfil;
  const ItemMenuOtion({super.key, required this.photoProfil});

  @override
  Widget build(BuildContext context) {
    int produitDispo = 103;
    return SizedBox(
      height: 330,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(photoProfil),
                    radius: 28,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Text(
                      "@FashionShop",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 27,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.share,
                      size: 32,
                      color: const Color.fromARGB(255, 3, 87, 155),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "Chez Fashion Shop Nous vendons des \n Produit de Bonne Qualite a un prix tres plaisent et Abordable pour tous.",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 05,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    height: 55,
                    width: 172,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 39, 153, 43)
                            .withOpacity(0.4)),
                    child: Text(
                      "$produitDispo\nProduit disponible",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.mail, color: Colors.pink, size: 42),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.call,
                      color: Color.fromARGB(255, 204, 126, 10), size: 42),
                ),
              ],
            ),
            Divider(
              color: Colors.black,
              height: 23,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UseProfil(
                      photoProfil: photoProfil,
                    ),
                  ),
                );
              },
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Voire nos Magasins",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Icon(
                    Icons.visibility_outlined,
                    color: Colors.yellow,
                    size: 30,
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.black,
              height: 23,
            ),
            Center(
              child: Text(
                "La Qualite et La Serviablite\n ce chez Nous",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.teal[800],
                    fontSize: 18,
                    fontWeight: FontWeight.w300),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
