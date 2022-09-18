import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex/constants/u%C4%B1_helper.dart';
import 'package:pokedex/model/poke_model.dart';
import 'package:pokedex/widgets/detail_page.dart';
import 'package:pokedex/widgets/image_ball_poke.dart';
class PokemonListItem extends StatelessWidget {
  final PokemonModel pokemon ;
   const PokemonListItem({Key? key , required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailPage(pokemon: pokemon)));
      },
      child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.w)),
      elevation: 10,
      shadowColor: UIHelper.getColorFromType(pokemon.type![0]),
      color : UIHelper.getColorFromType(pokemon.type![0]),
      child: Column(
      children: [
      Text(pokemon.name.toString() , style: GoogleFonts.ubuntu(fontSize: 30 , color: Colors.white), ),
        Chip(label: Text(" ${pokemon.type![0]} ")),
        Expanded(child: PokeImageAndBall(pokemon: pokemon)),
       ]  ,
   ),
       ),
    );;
  }
}

