import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nature_discovery/components/textfield_password_widget.dart';
import 'package:nature_discovery/components/textfield_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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

                const TextfieldWidget(label: 'Nome', icon: CupertinoIcons.person),
                SizedBox(height: 16.h),
                const TextfieldWidget(label: "Cognome", icon: CupertinoIcons.person),
                SizedBox(height: 16.h),
                const TextfieldWidget(label: "E-mail", icon: CupertinoIcons.mail),
                SizedBox(height: 16.h),
                const TextfieldPasswordWidget(label: "Password"),
                SizedBox(height: 16.h),
                const TextfieldPasswordWidget(label: "Conferma password"),

                SizedBox(height: 16.h),

                _buildButton("Registrati", () {})
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTitle() => Text("Registrati", style: TextStyle(fontSize: 16.sp));

  Widget _buildHeader() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("Crea il tuo profilo", style: _textStyle(22.sp, FontWeight.bold)),
      Text("Creando il tuo profilo potrai ...", style: _textStyle(14.sp))
    ],
  );

  Widget _buildButton(String text, VoidCallback onPressed) => SizedBox(
    width: double.infinity,
    child: FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        //backgroundColor: const Color(0xFF6Bcc71),
        backgroundColor: const Color(0xFF106635),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.r)),
      ),
      child: Text(text, style: _textStyle(14.sp, FontWeight.bold, const Color(0xFFffffff)),),
    ),
  );

  TextStyle _textStyle(double size, [FontWeight fontWeight = FontWeight.normal, Color? color]) => TextStyle(
    //color: color ?? const Color(0xFFDCE7CC),
      color: color ?? const Color(0xFF1a1e18),
      fontSize: size,
      fontWeight: fontWeight
  );
}
