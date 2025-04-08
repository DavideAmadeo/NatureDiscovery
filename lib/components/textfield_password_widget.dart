import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextfieldPasswordWidget extends StatefulWidget {
  const TextfieldPasswordWidget({super.key, required this.label});

  final String label;

  @override
  State<TextfieldPasswordWidget> createState() => _TextfieldPasswordWidgetState();
}

class _TextfieldPasswordWidgetState extends State<TextfieldPasswordWidget> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isObscure,
      //cursorColor: const Color(0xFF6BCC71),
      cursorColor: const Color(0xFF1a1e18),
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            //borderSide: const BorderSide(color: Color(0xFF6BCC71))
            borderSide: const BorderSide(color: Color(0xFF1a1e18))
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(color: const Color(0xFF1a1e18), width: 2.0.w)
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        labelText: widget.label,
        labelStyle: TextStyle(color: const Color(0xFF1a1e18), fontSize: 14.sp),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              if(isObscure) {
                isObscure = !isObscure;
              } else {
                isObscure = !isObscure;
              }
            });
          },
          icon: isObscure ? const Icon(CupertinoIcons.eye) : const Icon(CupertinoIcons.eye_slash),
          //color: const Color(0xFFDCE7CC),
          color: const Color(0xFF1a1e18),
        ),
      ),
      style: const TextStyle(color: Color(0xFF1a1e18)),
    );
  }
}
