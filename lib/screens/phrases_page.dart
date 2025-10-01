import 'package:flutter/material.dart';
import 'package:language_learning_app/components/phrases_widget.dart';
import 'package:language_learning_app/models/item_model.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  final List<ItemModel> phrases = const [
    ItemModel(
      jpName: 'Ki maska?',
      enName: 'Are you coming?',
      sound: "sounds/phrases/are_you_coming.wav",
    ),
    ItemModel(
      jpName: 'Ko dosoroko wakidmasi',
      enName: 'Don\'t forget to subscribe',
      sound: "sounds/phrases/dont_forget_to_subscribe.wav",
    ),
    ItemModel(
      jpName: 'kokibo wanat isba',
      enName: 'How are you feeling?',
      sound: "sounds/phrases/how_are_you_feeling.wav",
    ),
    ItemModel(
      jpName: 'watashi anime daiskui des',
      enName: 'I love anime',
      sound: "sounds/phrases/i_love_anime.wav",
    ),
    ItemModel(
      jpName: 'watashi programmingo daiskui des',
      enName: 'I love programming',
      sound: "sounds/phrases/i_love_programming.wav",
    ),
    ItemModel(
      jpName: 'Programming dankan des',
      enName: 'Programming is easy',
      sound: "sounds/phrases/programming_is_easy.wav",
    ),
    ItemModel(
      jpName: 'Namai wa nan deska',
      enName: 'What is your name?',
      sound: "sounds/phrases/what_is_your_name.wav",
    ),
    ItemModel(
      jpName: 'Dokoni kno',
      enName: 'Where are you going?',
      sound: "sounds/phrases/where_are_you_going.wav",
    ),
    ItemModel(
      jpName: 'Hai watashi matin das',
      enName: 'yes i\'m coming',
      sound: "sounds/phrases/yes_im_coming.wav",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Phrases",
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
          itemCount: phrases.length,
          itemBuilder: (context, index) {
            return PhrasesItem(
              item: phrases[index],
            );
          },
        ));
  }
}
