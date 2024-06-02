import 'package:flutter/material.dart';

class ItemDeportWidget extends StatefulWidget {
  Map<String, dynamic> deporte;
  VoidCallback onTap;

  ItemDeportWidget(
    this.deporte,
    this.onTap,
  );

  @override
  State<ItemDeportWidget> createState() => _ItemDeportWidgetState();
}

class _ItemDeportWidgetState extends State<ItemDeportWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      // () {
      //   if (widget.deporte["isFavorite"] == false) {
      //     widget.deporte["isFavorite"] = true;
      //   } else {
      //     widget.deporte["isFavorite"] = false;
      //   }

      //   setState(() {});
      // },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: widget.deporte["isFavorite"]
              ? Colors.orange.shade200
              : Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.orange,
            width: 2,
          ),
        ),
        child: Text(
          widget.deporte["name"],
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
