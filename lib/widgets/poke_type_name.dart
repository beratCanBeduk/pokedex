import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex/model/poke_model.dart';

class PokeNameType extends StatelessWidget {
  const PokeNameType({Key? key , required this.pokemon}) : super(key: key);
  final PokemonModel pokemon ;

  @override
  Widget build(BuildContext context) {
    return

       Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(

            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Expanded(child: Text(pokemon.name ?? '', style: GoogleFonts.ubuntu(fontSize: 23 , color: Colors.white),)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: Text("#${pokemon.num}", style: GoogleFonts.ubuntu(fontSize: 23 , color: Colors.white),),
              )
            ],
          ),
          SizedBox(height: 0.01.sh,),
          Padding(
            padding: const EdgeInsets.only(left : 50 ),
            child: Chip(label:Text(pokemon.type?.join(" / ") ?? '')),
          )
        ],
      );

  }
}
