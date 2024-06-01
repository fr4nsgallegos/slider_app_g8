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
          children: [
            TituloWidget("¿Cuáles son tus deportes favoritos?"),
            SizedBox(
              height: 24,
            ),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              alignment: WrapAlignment.center,
              children: [
                for (int i = 0; i < deportsList.length; i++)
                  ItemDeportWidget(deportsList[i]["name"])
              ],
            ),
            Divider(
              thickness: 3,
              color: Colors.black,
              height: 48,
            ),
            TituloWidget("Mis deportes favoritos son:")
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
    return Text(
      texto,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class ItemDeportWidget extends StatelessWidget {
  String tituloDeporte;
  ItemDeportWidget(this.tituloDeporte);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          // color: Colors.redAccent,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.orange,
            width: 2,
          ),
        ),
        child: Text(
          tituloDeporte,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
