import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/shared_pref.dart';


class HomepageController extends GetxController {
  var tabIndex = 0;
  final parameters = Get.parameters;
  void changeTabIndex(int index) {
    tabIndex = index;
    debugPrint(index.toString());

    update();
  }

  bool isLoaded = false;

  @override
  void onInit() {
    super.onInit();
   
  }

}

//   final repo = HomeService();
//   List<PortfolioModel> portfolioList = [];

//   getData() {
//     portfolioList.clear();
//     update();

//     repo.apigetPortfolio(1).then((value) {
//       print(value.statusCode);

//       switch (value.statusCode) {
//         case 200:
//           isLoaded = true;
//           final body = json.decode(value.body);
//           portfolioList.add(PortfolioModel.fromJson(body));
//           update();
//           break;
//         case 401:
//           PreferenceUtils().clearSharedPref();
//           Get.offAllNamed("/login");

//         default:
//           isLoaded = true;
//           update();
//           break;
//       }
//     });
//   }

//   List<AppoinmtmentDataModel> appointmentData = [];
//   bool isLoadedAppoibtmnt = false;
//   getMeetings() {
//     appointmentData.clear();
//     update();

//     repo.apiGetAppointmnet().then((value) {
//       print(value.statusCode);

//       switch (value.statusCode) {
//         case 200:
//           isLoadedAppoibtmnt = true;
//           final body = json.decode(value.body);
//           appointmentData.add(AppoinmtmentDataModel.fromJson(body));
//           update();
//           break;
//         case 401:
//           PreferenceUtils().clearSharedPref();
//           Get.offAllNamed("/login");

//         default:
//           isLoadedAppoibtmnt = true;
//           update();
//           break;
//       }
//     });
//   }

//   List<BlogsModel> blogsList = [];

//   getBlogs() {
//     blogsList.clear();
//     update();

//     repo.apiGetBlogs().then((value) {
//       print(value.statusCode);

//       switch (value.statusCode) {
//         case 200:
//           final body = json.decode(value.body);
//           blogsList.add(BlogsModel.fromJson(body));
//           update();
//           break;
//         case 401:
//           PreferenceUtils().clearSharedPref();
//           Get.offAllNamed("/login");

//         default:
//           break;
//       }
//     });
//   }

//   List<NewsModel> newsList = [];

//   getNews() {
//     newsList.clear();
//     update();

//     repo.apiGetNews().then((value) {
//       print(value.statusCode);

//       switch (value.statusCode) {
//         case 200:
//           final body = json.decode(value.body);
//           newsList.add(NewsModel.fromJson(body));
//           update();
//           break;
//         case 401:
//           PreferenceUtils().clearSharedPref();
//           Get.offAllNamed("/login");

//         default:
//           break;
//       }
//     });
//   }
// }
