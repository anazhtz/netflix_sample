import 'package:flutter/cupertino.dart';

class SearchTextTitle extends StatelessWidget {
  final String title;
  const SearchTextTitle({
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Text(title,
      style:const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    );
  }
}