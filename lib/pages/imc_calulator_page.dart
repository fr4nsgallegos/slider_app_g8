import 'package:flutter/material.dart';

class ImcCalculatorPage extends StatefulWidget {
  @override
  State<ImcCalculatorPage> createState() => _ImcCalculatorPageState();
}

class _ImcCalculatorPageState extends State<ImcCalculatorPage> {
  double peso = 2;
  double altura = 50;

  double roundedOneDecimal(double number) {
    String stringNumber = number.toStringAsFixed(1);
    return double.parse(stringNumber);
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
              "$altura cm",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Slider(
              value: altura,
              min: 50,
              max: 220,
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
            )
          ],
        ),
      ),
    );
  }
}
