import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_ads/core/theme/app_colors.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: whiteColor,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              'assets/images/mark.png',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.cover,
              width: 102,
            ),
          ),
        ],
      ),
    );
  }
}
