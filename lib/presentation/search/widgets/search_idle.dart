import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_sample/core/colors/colors.dart';
import 'package:netflix_sample/presentation/search/widgets/titel.dart';
import '../../../core/contants/contanss.dart';

final imageUrl =
    "https://media.themoviedb.org/t/p/w250_and_h141_face/1RWLMyC9KcFfcaoViMiJGSSZzzr.jpg";

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTextTitle(title: 'Top Searches',),
        kHieght,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (cnt, index) => TopSearchItems(),
              separatorBuilder: (cnt, index) => kHieght20,
              itemCount: 10),
        )
      ],
    );
  }
}

class TopSearchItems extends StatelessWidget {
  const TopSearchItems({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.35,
          height: 60,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill, image: NetworkImage(imageUrl))),
        ),
        Expanded(
          child: Text(
            "Captian America",
            style: GoogleFonts.montserrat(
                fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        CircleAvatar(
          backgroundColor: kWhiteColor,
          radius: 25,
          child: CircleAvatar(
            backgroundColor: kButtonColorBlack,
            radius: 23,
            child: Center(
                child: Icon(
              CupertinoIcons.play_fill,
              color: kWhiteColor,
            )),
          ),
        )
      ],
    );
  }
}
