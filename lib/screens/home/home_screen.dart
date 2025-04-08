import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'components/favorites_section.dart';
import 'components/landscape_slider_widget.dart';
import 'components/regions_section.dart';
import 'components/suggested_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _name = '';

  @override
  void initState() {
    super.initState();
    _loadName();
  }

  Future<void> _loadName() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _name = prefs.getString('name') ?? '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color(0xFF172C27),
      backgroundColor: const Color(0xFFf3f2f7),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: _buildTitle(),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LandscapeSliderWidget(),

              // SEZIONE DEI SUGGERITI
              SuggestedSection(),

              // SEZIONE REGIONI
              RegionsSection(),

              // SEZIONE DEI PREFERITI
              FavoritesSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTitle() => Text("Ciao, $_name", style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold));
}

