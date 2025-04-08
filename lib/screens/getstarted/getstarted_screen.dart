import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nature_discovery/screens/getstarted/getstarted_name_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../main/main_screen.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
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
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset("assets/images/winter.jpg", fit: BoxFit.cover),
            Padding(
              padding: EdgeInsets.only(left: 16.0.w, right: 16.0.w, top: 80.0.h, bottom: 60.0.h),
              child: Column(
                children: [
                  _buildTitle(),

                  SizedBox(height: 18.h),

                  _buildSubtitle(),

                  const Spacer(),

                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {
                        if (_name == '') {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const GetstartedNameScreen()));
                        } else {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const MainScreen()));
                        }
                      },
                      style: OutlinedButton.styleFrom(
                        backgroundColor: const Color(0xFF1a1e18),
                        foregroundColor: const Color(0xFFffffff),
                      ),
                      child: Text(
                        'Iniziamo',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),

                  /*_buildButton(
                  text: "Accedi",
                  onPressed: () => _navigateTo(context, const SignInScreen()),
                  //backgroundColor: const Color(0xFF061814),
                  backgroundColor: const Color(0xFF1a1e18),
                  //foregroundColor: const Color(0XFFDDE7CC),
                  foregroundColor: const Color(0xFFffffff)
                ),

                _buildButton(
                  text: "Registrati",
                  onPressed: () => _navigateTo(context, const SignUpScreen()),
                  backgroundColor: Colors.white30,
                  //foregroundColor: const Color(0xFF061814),
                  foregroundColor: const Color(0xFF1a1e18),
                  //borderColor: const Color(0xFF061814),
                  borderColor: const Color(0xFF1a1e18),
                ),*/
                ],
              ),
            )
          ],
        )
    );
  }

  Widget _buildTitle() => Text(
    "Nature Discovery",
    textAlign: TextAlign.center,
    style: TextStyle(
      //color: const Color(0xFF061814),
        color: const Color(0xFF1a1e18),
        fontSize: 36.sp,
        fontWeight: FontWeight.bold
    ),
  );

  Widget _buildSubtitle() => Text(
    "Esplora la bellezza della natura italiana. Lasciati ispirare e trova la tua prossima avventura immerso nella natura",
    textAlign: TextAlign.center,
    style: TextStyle(
      //color: const Color(0xFF061814),
      color: const Color(0xFF1a1e18),
      fontSize: 14.sp,
    ),
  );

  Widget _buildButton({
    required String text,
    required VoidCallback onPressed,
    required Color backgroundColor,
    required Color foregroundColor,
    Color? borderColor,
  }) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          side: borderColor != null ? BorderSide(color: borderColor, width: 2) : BorderSide.none,
        ),
        child: Text(
          text,
          style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }

  void _navigateTo(BuildContext context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }
}
