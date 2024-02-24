import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class MainTitle extends StatelessWidget {
  final String title;
  const MainTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title,
      style: GoogleFonts.montserrat(
          fontSize: 22,fontWeight: FontWeight.bold
      ),
    );
  }
}
