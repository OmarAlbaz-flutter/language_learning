import 'package:flutter/material.dart';
import 'package:language_learning_app/models/item_model.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.item});

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.jpName,
                style: TextStyle(
                  color: Color(
                    0xFFFFEDC2,
                  ),
                  fontSize: 20,
                ),
              ),
              Text(
                item.enName,
                style: TextStyle(
                  color: Color(
                    0xFFFFEDC2,
                  ),
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        Spacer(
          flex: 1,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: IconButton(
            onPressed: () {
              item.playSound();
            },
            icon: Icon(
              Icons.play_arrow,
              color: Color(0xFFFFEDC2),
              size: 30,
            ),
          ),
        ),
      ],
    );
  }
}
