import 'package:flutter/material.dart';

class Pokemon
{
  final int pokemonId, pokemonType;
  final String pokemonName, pokemonImage, pokemonDescription;

  Pokemon({
    required this.pokemonId,
    required this.pokemonName,
    required this.pokemonType,
    required this.pokemonImage,
    required this.pokemonDescription
  });
}