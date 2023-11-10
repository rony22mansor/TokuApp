import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
  const Category(
      {super.key,
      required this.text,
      required this.color,
      required this.onTap});

  final String? text;
  final Color? color;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          boxShadow: List.filled(
            3,
            BoxShadow(
              blurRadius: 4,
              offset: Offset.fromDirection(4),
              color: const Color(0x45000000)            ),
          ),
        ),
        padding: const EdgeInsets.only(left: 32),
        height: 64,
        alignment: Alignment.centerLeft,
        width: double.infinity,
        child: Text(
          text!,
          style: const TextStyle(
            fontSize: 22,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
