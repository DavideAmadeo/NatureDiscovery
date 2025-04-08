import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nature_discovery/screens/main/main_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GetstartedNameScreen extends StatefulWidget {
  const GetstartedNameScreen({super.key});

  @override
  State<GetstartedNameScreen> createState() => _GetstartedNameScreenState();
}

class _GetstartedNameScreenState extends State<GetstartedNameScreen> {
  final TextEditingController _textInputController = TextEditingController();

  Future<void> _saveName() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('name', _textInputController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset("assets/images/winter.jpg", fit: BoxFit.cover),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 80.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Inserisci il tuo nome', style: TextStyle(fontSize: 28.sp)),

                  SizedBox(height: 16.h),

                  TextField(
                    controller: _textInputController,
                    cursorColor: const Color(0xFF1a1e18),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide: const BorderSide(color: Color(0xFF1a1e18))
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.3),
                          borderSide: BorderSide(color: const Color(0xFF1a1e18), width: 2.0.w)
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 8.0.h),
                      labelText: 'Nome',
                      labelStyle: TextStyle(color: const Color(0xFF1a1e18), fontSize: 14.sp),
                    ),
                    style: const TextStyle(color: Color(0xFF1a1e18)),
                  ),

                  SizedBox(height: 16.h),

                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {
                        _saveName();
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const MainScreen()));
                      },
                      style: OutlinedButton.styleFrom(
                        backgroundColor: const Color(0xFF1a1e18),
                        foregroundColor: const Color(0xFFffffff),
                      ),
                      child: Text(
                        'Avanti',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        )
    );
  }
}
