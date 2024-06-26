import 'package:flutter/material.dart';
import 'package:slider_example_g8/models/deport_model.dart';
import 'package:slider_example_g8/widgets/item_deport_widget.dart';
import 'package:slider_example_g8/widgets/titulo_widget.dart';

class FavoritesDeportsPage extends StatefulWidget {
  @override
  State<FavoritesDeportsPage> createState() => _FavoritesDeportsPageState();
}

class _FavoritesDeportsPageState extends State<FavoritesDeportsPage> {
  // List<Map<String, dynamic>> deportsList = [
  //   {"name": "Gimnasio", "isFavorite": false},
  //   {"name": "Fútbol", "isFavorite": false},
  //   {"name": "Golf", "isFavorite": false},
  //   {"name": "Baloncesto", "isFavorite": false},
  //   {"name": "Natación", "isFavorite": false},
  //   {"name": "Voley", "isFavorite": false},
  // ];

  // List<Map<String, dynamic>> favoriteDeportList = [];
  List<DeportModel> favoriteDeportList = [];

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
                  for (int i = 0; i < deportModelList.length; i++)
                    ItemDeportWidget(
                      deportModelList[i],
                      () {
                        //lo VUELVO FAVORITO
                        if (deportModelList[i].isFavorite == false) {
                          deportModelList[i].isFavorite = true;
                          favoriteDeportList.add(deportModelList[i]);
                          setState(() {});
                        }
                        //YA NO ES FAVORITO
                        else {
                          deportModelList[i].isFavorite = false;
                          favoriteDeportList.remove(deportModelList[i]);
                        }

                        setState(() {});
                      },
                      false,
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
              padding: EdgeInsets.all(8),
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
                    ItemDeportWidget(
                      favoriteDeportList[i],
                      () {
                        print(favoriteDeportList[i].name);
                        favoriteDeportList[i].isFavorite = false;
                        favoriteDeportList.remove(favoriteDeportList[i]);

                        setState(() {});
                      },
                      true,
                    )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
