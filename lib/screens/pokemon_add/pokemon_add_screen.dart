import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:poke_app/screens/bottom_nav_bar.dart';

class PokemonAddScreen extends StatefulWidget {
  const PokemonAddScreen({Key? key}) : super(key: key);

  @override
  _PokemonAddScreenState createState() => _PokemonAddScreenState();
}

class _PokemonAddScreenState extends State<PokemonAddScreen> {

  final _formKey = GlobalKey<FormState>();
  final List<String> pokemonTypes = ['fire', 'water', 'grass', 'electric', 'other'];

  String _pokemonName = "";
  String _pokemonImage = "";
  String _pokemonType = "";
  String _pokemonDescription = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Add Pokemon",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Gotta add them all!",
                    style: TextStyle(
                      color: Colors.grey[500],
                    ),
                  ),
                  SizedBox(height: 30,),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          style: TextStyle(
                              color: Colors.black
                          ),
                          decoration: InputDecoration(
                            labelText: "Pokemon Name",
                            fillColor: Colors.white,
                            filled: true,
                          ),
                          validator: (val) => val!.isEmpty ? "Enter Pokemon Name" : null,
                          onChanged: (value) {
                            _pokemonName = value;
                          },
                        ),
                        SizedBox(height: 10,),
                        TextFormField(
                          style: TextStyle(
                              color: Colors.black
                          ),
                          decoration: InputDecoration(
                            labelText: "Pokemon Image",
                            fillColor: Colors.white,
                            filled: true,
                          ),
                          validator: (val) => val!.isEmpty ? "Enter Pokemon Image" : null,
                          onChanged: (value) {
                            _pokemonImage = value;
                          },
                        ),
                        SizedBox(height: 10,),
                        DropdownButtonFormField(
                          onChanged: (value)
                          {
                            setState(() {
                              _pokemonType = value.toString();
                            });
                          },
                          validator: (val) => val.toString() == "null" ? "Enter Pokemon Type" : null,
                          decoration: InputDecoration(
                            labelText: "Pokemon Type",
                            fillColor: Colors.white,
                            filled: true,
                          ),
                          items: pokemonTypes.map((pokemonType) {
                            return DropdownMenuItem(
                              value: pokemonType,
                              child: Text(
                                "$pokemonType",
                                style: TextStyle(color: Colors.black),
                              ),
                            );
                          }).toList(),
                        ),
                        TextFormField(
                          keyboardType: TextInputType.multiline,
                          maxLines: 5,
                          style: TextStyle(
                              color: Colors.black
                          ),
                          decoration: InputDecoration(
                            alignLabelWithHint: true,
                            labelText: "Pokemon Description",
                            fillColor: Colors.white,
                            filled: true,
                          ),
                          validator: (val) => val!.isEmpty ? "Enter Pokemon Name" : null,
                          onChanged: (value) {
                            _pokemonImage = value;
                          },
                        ),
                        SizedBox(height: 10,),
                        ElevatedButton(
                            onPressed: ()
                            {
                              if(_formKey.currentState!.validate()){
                                print("$_pokemonName - $_pokemonImage - $pokemonTypes - $_pokemonDescription");
                              }
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Colors.pink[300]
                            ),
                            child: Text("Add Pokemon")
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(selectedIndex: 1,),
    );
  }
}
