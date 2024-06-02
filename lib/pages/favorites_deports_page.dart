import 'package:flutter/material.dart';
import 'package:slider_example_g8/widgets/item_deport_widget.dart';
import 'package:slider_example_g8/widgets/titulo_widget.dart';

class FavoritesDeportsPage extends StatefulWidget {
  @override
  State<FavoritesDeportsPage> createState() => _FavoritesDeportsPageState();
}

class _FavoritesDeportsPageState extends State<FavoritesDeportsPage> {
  List<Map<String, dynamic>> deportsList = [
    {"name": "Gimnasio", "isFavorite": false},
    {"name": "Fútbol", "isFavorite": false},
    {"name": "Golf", "isFavorite": false},
    {"name": "Baloncesto", "isFavorite": false},
    {"name": "Natación", "isFavorite": false},
    {"name": "Voley", "isFavorite": false},
  ];

  List<Map<String, dynamic>> favoriteDeportList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorites Deports App"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TituloWidget("¿Cuáles son tus deportes favoritos?"),
            Center(
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                alignment: WrapAlignment.center,
                children: [
                  for (int i = 0; i < deportsList.length; i++)
                    ItemDeportWidget(
                      deportsList[i],
                      () {
                        //lo VUELVO FAVORITO
                        if (deportsList[i]["isFavorite"] == false) {
                          deportsList[i]["isFavorite"] = true;
                          favoriteDeportList.add(deportsList[i]);
                          setState(() {});
                        }
                        //YA NO ES FAVORITO
                        else {
                          deportsList[i]["isFavorite"] = false;
                        }

                        setState(() {});
                      },
                    )
                ],
              ),
            ),
            Divider(
              thickness: 3,
              color: Colors.black,
              height: 48,
            ),
            TituloWidget("Mis deportes favoritos son:"),
            Container(
              height: MediaQuery.of(context).size.height / 3.5,
              width: double.infinity,
              decoration: BoxDecoration(
                // color: Colors.red,
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(width: 3, color: Colors.black),
              ),
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                alignment: WrapAlignment.center,
                children: [
                  for (int i = 0; i < favoriteDeportList.length; i++)
                    ItemDeportWidget(favoriteDeportList[i], () {})
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
