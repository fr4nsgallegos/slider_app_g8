class ImcModel {
  String titulo;
  String recomendacion;
  String pathImage;
  ImcModel(this.titulo, this.recomendacion, this.pathImage);
}

List<ImcModel> indiceList = [
  ImcModel(
      "Bajo peso",
      "Se debe consumir alimentos que contengan los nutrientes necesarios",
      "pathImage"),
  ImcModel(
      "Normal", "Su IMC es normal, matenga una dieta balanceada", "pathImage"),
  ImcModel(
      "Sobrepeso",
      "Debe salior a correr 1 o 2 veces a la semana, tomar bastante agua.",
      "pathImage"),
  ImcModel(
      "Obesidad",
      "Realizar una dieta balanceada, hacer ejercicio 3 o 5 veces a la semana",
      "pathImage"),
];
