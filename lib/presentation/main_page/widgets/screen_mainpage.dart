import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_sample/core/colors/colors.dart';
import 'package:netflix_sample/presentation/downloads/widgets/screen_downloads.dart';
import 'package:netflix_sample/presentation/fast_laugh/fast_and_laugh.dart';
import 'package:netflix_sample/presentation/home/screen_home.dart';
import 'package:netflix_sample/presentation/main_page/widgets/bottom_nav.dart';
import 'package:netflix_sample/presentation/new_and_hot/new_hot_screen.dart';
import 'package:netflix_sample/presentation/search/search_screen.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});

  final _pages = [
    ScreenHome(),
    ScreenNewAndHot(),
    ScreenFastAndLaugh(),
    ScreenSearch(),
    ScreenDownloads()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
            valueListenable: indexChangeNotifier,
            builder: (context, int index, _) {
              return _pages[index];
            }),
      ),
      bottomNavigationBar: BottomNavigationWidgets(),
    );
  }
}
