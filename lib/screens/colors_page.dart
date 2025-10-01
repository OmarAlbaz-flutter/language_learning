import 'package:flutter/material.dart';
import 'package:language_learning_app/components/item_widget.dart';
import 'package:language_learning_app/models/item_model.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<ItemModel> color = const [
    ItemModel(
      image: "assets/images/colors/color_black.png",
      jpName: 'Blacko',
      enName: 'Black',
      sound: "sounds/colors/black.wav",
    ),
    ItemModel(
      image: "assets/images/colors/color_brown.png",
      jpName: 'Shairo',
      enName: 'Brown',
      sound: "sounds/colors/brown.wav",
    ),
    ItemModel(
      image: "assets/images/colors/color_dusty_yellow.png",
      jpName: 'Hokori boi kero',
      enName: 'Dusty Yellow',
      sound: "sounds/colors/dusty_yellow.wav",
    ),
    ItemModel(
      image: "assets/images/colors/color_gray.png",
      jpName: 'Grae',
      enName: 'Gray',
      sound: "sounds/colors/gray.wav",
    ),
    ItemModel(
      image: "assets/images/colors/color_green.png",
      jpName: 'Midori',
      enName: 'Green',
      sound: "sounds/colors/green.wav",
    ),
    ItemModel(
      image: "assets/images/colors/color_red.png",
      jpName: 'Aka',
      enName: 'Red',
      sound: "sounds/colors/red.wav",
    ),
    ItemModel(
      image: "assets/images/colors/color_white.png",
      jpName: 'Shiroi',
      enName: 'White',
      sound: "sounds/colors/white.wav",
    ),
    ItemModel(
      image: "assets/images/colors/color_yellow.png",
      jpName: 'Kiro',
      enName: 'Yellow',
      sound: "sounds/colors/yellow.wav",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Colors",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.brown,
        ),
        body: ListView.builder(
          itemCount: color.length,
          itemBuilder: (context, index) {
            return Item(
              item: color[index],
              color: Colors.purple,
            );
          },
        ));
  }
}
