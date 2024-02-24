import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../../core/contants/contanss.dart';

class Video_widget extends StatelessWidget {
  const Video_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,height: 200,
          child: Image.network(NewAndHotTempImage,fit: BoxFit.cover,),
        ),
        Positioned(
          bottom: 5,
          right: 10,
          child: CircleAvatar(radius: 22,
              backgroundColor: Colors.black.withOpacity(0.5),
              child: IconButton(onPressed: (){},
                  icon: Icon(Icons.volume_off,
                    color: kWhiteColor,
                    size: 25 ,))),
        ),
      ],
    );
  }
}