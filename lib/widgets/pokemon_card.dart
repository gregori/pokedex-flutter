import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon.dart';
import 'package:pokedex/widgets/pokemon_card_background.dart';
import 'package:pokedex/widgets/pokemon_card_data.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard({required this.pokemon, super.key});
  final Pokemon pokemon;

  BoxDecoration getContainerDecoration() => BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7),
        border: Border.all(
          color: Colors.grey.withOpacity(0.24),
          width: 1,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(7),
      enableFeedback: true,
      splashColor: Colors.red.shade50,
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(7),
        decoration: getContainerDecoration(),
        child: Stack(
          children: [
            PokemonCardBackground(id: pokemon.id),
            PokemonCardData(pokemon: pokemon),
          ],
        ),
      ),
    );
  }
}
