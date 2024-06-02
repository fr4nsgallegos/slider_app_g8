import 'package:flutter/material.dart';

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
                    ItemDeportWidget(deportsList[i])
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
                    ItemDeportWidget(favoriteDeportList[i])
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TituloWidget extends StatelessWidget {
  String texto;
  TituloWidget(this.texto);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Text(
        texto,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class ItemDeportWidget extends StatefulWidget {
  Map<String, dynamic> deporte;

  ItemDeportWidget(this.deporte);

  @override
  State<ItemDeportWidget> createState() => _ItemDeportWidgetState();
}

class _ItemDeportWidgetState extends State<ItemDeportWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.deporte["isFavorite"] == false) {
          widget.deporte["isFavorite"] = true;
        } else {
          widget.deporte["isFavorite"] = false;
        }
        setState(() {});
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: widget.deporte["isFavorite"]
              ? Colors.orange.shade200
              : Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.orange,
            width: 2,
          ),
        ),
        child: Text(
          widget.deporte["name"],
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
