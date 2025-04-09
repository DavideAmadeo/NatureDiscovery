import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nature_discovery/screens/explore/components/explore_tabbar_view_widget.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        //backgroundColor: const Color(0xFF172C27),
          backgroundColor: const Color(0xFFf3f2f7),
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text(
                'NATURE DISCOVERY',
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                )
            ),
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                Tab(text: 'Tutti', icon: Icon(Icons.explore_outlined, color: const Color(0xFF1a1e18), size: 24.sp)),
                Tab(text: 'Montagne', icon: Icon(Icons.landscape_outlined, color: const Color(0xFF1a1e18), size: 24.sp)),
                Tab(text: 'Laghi', icon: Icon(Icons.water, color: const Color(0xFF1a1e18), size: 24.sp)),
                Tab(text: 'Mare', icon: Icon(Icons.water, color: const Color(0xFF1a1e18), size: 24.sp)),
                Tab(text: 'Foreste', icon: Icon(Icons.forest_outlined, color: const Color(0xFF1a1e18), size: 24.sp)),
                Tab(text: 'Cascate', icon: Icon(Icons.water, color: const Color(0xFF1a1e18), size: 24.sp)),
              ],
            ),
          ),
          body: const ExploreTabBarViewWidget()
      ),
    );
  }
}
