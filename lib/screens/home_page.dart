import 'package:flutter/material.dart';
import 'package:language_learning_app/screens/colors_page.dart';
import 'package:language_learning_app/screens/family_members_page.dart';
import 'package:language_learning_app/screens/numbers_page.dart';
import 'package:language_learning_app/components/category_widget.dart';
import 'package:language_learning_app/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFEDC2),
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text(
          "Toku",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          CategoryWidget(
            color: Colors.orange,
            text: "Numbers",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return NumbersPage();
                }),
              );
            },
          ),
          CategoryWidget(
            color: Colors.green,
            text: "Family Members",
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return FamilyMembersPage();
                },
              ));
            },
          ),
          CategoryWidget(
            color: Colors.purple,
            text: "Colors",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ColorsPage();
                  },
                ),
              );
            },
          ),
          CategoryWidget(
            color: Colors.lightBlueAccent,
            text: "Phrases",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return PhrasesPage();
                }),
              );
            },
          ),
        ],
      ),
    );
  }
}
