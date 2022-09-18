import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/views/HomePage.dart';
import 'package:pokedex/constants/u%C4%B1_helper.dart';
import 'package:pokedex/model/poke_model.dart';
import 'package:pokedex/widgets/poke_information.dart';
import 'package:pokedex/widgets/poke_type_name.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key , required this.pokemon}) : super(key: key);
  final PokemonModel pokemon ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIHelper.getColorFromType(pokemon.type![0]),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(iconSize : 24.h  ,onPressed: (){Navigator.of(context).pop();}, icon: Icon(Icons.arrow_back)),
            PokeNameType(pokemon: pokemon),
            SizedBox(height: 50,),
            Expanded(
              child: Stack(

                children: [
                  PokeInfo(pokemon: pokemon),
                  Align(
                    alignment: Alignment.topCenter,
                    child: CachedNetworkImage(imageUrl: pokemon.img ?? "" ,),
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
