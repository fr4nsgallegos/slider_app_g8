import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:slider_example_g8/models/imc_model.dart';
import 'package:slider_example_g8/widgets/result_imc_widget.dart';

class ImcCalculatorPage extends StatefulWidget {
  @override
  State<ImcCalculatorPage> createState() => _ImcCalculatorPageState();
}

class _ImcCalculatorPageState extends State<ImcCalculatorPage> {
  double peso = 2;
  double altura = 0.5;
  double imcResult = 0;
  ImcModel? selectedImcModel;

  double roundedOneDecimal(double number) {
    String stringNumber = number.toStringAsFixed(1);
    return double.parse(stringNumber);
  }

  void seleccionarImcModel() {
    if (imcResult > 0 && imcResult < 18.5) {
      selectedImcModel = indiceList[0];
    } else if (imcResult >= 18.5 && imcResult <= 24.9) {
      selectedImcModel = indiceList[1];
    } else if (imcResult >= 25 && imcResult <= 29.9) {
      selectedImcModel = indiceList[2];
    } else {
      selectedImcModel = indiceList[3];
    }
  }

  void calcularIMC() {
    imcResult = roundedOneDecimal(peso / (altura * altura));
    seleccionarImcModel();
    print(imcResult);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IMC Calculator"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "Altura:",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "$altura m",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Slider(
              value: altura,
              min: 0.5,
              max: 2.2,
              onChanged: (value) {
                altura = roundedOneDecimal(value);
                setState(() {});
              },
            ),
            Text(
              "Peso:",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "$peso Kg",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Slider(
              value: peso,
              min: 2,
              max: 150,
              onChanged: (value) {
                peso = roundedOneDecimal(value);
                setState(() {});
              },
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  calcularIMC();
                  setState(() {});
                },
                child: Text("Calcular"),
              ),
            ),
            Divider(height: 32, thickness: 2),
            ResultImcWidget(
              imcResult: imcResult.toString(),
              imcModelTitulo: selectedImcModel?.titulo,
              imcModelRecomendacion: selectedImcModel?.recomendacion,
              imcModelImagePath: selectedImcModel?.pathImage,
              color: selectedImcModel?.color,
            )
          ],
        ),
      ),
    );
  }
}
