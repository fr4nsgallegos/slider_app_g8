import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ResultImcWidget extends StatelessWidget {
  String imcResult;
  String? imcModelTitulo;
  String? imcModelRecomendacion;
  String? imcModelImagePath;
  Color? color;

  ResultImcWidget({
    required this.imcResult,
    required this.imcModelTitulo,
    required this.imcModelRecomendacion,
    required this.imcModelImagePath,
    required this.color,
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
            color: color,
          ),
        ),
        Text(
          imcModelTitulo ?? "Sin calcular",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w500, color: color),
        ),
        Text(
          imcModelRecomendacion ?? "Sin recomendación",
          style: TextStyle(
            fontSize: 18,
            color: color,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 48,
        ),
        imcModelImagePath == null
            ? Container()
            : Container(
                width: MediaQuery.of(context).size.width / 2,
                height: 200,
                // margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(24),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[300],
                ),
                child: SvgPicture.asset(
                  imcModelImagePath!,
                  // color: Colors.green,
                  fit: BoxFit.contain,
                ),
              ),
      ],
    );
  }
}
