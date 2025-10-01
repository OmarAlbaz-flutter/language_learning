import 'package:flutter/material.dart';
import 'package:language_learning_app/components/item_info_widget.dart';
import 'package:language_learning_app/models/item_model.dart';

class Item extends StatelessWidget {
  const Item({
    required this.color,
    required this.item,
    super.key,
  });

  final ItemModel item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
            color: Color(0xFFFFEDC2),
            child: Image.asset(item.image!),
          ),
          Expanded(
            child: ItemInfo(item: item),
          ),
        ],
      ),
    );
  }
}
