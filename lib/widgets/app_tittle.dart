import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex/constants/u%C4%B1_helper.dart';
class AppTittle extends StatelessWidget {
  const AppTittle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String PokeBallUrl = "images/pokeball.png";
    return Container(
      color : Colors.amberAccent,
      height: UIHelper.getAppTittleWidgetHeight(),
      child: Stack(
        children: [
          Padding(
            padding: UIHelper.getDefaultPadding(),
            child: Align(alignment : Alignment.topLeft,child: Text("Pokedex",style: GoogleFonts.ubuntu(color: Colors.white, fontSize: 40),)),
          ),
          Align(alignment: Alignment.topRight, child : Image.asset(PokeBallUrl , width: 100.w, height: 100.h , fit: BoxFit.fitWidth,)),
        ],
      ),
    );
  }
}
