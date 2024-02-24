import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_sample/core/colors/colors.dart';
import 'package:netflix_sample/core/contants/contanss.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({super.key, required this.index });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //left side
                CircleAvatar(radius: 30,
                    backgroundColor: Colors.black.withOpacity(0.5),
                    child: IconButton(onPressed: (){},
                        icon: Icon(Icons.volume_off,
                          color: kWhiteColor,
                          size: 30 ,))),

                //right side
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage( "https://media.themoviedb.org/t/p/w300_and_h450_bestv2/k2qTooPlHffgNABNWxeJdGMglPK.jpg"),
                      ),
                    ),
                    kHieght,
                    VideoActionWidget(icon: Icons.emoji_emotions, title: 'LOL'),
                    kHieght,
                    VideoActionWidget(icon: Icons.add, title: 'My List'),
                    kHieght,
                    VideoActionWidget(icon: Icons.share, title: 'Share'),
                    kHieght,
                    VideoActionWidget(icon: Icons.play_arrow, title: 'Play'),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActionWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoActionWidget({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon,color: kWhiteColor,size: 50,),
        Text(title,style: TextStyle(color: kWhiteColor,fontSize: 16),)
      ],
    );
  }
}

