import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_sample/core/colors/colors.dart';
import 'package:netflix_sample/core/contants/contanss.dart';
import 'package:netflix_sample/presentation/home/number_card.dart';
import 'package:netflix_sample/presentation/widget/main_card.dart';
import 'package:netflix_sample/presentation/widget/main_title.dart';

import '../search/widgets/search_result_page.dart';
import '../widget/main_title_card.dart';
import 'backgrounf_card.dart';
import 'custom_widget.dart';
import 'number_tile_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(valueListenable:scrollNotifier, builder: (BuildContext context,index,_){
        return NotificationListener<UserScrollNotification>(
          onNotification: (notification){
            final ScrollDirection direction = notification.direction;
            if(direction==ScrollDirection.reverse){
              scrollNotifier.value=false;
            }else if(
            direction==ScrollDirection.forward){
              scrollNotifier.value=true;
            }
            return true;
          },
          child: Stack(
            children: [
              ListView(
                children: [
                  BackGroundCard(),
                  MainTileCard(title: 'Reasled in the past year',),
                  kHieght,
                  MainTileCard(title: 'Trending Now',),
                  kHieght,
                  NumberTitleCard(),
                  kHieght,
                  MainTileCard(title: 'Tense Dramas',),
                  kHieght,
                  MainTileCard(title: 'South Indian Cinema',),
                  kHieght,
                ],
              ),
             scrollNotifier.value== true ?
             AnimatedContainer(
               duration: Duration(milliseconds: 2000),
                width: double.infinity,
                height: 100,
               decoration: BoxDecoration(
                   gradient: LinearGradient(
                       colors: [
                         Colors.black,
                         Colors.black.withOpacity(0.0),
                       ],
                       begin: Alignment.topCenter,
                       end: Alignment.bottomCenter
                   ),
               ),

               child: Column(
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Row(
                       children: [
                         Image.network("https://static.vecteezy.com/system/resour"
                             "ces/previews/017/396/804/original/netflix-mobile-application-logo-free-png.png",
                           width: 60,height: 60,),
                         Spacer(),
                         const   Icon(Icons.cast,color: Colors.white,size: 30,),
                         kWidth,
                         Container(
                           width: 30,
                           height: 30,
                           color: Colors.blue,),
                         kWidth,
                       ],
                     ),
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       Text("TV Shows",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.bold),),
                       Text("Movies",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.bold),),
                       Text("Categories",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.bold),)
                     ],
                   )
                 ],
               ),
              ):kHieght,
            ],
          )
        );
      })
    );
  }
}





