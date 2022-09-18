import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:pokedex/model/poke_model.dart';
class PokeImageAndBall extends StatelessWidget {
  const PokeImageAndBall({Key? key , required this.pokemon}) : super(key: key);
  final PokemonModel pokemon ;


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(alignment : Alignment.bottomRight,child: Image.asset("images/pokeball.png")),
        Align(alignment: Alignment.bottomRight,child :CachedNetworkImage(imageUrl: pokemon.img ?? '', fit: BoxFit.fitHeight,
        placeholder: (context,url) => CircularProgressIndicator(
          color: Colors.red

          ,
        ),
        ))

      ],
    );
  }
}
