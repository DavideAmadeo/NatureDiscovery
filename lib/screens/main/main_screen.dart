import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nature_discovery/screens/explore/explore_screen.dart';
import 'package:nature_discovery/screens/favorites/favorites_screen.dart';
import 'package:nature_discovery/screens/home/home_screen.dart';
import 'package:nature_discovery/screens/profile/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentPageIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: <Widget>[
          const HomeScreen(),
          const ExploreScreen(),
          const FavoritesScreen(),
          const ProfileScreen()
        ][currentPageIndex],
        bottomNavigationBar: NavigationBar(
          selectedIndex: currentPageIndex,
          onDestinationSelected: _onTabTapped,
          destinations: [
            Padding(
              padding: EdgeInsets.only(top: 16.0.h),
              child: const NavigationDestination(
                selectedIcon: Icon(CupertinoIcons.house_fill),
                icon: Icon(CupertinoIcons.home),
                label: 'Home',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16.0.h),
              child: const NavigationDestination(
                selectedIcon: Icon(Icons.explore),
                icon: Icon(Icons.explore_outlined),
                label: 'Esplora',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16.0.h),
              child: const NavigationDestination(
                selectedIcon: Icon(CupertinoIcons.bookmark_fill),
                icon: Icon(CupertinoIcons.bookmark),
                label: 'Preferiti',
              ),
            ),
            /*Padding(
            padding: EdgeInsets.only(top: 16.0.h),
            child: const NavigationDestination(
              selectedIcon: Icon(CupertinoIcons.person_fill),
              icon: Icon(CupertinoIcons.person),
              label: 'Profilo',
            ),
          ),*/
          ],
        )
    );
  }
}
