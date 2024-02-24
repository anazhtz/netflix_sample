
import 'package:flutter/cupertino.dart';
import 'package:netflix_sample/core/contants/contanss.dart';

import 'main_card.dart';
import 'main_title.dart';

class MainTileCard extends StatelessWidget {
  final String title;
  const MainTileCard({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child:    MainTitle(title: title,),
        ),
        kHieght,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children:
            List.generate(10, (index) => const  MainCardHome()),
          ),
        )

      ],
    );
  }
}