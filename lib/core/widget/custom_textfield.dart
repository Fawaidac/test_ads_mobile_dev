import 'package:flutter/material.dart';
import 'package:test_ads/core/theme/app_colors.dart';
import 'package:test_ads/core/theme/app_fonts.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final bool isSuffixIcon;
  final Widget? suffixIcon;
  final TextEditingController? controller;

  CustomTextField({
    Key? key,
    required this.hintText,
    required this.icon,
    this.isSuffixIcon = false,
    this.suffixIcon,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: fontBlueColor),
        suffixIcon: isSuffixIcon ? suffixIcon : null,
        hintText: hintText,
        hintStyle: AppFonts.overpass(fontSize: 14, color: Colors.grey),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }
}
