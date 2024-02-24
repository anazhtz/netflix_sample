import 'package:flutter/cupertino.dart';

import '../../core/contants/contanss.dart';
import '../widget/main_title.dart';
import 'number_card.dart';

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child:    MainTitle(title: 'Top Ten Tv Shows indian Today',),
        ),
        kHieght,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children:
            List.generate(10,
                  (index) => NumberCard(index: index,),
            ),
          ),
        )
      ],
    );
  }
}