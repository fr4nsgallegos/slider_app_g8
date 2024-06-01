import 'package:flutter/material.dart';

class ResultImcWidget extends StatelessWidget {
  String imcResult;
  String? imcModelTitulo;
  String? imcModelRecomendacion;
  String? imcModelImagePath;

  ResultImcWidget({
    required this.imcResult,
    required this.imcModelTitulo,
    required this.imcModelRecomendacion,
    required this.imcModelImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          imcResult == 0 ? "-" : imcResult.toString(),
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          imcModelTitulo ?? "Sin calcular",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        Text(
          imcModelRecomendacion ?? "Sin recomendación",
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
