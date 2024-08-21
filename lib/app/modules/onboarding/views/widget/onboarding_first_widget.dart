import 'package:flutter/material.dart';

import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/theme/app_fonts.dart';

class OnBoardingFirst extends StatelessWidget {
  const OnBoardingFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
              height: 200, child: Image.asset("assets/images/onboarding1.png")),
          const SizedBox(
            height: 50,
          ),
          Text(
            "View and buy\nMedicine online",
            textAlign: TextAlign.center,
            style: AppFonts.overpass(
                fontSize: 24,
                color: fontBlueColor,
                fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              "Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer.",
              textAlign: TextAlign.center,
              style: AppFonts.overpass(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey),
            ),
          )
        ],
      ),
    ));
  }
}
