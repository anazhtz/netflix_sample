import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_sample/core/colors/colors.dart';
import 'package:netflix_sample/presentation/main_page/widgets/screen_mainpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.transparent),
        scaffoldBackgroundColor: backgroundColor,
        textTheme: TextTheme(
            bodyLarge: TextStyle(color: Colors.white,),
        bodyMedium: TextStyle(color: Colors.white)
        ),
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue).
          copyWith(background: Colors.black),

      ),
      home:  ScreenMainPage()
    );
  }
}
