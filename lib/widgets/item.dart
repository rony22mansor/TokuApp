// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:learn_language/models/item_model.dart';
import 'package:audioplayers/audioplayers.dart';

class Item extends StatelessWidget {
  Item({super.key, required this.item, required this.color});
  final ItemModel item;
  final Color color;
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return item.image == null
        ? Container(
            height: 100,
            decoration: BoxDecoration(
              color: color,
              boxShadow: List.filled(
                3,
                BoxShadow(
                  blurRadius: 4,
                  offset: Offset.fromDirection(4),
                  color: const Color.fromARGB(69, 0, 0, 0),
                ),
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 28),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.jpName,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        item.enName,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                IconButton(
                  padding: const EdgeInsets.only(right: 28),
                  onPressed: () {
                    player.play(
                      AssetSource(item.sound),
                    );
                  },
                  icon: const Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 32,
                  ),
                ),
              ],
            ),
          )
        : Container(
            decoration: BoxDecoration(
              color: color,
              boxShadow: List.filled(
                2,
                BoxShadow(
                  blurRadius: 4,
                  offset: Offset.fromDirection(4),
                  color: const Color(0x45000000)                ),
              ),
            ),
            height: 100,
            child: Row(
              children: [
                Container(
                  color: Color.lerp(color, Colors.white, 0.4),
                  child: Image.asset(item.image!),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 28),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.jpName,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        item.enName,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                IconButton(
                  padding: const EdgeInsets.only(right: 28),
                  onPressed: () {
                    player.play(
                      AssetSource(item.sound),
                    );
                  },
                  icon: const Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 32,
                  ),
                ),
              ],
            ),
          );
  }
}
