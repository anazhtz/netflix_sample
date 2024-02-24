import 'package:flutter/cupertino.dart';

import '../../core/contants/contanss.dart';

class MainCardHome extends StatelessWidget {
  const MainCardHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 130,
      height: 250,
      decoration: BoxDecoration(
          borderRadius: kRadius15,
          image: DecorationImage(
            fit: BoxFit.cover,
              image: NetworkImage("https://media.themoviedb.org/t/p/w300_and_h450_bestv2/fiVW06jE7z9YnO4trhaMEdclSiC.jpg"))
      ),
    );
  }
}
