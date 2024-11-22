// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:gurjotshan/services/home_repo.dart';

// import '../components/base.dart';
// import '../components/shared_pref.dart';
// import '../services/auth_repo.dart';
// import '../view/home/booking.dart';

// class MeetingController extends GetxController {
//   final date = TextEditingController();
//   final atime = TextEditingController();
//   final aname = TextEditingController();
//   final amobile = TextEditingController();
//   final aaddress = TextEditingController();
//   final apurpose = TextEditingController();
//   final acomment = TextEditingController();
//   final repo = HomeService();
//   addAppointment() async {
//     DialogHelper.showLoading();
//     repo
//         .apiAddAppointment(aname.text, amobile.text, aaddress.text, "", "",
//             apurpose.text, acomment.text, date.text, atime.text)
//         .then((value) {
//       DialogHelper.hideLoading();
//       switch (value.statusCode) {
//         case 200:
//           final body = json.decode(value.body);
//           print(body);
//           if (body["errorCode"] == 1) {
//             DialogHelper.showErroDialog(description: "Something went wrong");
//             return;
//           }
//            DialogHelper.showToast("Saved");
//           print(body);
//           Get.offAll(Booking());
//           break;

//         default:
//           DialogHelper.showErroDialog(description: "Something went wrong");
//           break;
//       }
//     });
//   }

//   final sname = TextEditingController();
//   final smobile = TextEditingController();
//   final saddress = TextEditingController();
//   final siteAddress = TextEditingController();
//   final estimitedBugdet = TextEditingController();
//   final estimitedTime = TextEditingController();
//   final comment = TextEditingController();
//   final requirment = TextEditingController();
//   final anySpecialOccasion = TextEditingController();
//   final areaOfSite = TextEditingController();
//   addSiteVisit() async {
//     DialogHelper.showLoading();
//     repo
//         .apiAddSiteVisit(
//             sname.text,
//             smobile.text,
//             saddress.text,
//             siteAddress.text,
//             estimitedBugdet.text,
//             estimitedTime.text,
//             comment.text,
//             requirment.text,
//             anySpecialOccasion.text,
//             areaOfSite.text)
//         .then((value) {
//       DialogHelper.hideLoading();
//       switch (value.statusCode) {
//         case 200:
//           final body = json.decode(value.body);
//           print(body);
//           if (body["errorCode"] == 1) {
//             DialogHelper.showErroDialog(description: "Something went wrong");
//             return;
//           }
//            DialogHelper.showToast("Saved");
//           print(body);
//           Get.offAll(Booking());
//           break;

//         default:
//           DialogHelper.showErroDialog(description: "Something went wrong");
//           break;
//       }
//     });
//   }
// }
