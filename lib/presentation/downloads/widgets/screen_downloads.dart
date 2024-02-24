import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_sample/core/colors/colors.dart';
import 'package:netflix_sample/core/contants/contanss.dart';
import 'package:netflix_sample/presentation/widget/app_bar.dart';

class ScreenDownloads extends StatelessWidget {
   ScreenDownloads({super.key});

   final _widgetsList = [
     kWidth,
     const _smartDownloads(),
     Section2(),
     const  Section3(),
   ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            title: "Downloads",
          )),
      body: ListView.separated(
        padding: EdgeInsets.all(10),
        itemBuilder: (ctx, index)=>_widgetsList[index],
        separatorBuilder: (ctx, index)=>SizedBox(height: 25,),
        itemCount: _widgetsList.length,)
    );
  }
}

class Section2 extends StatelessWidget {
   Section2({super.key});
  final List imageList = [
    "https://media.themoviedb.org/t/p/w300_and_h450_bestv2/lzZpWEaqzP0qVA5nkCc5ASbNcSy.jpg",
    "https://media.themoviedb.org/t/p/w300_and_h450_bestv2/yRt7MGBElkLQOYRvLTT1b3B1rcp.jpg",
    "https://media.themoviedb.org/t/p/w300_and_h450_bestv2/k2qTooPlHffgNABNWxeJdGMglPK.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Text("Introducing Downloads For You",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: kWhiteColor,fontSize: 24,
              fontWeight: FontWeight.bold),),
        kHieght,
        Text("We will download a personalised Selection of\nmovies and shows for you,so there's\nalways something to watch on your\ndevice",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey,fontSize: 16),
        ),
        SizedBox(
          width: size.width,
          height: size.width,

          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: size.width *0.4,
                backgroundColor: Colors.grey.withOpacity(.5),
              ),
              DownloadsImageWidget(
                imageList: imageList[0],
                margin: EdgeInsets.only(left: 170,top: 50),
                angle: 25,
                size: Size(size.width * 0.35, size.width * 0.55),
              ),
              DownloadsImageWidget(
                imageList: imageList[1],
                margin: EdgeInsets.only(right: 170,top: 50),
                angle: -25,
                size: Size(size.width * 0.35, size.width * 0.55),
              ),
              DownloadsImageWidget(
                radius: 8,
                imageList: imageList[2],
                margin: EdgeInsets.only(bottom: 30,top: 50),
                size: Size(size.width * 0.45, size.width * 0.65),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            color: kButtonColorBlue,
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            child:const Padding(
              padding:  EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Set up',
                style: TextStyle(
                    color: kWhiteColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        kHieght,
        MaterialButton(
          color: kButtonColorWhite,
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child:const Padding(
            padding:  EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'See what you can download',
              style: TextStyle(
                  color: kButtonColorBlack,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}


class _smartDownloads extends StatelessWidget {
  const _smartDownloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kWidth,
        Icon(Icons.settings, color: kWhiteColor),
        kWidth,
        Text("Smart Downloads"),
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    super.key,
    required this.imageList,
     this.angle = 0,
    required this.margin, required this.size,
    this.radius=10,
  });
  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size ;
  final double radius;

  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: margin,
      child: Transform.rotate(   //container image nde angle change
        angle: angle *pi/180,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(

            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                    image: NetworkImage(imageList))),
          ),
        ),
      ),
    );
  }
}
