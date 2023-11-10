import 'package:flutter/material.dart';

class ItemModel {
  final String jpName;
  final String enName;
  final String sound;
  final String? image;

  const ItemModel({
    @required this.image,
    required this.jpName,
    required this.enName,
    required this.sound,
  });
}
