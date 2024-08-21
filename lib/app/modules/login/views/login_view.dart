import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:test_ads/app/routes/app_pages.dart';
import 'package:test_ads/core/theme/app_colors.dart';
import 'package:test_ads/core/theme/app_fonts.dart';
import 'package:test_ads/core/widget/custom_textfield.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        appBar: AppBar(
          backgroundColor: whiteColor,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome Back!",
                style: AppFonts.overpass(
                    fontSize: 24,
                    color: fontBlueColor,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                hintText: "Username",
                icon: Icons.person_outline_outlined,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextField(
                hintText: "Password",
                icon: Icons.lock,
                isSuffixIcon: true,
                suffixIcon: InkWell(
                  onTap: () {
                    Get.toNamed(Routes.VERIFY_OTP);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Forgot?",
                        style:
                            AppFonts.overpass(fontSize: 14, color: Colors.grey),
                        textAlign: TextAlign.end,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(
                  top: 50,
                ),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: fontBlueColor,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      "SIGN IN",
                      style: AppFonts.overpass(
                          fontSize: 16,
                          color: whiteColor,
                          fontWeight: FontWeight.w700),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t have an account?",
                      style: AppFonts.overpass(
                          fontSize: 14,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400),
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.REGISTER);
                      },
                      child: Text(
                        " Sign Up",
                        style: AppFonts.overpass(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
