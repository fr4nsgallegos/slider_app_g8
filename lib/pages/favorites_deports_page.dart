import 'package:flutter/material.dart';

class FavoritesDeportsPage extends StatefulWidget {
  @override
  State<FavoritesDeportsPage> createState() => _FavoritesDeportsPageState();
}

class _FavoritesDeportsPageState extends State<FavoritesDeportsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorites Deports App"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Column(),
    );
  }
}
