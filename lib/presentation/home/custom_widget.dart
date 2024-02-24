import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/colors/colors.dart';

class CustomButtonWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final double iconSize;
  final double textSize;
  const CustomButtonWidget({
    super.key, required this.icon, required this.title,
    this.textSize = 18,this.iconSize =30,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(onPressed: (){},
            icon: Icon(icon,
              color: kWhiteColor,size: iconSize)),
        Text(title,style: TextStyle(fontSize: textSize,),)
      ],
    );
  }
}
