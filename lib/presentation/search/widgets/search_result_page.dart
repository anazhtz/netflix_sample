import 'package:flutter/cupertino.dart';
import 'package:netflix_sample/core/contants/contanss.dart';
import 'package:netflix_sample/presentation/search/widgets/titel.dart';

const imageUrl =  "https://media.themoviedb.org/t/p/w300_and_h450_bestv2/lzZpWEaqzP0qVA5nkCc5ASbNcSy.jpg";

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTextTitle(title: "Movies & Tv"),
        kHieght,
        Expanded(child: GridView.count(
          shrinkWrap: true,
            crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 1 / 1.6,  // image nde hight kuttaan
          children: List.generate(20, (index){
            return const MainCard();
          } ),
        )
        ),
      ],
    );
  }
}
class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image:const DecorationImage(
            image: NetworkImage(imageUrl),
        fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(7)
      ),
    );
  }
}
