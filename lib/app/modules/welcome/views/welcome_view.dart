import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:test_ads/core/theme/app_fonts.dart';

import '../../../../core/theme/app_colors.dart';
import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                    height: 258,
                    child: Image.asset("assets/images/mask_login.png")),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Wellcome to",
                        style: AppFonts.overpass(
                            fontSize: 24,
                            color: fontBlueColor,
                            fontWeight: FontWeight.w700),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 8),
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: yellowColor,
                            borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          "MedHub",
                          style: AppFonts.overpass(
                              fontSize: 24,
                              color: fontBlueColor,
                              fontWeight: FontWeight.w700),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "Do you want some help with your\nhealth to get better life?",
                  textAlign: TextAlign.center,
                  style: AppFonts.overpass(
                      fontSize: 16,
                      color: Colors.grey,
                      fontWeight: FontWeight.w300),
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
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
                        "SIGN UP WITH EMAIL",
                        style: AppFonts.overpass(
                            fontSize: 16,
                            color: whiteColor,
                            fontWeight: FontWeight.w700),
                      )),
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  margin:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side:
                                const BorderSide(color: Colors.grey, width: 1)),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/facebook.png",
                            height: 30,
                          ),
                          Text(
                            "CONTINUE WITH FACEBOOK",
                            style: AppFonts.overpass(
                                fontSize: 16,
                                color: fontBlueColor,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      )),
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side:
                                const BorderSide(color: Colors.grey, width: 1)),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/google.png",
                            height: 30,
                          ),
                          Text(
                            "CONTINUE WITH GMAIL",
                            style: AppFonts.overpass(
                                fontSize: 16,
                                color: fontBlueColor,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      )),
                ),
                Text(
                  "LOGIN",
                  style: AppFonts.overpass(
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
        ));
  }
}
