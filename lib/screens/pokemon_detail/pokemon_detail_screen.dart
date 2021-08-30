import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class PokemonDetailScreen extends StatefulWidget {
  const PokemonDetailScreen({Key? key}) : super(key: key);

  @override
  _PokemonDetailScreenState createState() => _PokemonDetailScreenState();
}

class _PokemonDetailScreenState extends State<PokemonDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.grey[400],
        ),
        actions: [
          IconButton(
              onPressed: (){

              },
              icon: Icon(
                Icons.delete_outlined,
                color: Colors.grey[400],
              )
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: Badge(
              badgeContent: Text("30"),
              position: BadgePosition.topStart(top: 0, start: 30),
              child: IconButton(
                onPressed: (){

                },
                icon: Icon(
                  Icons.favorite,
                  color: Colors.red,
                )
              ),
            ),
          ),
        ],
      ),
      body: Container(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 20, 32, 0),
              child: Row(
                children: [
                  Text(
                    "Charmander",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.red,
                  )
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Stack(
                  alignment: Alignment(0, -6.8),
                  children: [
                    Container(
                      width: double.infinity,
                      height: 370,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage("assets/images/grass.png"),
                          fit:BoxFit.cover
                        ),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
                      ),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(32, 50, 32, 0),
                          child: Text(
                            "Charmander is a bipedal, reptilian Pokémon with a primarily orange body and blue eyes. Its underside from the chest down and the soles of its feet are cream-colored. It has two small fangs visible in its upper jaw and two smaller fangs in its lower jaw.",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    Image.network("https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/4.png", fit: BoxFit.fill, width: 300,),
                  ],
                ),
              ],
            )
          ],
        )
      ),
    );
  }
}
