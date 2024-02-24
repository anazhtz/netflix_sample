import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_sample/core/colors/colors.dart';
import 'package:stroke_text/stroke_text.dart';

import '../../core/contants/contanss.dart';

class NumberCard extends StatelessWidget {
  final int index;
  const NumberCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(
              width: 40,
              height: 250,
            ),
            Container(
              width: 130,
              height: 250,
              decoration: BoxDecoration(
                  borderRadius: kRadius15,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                      image: NetworkImage("https://media.themoviedb.org/t/p/w300_and_h450_bestv2/3mFM80dPzSqoXXuC2UMvLIRWX32.jpg"))
              ),
            ),
          ],
        ),
        Positioned(
          left:13,
          bottom: -30,
            child:StrokeText(text: "${index + 1}",textStyle: TextStyle(
              fontSize: 150,
              fontWeight: FontWeight.bold,
              color: kButtonColorBlack,
            ),strokeColor: Colors.white,
              strokeWidth: 5,)
        )],
    );
  }
}
