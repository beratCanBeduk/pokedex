import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex/model/poke_model.dart';

class PokeInfo extends StatelessWidget {
  const PokeInfo({Key? key , required this.pokemon}) : super(key: key);
  final PokemonModel pokemon ;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white
        ),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              fillThePokemon("Name", pokemon.name),
              fillThePokemon("Height", pokemon.height),
              fillThePokemon("Weight", pokemon.weight),
              fillThePokemon("Spawn Time", pokemon.spawnTime),
              fillThePokemon("Weakness",pokemon.weaknesses),
              fillThePokemon("Pre Evolution", pokemon.prevEvolution),
              fillThePokemon("Next Evolution", pokemon.nextEvolution),






            ],
          ),
        ),
      ),
    );
  }
  fillThePokemon(String label , dynamic value){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label , style: GoogleFonts.ubuntu(fontSize: 20 , fontWeight: FontWeight.bold),),
          if(value is List && value.isNotEmpty)
            Text(value.join(","),style: GoogleFonts.ubuntu(fontSize: 15),)
          else if(value == null)
            Text("Not Avaiable", style: GoogleFonts.ubuntu(fontSize: 15),)
          else
            Text(value ,style: GoogleFonts.ubuntu(fontSize: 15),),





        ],
    );
  }
}
