import 'package:flutter/material.dart';
import 'package:language_learning_app/models/item_model.dart';
import 'package:language_learning_app/components/item_info_widget.dart';

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({
    super.key,
    required this.item,
  });

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.lightBlueAccent,
      child: Row(
        children: [
          Expanded(
            child: ItemInfo(item: item),
          ),
        ],
      ),
    );
  }
}
