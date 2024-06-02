import 'package:flutter/material.dart';

class ItemDeportWidget extends StatefulWidget {
  Map<String, dynamic> deporte;
  VoidCallback onTap;
  bool isfavoriteListContainer;

  ItemDeportWidget(
    this.deporte,
    this.onTap,
    this.isfavoriteListContainer,
  );

  @override
  State<ItemDeportWidget> createState() => _ItemDeportWidgetState();
}

class _ItemDeportWidgetState extends State<ItemDeportWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: widget.isfavoriteListContainer
              ? Colors.white
              : widget.deporte["isFavorite"]
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
          style: TextStyle(
            fontSize: 18,
            color: widget.isfavoriteListContainer
                ? Colors.black
                : widget.deporte["isFavorite"]
                    ? Colors.white
                    : Colors.black,
          ),
        ),
      ),
    );
  }
}
