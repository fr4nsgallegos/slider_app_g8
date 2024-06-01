import 'package:flutter/material.dart';

class ImcCalculatorPage extends StatefulWidget {
  @override
  State<ImcCalculatorPage> createState() => _ImcCalculatorPageState();
}

class _ImcCalculatorPageState extends State<ImcCalculatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IMC Calculator"),
        centerTitle: true,
      ),
    );
  }
}
