import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/model/poke_model.dart';
import 'package:pokedex/services/pokedex_api.dart';
import 'package:pokedex/widgets/poke_list.dart';
class PokemonList extends StatefulWidget {
  const PokemonList({Key? key}) : super(key: key);

  @override
  _PokemonListState createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  late Future<List<PokemonModel>> pokemonFuture ;

  @override
  void initState() {
    pokemonFuture = PokeApi.getPokemonData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PokemonModel>>(
      future: pokemonFuture,
      builder: (context,snapshot){
        if (snapshot.hasData){
          List<PokemonModel> _listem =snapshot.data!;

          return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: ScreenUtil().orientation == Orientation.portrait ? 2 : 3), itemCount: _listem.length , itemBuilder: (context,index){
            return PokemonListItem(pokemon:_listem[index]);
          }) ;
        }else if (snapshot.hasError){
          return const Center(
            child: Text("Hata var "),
          );

        }else{
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },

    );
  }
}
