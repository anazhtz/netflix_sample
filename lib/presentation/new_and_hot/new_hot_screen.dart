
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_sample/core/colors/colors.dart';
import 'package:netflix_sample/presentation/home/custom_widget.dart';
import 'package:netflix_sample/presentation/new_and_hot/widgets/everyone_watching_widget.dart';
import 'package:netflix_sample/presentation/new_and_hot/widgets/video_widgets.dart';
import '../../core/contants/contanss.dart';
import 'widgets/coming_soon_widget.dart';
import '../widget/app_bar.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(90),
            child: AppBar(
              title: Text("New & Hot",
                style: GoogleFonts.montserrat(
                    fontSize: 30,fontWeight: FontWeight.bold
                ),
              ),
              actions: [
                const   Icon(Icons.cast,color: Colors.white,size: 30,),
                kWidth,
                Container(
                  width: 30,
                  height: 30,
                  color: Colors.blue,),
                kWidth,
              ],
              bottom: TabBar(
                labelColor: kButtonColorBlack,
                  isScrollable: true,
                  labelStyle: GoogleFonts.montserrat(
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),
                  unselectedLabelColor: kWhiteColor,
                  indicator: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: kRadius30,
                  ),
                  tabs: [
                Tab(
                  text: "🍿 Coming Soon",
                ),
                Tab(text: "👀 Everyone's Watching",)
              ]
              ),
            ),
        ),
        body:TabBarView(children: [
        _buildComingSoon(),
          _buildEveryOnesWatching(),
        ]
        )
      ),
    );
  }
  Widget _buildComingSoon() {
    return  ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index )=>const ComingSoonWidget(),);
  }
  Widget _buildEveryOnesWatching() {
    return ListView.builder(
      itemCount: 10,
    itemBuilder: (BuildContext context , index)=> Eveyone_watching_widget());
  }
}
