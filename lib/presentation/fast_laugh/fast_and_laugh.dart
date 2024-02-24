import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_sample/presentation/fast_laugh/widget/video_list_item.dart';

class ScreenFastAndLaugh extends StatelessWidget {
  const ScreenFastAndLaugh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: PageView(
        scrollDirection: Axis.vertical,   // page nde scrolling direction
        children: List.generate(10, (index){
          return VideoListItem(index: index,);
        })
      )));
  }
}
