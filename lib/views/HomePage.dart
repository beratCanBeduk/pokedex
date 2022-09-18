import 'package:flutter/material.dart';
import 'package:pokedex/widgets/app_tittle.dart';
import 'package:pokedex/widgets/poke_futurebuilder.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:OrientationBuilder(
          builder: (context,builder) =>
        Column(
          children: const [
            AppTittle(),
            Expanded(child: PokemonList()),

          ],
        ),
      )

    );
  }
}
