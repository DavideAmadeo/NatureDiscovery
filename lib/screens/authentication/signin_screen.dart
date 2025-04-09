import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nature_discovery/components/textfield_password_widget.dart';
import 'package:nature_discovery/components/textfield_widget.dart';
import 'package:nature_discovery/screens/authentication/signup_screen.dart';
import '../main/main_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color(0xFF172C27),
        backgroundColor: const Color(0xFFf3f2f7),
        appBar: AppBar(title: _buildTitle()),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 16.0.w, right: 16.0.w, top: 8.0.h, bottom: 40.0.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildHeader(),

                  SizedBox(height: 24.h),

                  const TextfieldWidget(label: "E-mail", icon: CupertinoIcons.mail),
                  SizedBox(height: 16.h),
                  const TextfieldPasswordWidget(label: "Password"),

                  SizedBox(height: 16.h),

                  _buildButton("Accedi", () => _navigateTo(context, const MainScreen())),
                  _buildForgotPassword(),

                  SizedBox(height: 24.h),

                  _buildDivider(),

                  SizedBox(height: 16.h),

                  _buildSocialButton("Accedi con Apple", "assets/logos/logo_apple.png"),
                  SizedBox(height: 8.h),
                  _buildSocialButton("Accedi con Google", "assets/logos/logo_google.png"),

                  SizedBox(height: 24.h),

                  _buildSignUpSection(context)
                ],
              ),
            ),
          ),
        )
    );
  }

  Widget _buildTitle() => Text("Accedi", style: TextStyle(fontSize: 16.sp));

  Widget _buildHeader() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("Accedi al tuo account", style: _textStyle(22.sp, FontWeight.bold)),
      Text("Scegli il metodo che preferisci tra i seguenti:", style: _textStyle(14.sp)),
    ],
  );

  Widget _buildButton(String text, VoidCallback onPressed) => SizedBox(
    width: double.infinity,
    child: FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        //backgroundColor: const Color(0XFF6BCC71),
        backgroundColor: const Color(0xFF106635),
        //foregroundColor: const Color(0xFF061814),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.r)),
      ),
      child: Text(text, style: _textStyle(14.sp, FontWeight.bold, const Color(0xFFffffff))),
    ),
  );

  Widget _buildForgotPassword() => Align(
    alignment: Alignment.center,
    child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(30.r),
        child: Text("Password dimenticata?", style: _textStyle(14.sp, FontWeight.bold, const Color(0xFF106635)))
    ),
  );

  Widget _buildDivider() => Align(
    alignment: Alignment.center,
    child: Text("------------ Oppure ------------", style: _textStyle(14.sp)),
  );

  Widget _buildSocialButton(String text, String assetPath) => SizedBox(
    width: double.infinity,
    child: OutlinedButton.icon(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        //side: const BorderSide(color: Color(0XFF6BCC71)),
        side: const BorderSide(color: Color(0xFF1a1e18)),
      ).copyWith(overlayColor: MaterialStateProperty.all(const Color(0xFFe4e3e8))),
      icon: Image.asset(assetPath, height: 20.h, width: 20.w,),
      label: Text(text, style: _textStyle(14.sp, FontWeight.bold)),
    ),
  );

  Widget _buildSignUpSection(BuildContext context) => Align(
    alignment: Alignment.bottomCenter,
    child: Column(
      children: [
        Text("Non hai un account?", style: _textStyle(14.sp)),
        InkWell(
          onTap: () => _navigateTo(context, const SignUpScreen()),
          borderRadius: BorderRadius.circular(30.r),
          child: Text("Registrati", style: _textStyle(14.sp, FontWeight.bold, const Color(0xFF106635))),
        ),
      ],
    ),
  );

  TextStyle _textStyle(double size, [FontWeight fontWeight = FontWeight.normal, Color? color]) => TextStyle(
    //color: color ?? const Color(0xFFDCE7CC),
    color: color ?? const Color(0xFF1a1e18),
    fontSize: size,
    fontWeight: fontWeight,
  );

  void _navigateTo(BuildContext context, Widget screen) => Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => screen),
  );
}
