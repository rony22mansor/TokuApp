import 'package:flutter/material.dart';
import 'package:learn_language/models/item_model.dart';
import 'package:learn_language/widgets/item.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});
  final List<ItemModel> familyMembers = const [
    ItemModel(
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'ichi',
        enName: 'daughter',

        /* notice here that a didn't add 'assets/' to the path because AssetSource put it by default 
        so you need to asur that you audio files are inside folder with name "assets" */
        sound: 'sounds/family_members/daughter.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_father.png',
        jpName: 'ichi',
        enName: 'father',
        sound: 'sounds/family_members/father.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'ichi',
        enName: 'grand father',
        sound: 'sounds/family_members/grand father.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'ichi',
        enName: 'grand mother',
        sound: 'sounds/family_members/grand mother.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'ichi',
        enName: 'mother',
        sound: 'sounds/family_members/mother.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'ichi',
        enName: 'older brother',
        sound: 'sounds/family_members/older bother.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'ichi',
        enName: 'older sister',
        sound: 'sounds/family_members/older sister.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_son.png',
        jpName: 'ichi',
        enName: 'son',
        sound: 'sounds/family_members/son.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'ichi',
        enName: 'younger brother',
        sound: 'sounds/family_members/younger brohter.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'ichi',
        enName: 'younger sister',
        sound: 'sounds/family_members/younger sister.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Family Members"),
        backgroundColor: const Color(0xFF2E2E2E),
      ),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: (context, index) {
          return Item(
            item: familyMembers[index],
            color: const Color(0xFF1BA755),
          );
        },
      ),
    );
  }
}
