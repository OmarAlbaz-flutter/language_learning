import 'package:flutter/material.dart';
import 'package:language_learning_app/components/item_widget.dart';
import 'package:language_learning_app/models/item_model.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});

  final List<ItemModel> members = const [
    ItemModel(
      image: "assets/images/family_members/family_daughter.png",
      jpName: 'Musimi',
      enName: 'Daughter',
      sound: "sounds/family_members/daughter.wav",
    ),
    ItemModel(
      image: "assets/images/family_members/family_son.png",
      jpName: 'Mosku',
      enName: 'Son',
      sound: "sounds/family_members/son.wav",
    ),
    ItemModel(
      image: "assets/images/family_members/family_younger_brother.png",
      jpName: 'Ototo',
      enName: 'Younger Brother',
      sound: "sounds/family_members/younger_brother.wav",
    ),
    ItemModel(
      image: "assets/images/family_members/family_younger_sister.png",
      jpName: 'Imoto',
      enName: 'Yonger Sister',
      sound: "sounds/family_members/younger_sister.wav",
    ),
    ItemModel(
      image: "assets/images/family_members/family_older_brother.png",
      jpName: 'Ni San',
      enName: 'Older Brother',
      sound: "sounds/family_members/older_brother.wav",
    ),
    ItemModel(
      image: "assets/images/family_members/family_older_sister.png",
      jpName: 'Ani',
      enName: 'Older Sister',
      sound: "sounds/family_members/older_sister.wav",
    ),
    ItemModel(
      image: "assets/images/family_members/family_father.png",
      jpName: 'Shichi Oyan',
      enName: 'Father',
      sound: "sounds/family_members/father.wav",
    ),
    ItemModel(
      image: "assets/images/family_members/family_mother.png",
      jpName: 'Haha Oyan',
      enName: 'Mother',
      sound: "sounds/family_members/mother.wav",
    ),
    ItemModel(
      image: "assets/images/family_members/family_grandfather.png",
      jpName: 'Ogi San',
      enName: 'GrandFather',
      sound: "sounds/family_members/grand_father.wav",
    ),
    ItemModel(
      image: "assets/images/family_members/family_grandmother.png",
      jpName: 'Sobu',
      enName: 'GrandMother',
      sound: "sounds/family_members/grand_mother.wav",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Family Memebers",
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
          itemCount: members.length,
          itemBuilder: (context, index) {
            return Item(
              item: members[index],
              color: Colors.green,
              
            );
          },
        ));
  }
}
