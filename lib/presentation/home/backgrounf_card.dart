import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/colors/colors.dart';
import '../../core/contants/contanss.dart';
import 'custom_widget.dart';

class BackGroundCard extends StatelessWidget {
  const BackGroundCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: const BoxDecoration(
              image: DecorationImage(image: NetworkImage(kMainImage))
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CustomButtonWidget(
                  title: "My List",
                  icon: Icons.add,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:  _PlayButton(),
                ),
                const CustomButtonWidget(icon: Icons.info, title: 'Info')

              ],
            ),
          ),
        )
      ],
    );
  }
  // ignore: non_constant_identifier_names
  TextButton _PlayButton() {
    return TextButton.icon(onPressed: (){},
        style: ButtonStyle(backgroundColor: const MaterialStatePropertyAll(kWhiteColor)),
        icon:const Icon(Icons.play_arrow,size: 30,color: kButtonColorBlack,),
        label: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text("Play",style: TextStyle(fontSize: 25,color: kButtonColorBlack),),
        ));
  }
}
