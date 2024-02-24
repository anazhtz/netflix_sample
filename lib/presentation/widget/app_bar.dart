import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_sample/core/contants/contanss.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key,required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,
          style: GoogleFonts.montserrat(
          fontSize: 30,fontWeight: FontWeight.bold
        ),),
       const  Spacer(),
      const   Icon(Icons.cast,color: Colors.white,size: 30,),
       kWidth,
        Container(
          width: 30,
          height: 30,
          color: Colors.blue,),
        kWidth,
         ],
    );
  }
}
