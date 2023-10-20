import 'package:flutter/material.dart';

class PokemonCardBackground extends StatelessWidget {
  const PokemonCardBackground({required this.id, super.key});

  final int id;

  @override
  Widget build(BuildContext context) {
    var fontSize = id > 99 ? 90.0 : 101.0;

    return Text(
      id.toString(),
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.grey.shade200,
        fontSize: fontSize,
      ),
    );
  }
}
