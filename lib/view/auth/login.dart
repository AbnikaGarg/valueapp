import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/button.dart';
import '../../components/user_input.dart';
import '../../controller/authController.dart';
import '../../theme/apptheme.dart';

class SignInScreen extends StatelessWidget {
  final _unfocusNode = FocusNode();
  final RegExp emailValidatorRegExp = RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

  final LoginformKey2 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).viewPadding.top;
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
          //  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          //   resizeToAvoidBottomInset: false,
          body: GetBuilder<AuthController>(builder: (_controller) {
        return Form(
          key: LoginformKey2,
          autovalidateMode: _controller.autoValidate
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(top: height, bottom: 20),
                width: double.infinity,
                decoration: new BoxDecoration(
                  color: AppTheme.backGround2,
                  borderRadius: BorderRadius.vertical(
                      bottom: Radius.elliptical(
                          MediaQuery.of(context).size.width, 80.0)),
                ),
                child: SvgPicture.asset(
                  fit: BoxFit.contain,
                  "assets/images/scene.svg",
                ),
              ),
              const SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // Text(
                        //   "Gurjot Shan",
                        //   style: Theme.of(context).textTheme.headlineSmall,
                        // ),
                        Text(
                          "Welcome to Value Rewards",
                          style: GoogleFonts.inter(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: AppTheme.bodyTextColor),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text("Sign-up with your phone number",
                        style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppTheme.lightHintTextColor),),
                    const SizedBox(height: 30),
                    Text(
                      "Phone Number",
                      style:
                          Theme.of(context).textTheme.headlineMedium!.copyWith(
                                fontSize: 13,
                              ),
                    ),
                    const SizedBox(height: 8),
                    MyTextField(
                        icon: Icon(CupertinoIcons.phone),
                        textEditingController: _controller.username,
                        validation: (value) {
                          if (value == null || value.isEmpty) {
                            return "Phone Number is required";
                            // } else if (!emailValidatorRegExp
                            //     .hasMatch(value.trim())) {
                            //   return "Enter Valid Email";
                            // }
                          }
                          return null;
                        },
                        hintText: "Enter Phone Number",
                        color: const Color(0xff585A60)),
                    const SizedBox(height: 12),
                    Padding(
                      padding: EdgeInsets.only(top: 30, left: 20, right: 20),
                      child: RoundedButton(
                        ontap: () {
                          // Get.to(DashboardScreen());
                          if (LoginformKey2.currentState!.validate()) {
                            _controller.login();
                          } else {
                            _controller.autoValidateClick();
                          }
                        },
                        textcolor: const Color(0xFFFFFFFF),
                        title: "Login",
                        fontweigth: FontWeight.w600,
                        fontsize: 18,
                        height: 50,
                        color: AppTheme.lightPrimaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Expanded(
              //       child: Container(
              //         height: .5,
              //         color: AppTheme.newLightColor2,
              //       ),
              //     ),
              //     Text(
              //       "   or continue with   ",
              //       style: Theme.of(context).textTheme.labelSmall,
              //     ),
              //     Expanded(
              //       child: Container(
              //         height: .5,
              //         color: AppTheme.newLightColor2,
              //       ),
              //     ),
              //   ],
              // ),

              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Didn't have an account? ",
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .copyWith(color: AppTheme.whiteBackgroundColor),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Signup",
                      style: GoogleFonts.inter(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                        color: AppTheme.whiteBackgroundColor,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        );
      })),
    );
  }
}
