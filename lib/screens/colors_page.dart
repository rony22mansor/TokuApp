import 'package:flutter/material.dart';
import 'package:learn_language/models/item_model.dart';
import 'package:learn_language/widgets/item.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  final List<ItemModel> colors = const [
    ItemModel(
        image: 'assets/images/colors/color_black.png',
        jpName: 'ichi',
        enName: 'black',
        sound: 'sounds/colors/black.wav'),
    ItemModel(
        image: 'assets/images/colors/color_brown.png',
        jpName: 'ichi',
        enName: 'brown',
        sound: 'sounds/colors/brown.wav'),
    ItemModel(
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'ichi',
        enName: 'dusty yellow',
        sound: 'sounds/colors/dusty yellow.wav'),
    ItemModel(
        image: 'assets/images/colors/color_gray.png',
        jpName: 'ichi',
        enName: 'gray',
        sound: 'sounds/colors/gray.wav'),
    ItemModel(
        image: 'assets/images/colors/color_green.png',
        jpName: 'ichi',
        enName: 'green',
        sound: 'sounds/colors/green.wav'),
    ItemModel(
        image: 'assets/images/colors/color_red.png',
        jpName: 'ichi',
        enName: 'red',
        sound: 'sounds/colors/red.wav'),
    ItemModel(
        image: 'assets/images/colors/color_white.png',
        jpName: 'ichi',
        enName: 'white',
        sound: 'sounds/colors/white.wav'),
    ItemModel(
        image: 'assets/images/colors/color_yellow.png',
        jpName: 'ichi',
        enName: 'yellow',
        sound: 'sounds/colors/yellow.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Colors"),
        backgroundColor: const Color(0xFF2E2E2E),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Item(
            item: colors[index],
            color: const Color(0xFF8943BC),
          );
        },
      ),
    );
  }
}
