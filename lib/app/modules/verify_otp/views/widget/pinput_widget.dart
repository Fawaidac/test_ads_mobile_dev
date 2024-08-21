import 'package:flutter/material.dart';
import 'package:test_ads/core/theme/app_colors.dart';
import 'package:test_ads/core/theme/app_fonts.dart';

class PinInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(4, (index) {
        return SizedBox(
          width: 50,
          child: TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hintText: '0',
              hintStyle: AppFonts.overpass(fontSize: 24, color: Colors.grey),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
            ),
            keyboardType: TextInputType.number,
            style: AppFonts.overpass(fontSize: 24, color: blackColor),
          ),
        );
      }),
    );
  }
}
