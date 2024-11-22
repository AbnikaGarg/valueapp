import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valueapp/utils/routes.dart';

import '../components/base.dart';
import '../components/shared_pref.dart';


class AuthController extends GetxController {
  final username = TextEditingController();
  final password = TextEditingController();
  final authRepo = null;
  bool autoValidate = false;
  void autoValidateClick() {
    autoValidate = true;
    update();
  }

  login() async {
    DialogHelper.showLoading();
     Timer(const Duration(seconds: 2), () {
       DialogHelper.hideLoading();
     Get.offAndToNamed(Routes.home);
     });
   
    
    // authRepo.apiLoginService(username.text, password.text).then((value) {
    //   DialogHelper.hideLoading();
    //   switch (value.statusCode) {
    //     case 200:
    //       final body = json.decode(value.body);
    //       print(body);
    //       if (body["errorCode"] == 1) {
    //         DialogHelper.showErroDialog(description: "Invalid Credentials");
    //         return;
    //       }
    //       PreferenceUtils.setString(
    //           "role", body["userDetails"]["role"].toString());
    //       PreferenceUtils.saveUserToken(body["token"].toString());
    //       PreferenceUtils.setString(
    //           "username", body["userDetails"]["userName"].toString());
    //       PreferenceUtils.setString(
    //           "email", body["userDetails"]["email"].toString());
    //       PreferenceUtils.setString(
    //           "fullName", body["userDetails"]["fullName"].toString());
    //       PreferenceUtils.setString(
    //           "contactNo", body["userDetails"]["contactNo"].toString());
    //       PreferenceUtils.setString(
    //           "userID", body["userDetails"]["userID"].toString());

       

    //       break;

    //     default:
    //       DialogHelper.showErroDialog(description: "Invalid Credentials");
    //       break;
    //   }
    // });
  }
}
