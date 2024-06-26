import 'dart:math';

import 'package:flutter/material.dart';

class TextStyleEditorPage extends StatefulWidget {
  @override
  State<TextStyleEditorPage> createState() => _TextStyleEditorPageState();
}

class _TextStyleEditorPageState extends State<TextStyleEditorPage> {
  double sizeValue = 10;
  double opacityValue = 1;
  double redValue = Random().nextInt(255) + 1;
  double greenValue = Random().nextInt(255) + 1;
  double blueValue = Random().nextInt(255) + 1;
  String textLorem =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam dapibus sit amet libero vel congue. Morbi eget nisi vel sapien commodo ultrices sit amet nec ante. Curabitur ipsum quam, posuere eget consectetur venenatis, laoreet ac libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Maecenas.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam dapibus sit amet libero vel congue. Morbi eget nisi vel sapien commodo ultrices sit amet nec ante. Curabitur ipsum quam, posuere eget consectetur venenatis, laoreet ac libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Maecenas.";

  bool isUnderline = false;
  bool isOverline = false;
  bool isLineThrough = false;
  bool isBold = false;
  List<TextDecoration> decorationTextExample = [];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Style Editor"),
          centerTitle: true,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  textLorem,
                  style: TextStyle(
                      fontWeight:
                          isBold == true ? FontWeight.bold : FontWeight.normal,
                      fontSize: sizeValue,
                      color: Color.fromRGBO(
                        redValue.toInt(),
                        greenValue.toInt(),
                        blueValue.toInt(),
                        opacityValue,
                      ),
                      decoration: TextDecoration.combine(decorationTextExample
                          // [
                          //   TextDecoration.underline, //raya abajo
                          //   TextDecoration.overline, //raya arriba
                          //   TextDecoration.lineThrough, //tachado
                          // ],
                          )

                      //  isUnderline == true
                      //     ? TextDecoration.underline
                      //     : TextDecoration.none,
                      //TextDecoration.underline, //raya abajo
                      //  TextDecoration.overline,//raya arriba
                      // TextDecoration.lineThrough, //tachado
                      ),
                ),
                Slider(
                  value: sizeValue,
                  min: 0,
                  max: 30,
                  activeColor: Colors.red,
                  inactiveColor: Colors.green,
                  thumbColor: Colors.yellow,
                  onChanged: (mandarina) {
                    sizeValue = mandarina;
                    print(mandarina);
                    setState(() {});
                  },
                ),
                Slider(
                  value: opacityValue,
                  min: 0,
                  max: 1,
                  activeColor: Colors.black,
                  inactiveColor: Colors.grey,
                  thumbColor: Colors.black,
                  onChanged: (opacidad) {
                    opacityValue = opacidad;
                    setState(() {});
                  },
                ),
                Slider(
                  value: redValue,
                  min: 0,
                  max: 500,
                  activeColor: Colors.red,
                  inactiveColor: Colors.grey,
                  thumbColor: Colors.red,
                  onChanged: (red) {
                    redValue = red;
                    setState(() {});
                  },
                ),
                Slider(
                  value: greenValue,
                  min: 0,
                  max: 500,
                  activeColor: Colors.green,
                  inactiveColor: Colors.grey,
                  thumbColor: Colors.green,
                  onChanged: (green) {
                    greenValue = green;
                    setState(() {});
                  },
                ),
                Slider(
                  value: blueValue,
                  min: 0,
                  max: 500,
                  activeColor: Colors.blue,
                  inactiveColor: Colors.grey,
                  thumbColor: Colors.blue,
                  onChanged: (blue) {
                    blueValue = blue;
                    setState(() {});
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    redValue = Random().nextDouble() * 256;
                    greenValue = Random().nextDouble() * 256;
                    blueValue = Random().nextDouble() * 256;
                    setState(() {});
                  },
                  child: Text("Shuffle"),
                ),
                CheckboxListTile(
                  title: Text("Bold?"),
                  value: isBold,
                  onChanged: (juanito) {
                    isBold = juanito!;
                    setState(() {});
                  },
                ),
                CheckboxListTile(
                  title: Text("underline?"),
                  value: isUnderline,
                  onChanged: (v) {
                    isUnderline = v!;
                    isUnderline
                        ? decorationTextExample.add(TextDecoration.underline)
                        : decorationTextExample
                            .remove(TextDecoration.underline);
                    // isUnderline = v!;
                    // if (isUnderline) {
                    //   decorationTextExample.add(TextDecoration.underline);
                    // } else {
                    //   decorationTextExample.remove(TextDecoration.underline);
                    // }

                    setState(() {});
                  },
                ),
                CheckboxListTile(
                  title: Text("Overline?"),
                  value: isOverline,
                  onChanged: (v) {
                    isOverline = v!;
                    isOverline
                        ? decorationTextExample.add(TextDecoration.overline)
                        : decorationTextExample.remove(TextDecoration.overline);
                    setState(() {});
                  },
                ),
                CheckboxListTile(
                  title: Text("LineThrough?"),
                  value: isLineThrough,
                  onChanged: (v) {
                    isLineThrough = v!;
                    isLineThrough
                        ? decorationTextExample.add(TextDecoration.lineThrough)
                        : decorationTextExample
                            .remove(TextDecoration.lineThrough);
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
