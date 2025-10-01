import 'package:flutter/material.dart';
import 'package:language_learning_app/components/item_widget.dart';
import 'package:language_learning_app/models/item_model.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  final List<ItemModel> numbers = const [
    ItemModel(
      image: "assets/images/numbers/number_one.png",
      jpName: 'Ichi',
      enName: 'One',
      sound: 'sounds/numbers/number_one_sound.mp3',
    ),
    ItemModel(
      image: "assets/images/numbers/number_two.png",
      jpName: 'Ni',
      enName: 'Two',
      sound: 'sounds/numbers/number_two_sound.mp3',
    ),
    ItemModel(
      image: "assets/images/numbers/number_three.png",
      jpName: 'San',
      enName: 'Three',
      sound: 'sounds/numbers/number_three_sound.mp3',
    ),
    ItemModel(
      image: "assets/images/numbers/number_four.png",
      jpName: 'Shi',
      enName: 'Four',
      sound: 'sounds/numbers/number_four_sound.mp3',
    ),
    ItemModel(
      image: "assets/images/numbers/number_five.png",
      jpName: 'Go',
      enName: 'Five',
      sound: 'sounds/numbers/number_five_sound.mp3',
    ),
    ItemModel(
      image: "assets/images/numbers/number_six.png",
      jpName: 'Roku',
      enName: 'Six',
      sound: 'sounds/numbers/number_six_sound.mp3',
    ),
    ItemModel(
      image: "assets/images/numbers/number_seven.png",
      jpName: 'Shichi',
      enName: 'Seven',
      sound: 'sounds/numbers/number_seven_sound.mp3',
    ),
    ItemModel(
      image: "assets/images/numbers/number_eight.png",
      jpName: 'Hachi',
      enName: 'Eight',
      sound: 'sounds/numbers/number_eight_sound.mp3',
    ),
    ItemModel(
      image: "assets/images/numbers/number_nine.png",
      jpName: 'Kyu',
      enName: 'Nine',
      sound: 'sounds/numbers/number_nine_sound.mp3',
    ),
    ItemModel(
      image: "assets/images/numbers/number_ten.png",
      jpName: 'Go',
      enName: 'Ten',
      sound: 'sounds/numbers/number_ten_sound.mp3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Numbers",
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
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return Item(
              item: numbers[index], color: Colors.orange,
            );
          },
        ));
  }
}
// List<Widget> getNumbers(List<Number> numbers) {
//   List<Item> numbersList = [];

//   for (int i = 0; i < numbers.length; i++) {
//     numbersList.add(Item(number: numbers[i]));
//   }

//   return numbersList;
// }
