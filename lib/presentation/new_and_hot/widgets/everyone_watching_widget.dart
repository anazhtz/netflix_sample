import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_sample/presentation/new_and_hot/widgets/video_widgets.dart';

import '../../../core/colors/colors.dart';
import '../../../core/contants/contanss.dart';
import '../../home/custom_widget.dart';

class Eveyone_watching_widget extends StatelessWidget {
  const Eveyone_watching_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHieght,
        kHieght,
        Text("Friends",style: GoogleFonts.montserrat(fontSize: 20,
            color: kWhiteColor,fontWeight: FontWeight.bold)),
        kHieght,
        const Text("This hit sitcon follows the merry misadventures of six 20-something pals as they "
            "nagative the pitfalls of work, life and in 1990s Manhattan",style: TextStyle(color: kGreyColor),),
        kHieght50,
        const  Video_widget(),
        kHieght,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            CustomButtonWidget(
              icon: Icons.share, title: "Remind me", iconSize: 30,
              textSize: 18,
            ),
            kWidth,
            CustomButtonWidget(
              icon: Icons.add, title: "My List", iconSize: 30,
              textSize: 18,
            ),
            kWidth,
            CustomButtonWidget(
              icon: Icons.play_arrow, title: "Play", iconSize: 30,
              textSize: 18,
            ),
            kWidth,
          ],
        )

      ],
    );
  }
}