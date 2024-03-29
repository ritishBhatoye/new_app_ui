import 'package:flutter/material.dart';
import 'package:new_app_ui/screens/discover_screen.dart';
import 'package:new_app_ui/screens/home_screen.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black.withAlpha(100),
        currentIndex: index,
        items: [
          BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(left: 50),
                child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, HomeScreen.routeName);
                    },
                    icon: const Icon(Icons.home)),
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, DiscoverScreen.routeName);
                  },
                  icon: const Icon(Icons.search)),
              label: 'Search'),
          BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(right: 50),
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.person)),
              ),
              label: 'Profile'),
        ]);
  }
}
