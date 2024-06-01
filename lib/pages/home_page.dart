import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double sliderValue = 0;
  double opacityValue = 0;
  String textLorem =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam dapibus sit amet libero vel congue. Morbi eget nisi vel sapien commodo ultrices sit amet nec ante. Curabitur ipsum quam, posuere eget consectetur venenatis, laoreet ac libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Maecenas.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam dapibus sit amet libero vel congue. Morbi eget nisi vel sapien commodo ultrices sit amet nec ante. Curabitur ipsum quam, posuere eget consectetur venenatis, laoreet ac libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Maecenas.";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  textLorem,
                  style: TextStyle(
                    color: Color.fromRGBO(125, 152, 168, opacityValue),
                  ),
                ),
                Slider(
                  value: sliderValue,
                  min: 0,
                  max: 30,
                  activeColor: Colors.red,
                  inactiveColor: Colors.green,
                  thumbColor: Colors.yellow,
                  onChanged: (mandarina) {
                    sliderValue = mandarina;
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
