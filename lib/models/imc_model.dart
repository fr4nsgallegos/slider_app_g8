import 'package:flutter/material.dart';

class ImcModel {
  String titulo;
  String recomendacion;
  String pathImage;
  ImcModel(this.titulo, this.recomendacion, this.pathImage, this.color);
  Color color;
}

List<ImcModel> indiceList = [
  ImcModel(
    "Bajo peso",
    "Se debe consumir alimentos que contengan los nutrientes necesarios",
    "assets/images/bajoPeso.svg",
    Colors.yellow,
  ),
  ImcModel(
    "Normal",
    "Su IMC es normal, matenga una dieta balanceada",
    "assets/images/normal.svg",
    Colors.green,
  ),
  ImcModel(
    "Sobrepeso",
    "Debe salior a correr 1 o 2 veces a la semana, tomar bastante agua.",
    "assets/images/sobrepeso.svg",
    Colors.orange,
  ),
  ImcModel(
    "Obesidad",
    "Realizar una dieta balanceada, hacer ejercicio 3 o 5 veces a la semana",
    "assets/images/obesidad.svg",
    Colors.red,
  ),
];
