
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigationWidgets extends StatelessWidget {
  const BottomNavigationWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(   //bottom nav click change geaster
        valueListenable: indexChangeNotifier, builder: (context,int newIndex ,_){    //bottom nav click change geaster
      return BottomNavigationBar(
          currentIndex: newIndex,    //bottom nav click change geaster
          onTap: (index){
            indexChangeNotifier.value=index;     //bottom nav click change geaster
          },
          elevation: 0,
          type: BottomNavigationBarType.fixed,  //bottom nav colors background
          backgroundColor: Colors.black,   //bottom nav colors background
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          selectedIconTheme:const IconThemeData(
              color: Colors.red
          ),
          unselectedIconTheme:const IconThemeData(
              color: Colors.grey
          ),
          items:const [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.collections),label: 'New & Hot'),
            BottomNavigationBarItem(icon: Icon(Icons.emoji_emotions),label: 'Fast Laugh'),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.download),label: 'Downloads'),
          ]
      );
    });
  }
}
