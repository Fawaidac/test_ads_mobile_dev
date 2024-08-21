import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:test_ads/app/modules/verify_otp/views/widget/pinput_widget.dart';
import 'package:test_ads/core/theme/app_colors.dart';
import 'package:test_ads/core/theme/app_fonts.dart';

import '../controllers/verify_otp_controller.dart';

class VerifyOtpView extends GetView<VerifyOtpController> {
  const VerifyOtpView({Key? key}) : super(key: key);
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    "Create Your Account",
                    style: AppFonts.overpass(
                        fontSize: 24,
                        color: fontBlueColor,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "We just send you a verification code via phone\n+62 821 39 488 953",
                    style: AppFonts.overpass(
                        fontSize: 14,
                        color: fontBlueColor.withOpacity(0.2),
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              PinInputField(),
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
                      "CREATE ACCOUNT",
                      style: AppFonts.overpass(
                          fontSize: 16,
                          color: whiteColor,
                          fontWeight: FontWeight.w700),
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "The verify code will expire in 00:59",
                style: AppFonts.overpass(
                    fontSize: 14,
                    color: fontBlueColor.withOpacity(0.2),
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Resend Code",
                style: AppFonts.overpass(
                    fontSize: 14,
                    color: greenColor,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
        ));
  }
}
