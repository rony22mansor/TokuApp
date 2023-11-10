// ignore_for_file: missing_required_param

import 'package:flutter/material.dart';
import 'package:learn_language/models/item_model.dart';
import 'package:learn_language/widgets/item.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  final List<ItemModel> phrases = const [
    ItemModel(
        jpName: 'ichi',
        enName: 'are you coming',
        sound: 'sounds/phrases/are_you_coming.wav'),
    ItemModel(
        jpName: 'ichi',
        enName: 'dont forget to subscribe',
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav'),
    ItemModel(
        jpName: 'ichi',
        enName: 'how are you feeling',
        sound: 'sounds/phrases/how_are_you_feeling.wav'),
    ItemModel(
        jpName: 'ichi',
        enName: 'i love anime',
        sound: 'sounds/phrases/i_love_anime.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Phrases"),
        backgroundColor: const Color(0xFF2E2E2E),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: ((context, index) {
          return Item(
            item: phrases[index],
            color: const Color(0xFFFF3333),
          );
        }),
      ),
    );
  }
}
