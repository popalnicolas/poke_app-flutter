import 'package:flutter/material.dart';
import 'package:poke_app/screens/bottom_nav_bar.dart';

class PokemonListScreen extends StatefulWidget {
  final Function toggleView;

  PokemonListScreen({required this.toggleView});

  @override
  _PokemonListScreenState createState() => _PokemonListScreenState();
}

class _PokemonListScreenState extends State<PokemonListScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

      ),
      bottomNavigationBar: BottomNavBar(selectedIndex: 1,),
    );
  }
}
