import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:valueapp/view/home/home.dart';

import '../../controller/homepageController.dart';
import '../../theme/apptheme.dart';
import 'history.dart';
import 'profile.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({Key? key}) : super(key: key);
  final _page1 = GlobalKey<NavigatorState>();
  final _page2 = GlobalKey<NavigatorState>();
  final _page3 = GlobalKey<NavigatorState>();
  final _page4 = GlobalKey<NavigatorState>();
  final c = Get.put<HomepageController>(HomepageController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomepageController>(
      builder: (controller) => Scaffold(
        //   backgroundColor: Colors.grey.shade100,

        body: IndexedStack(
          index: controller.tabIndex,
          children: [
            Home(),
            Home(),
            History(),
            Profile(),
          ],
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.only(top: 10),
          
          
          child: BottomNavigationBar(
            backgroundColor: AppTheme.whiteBackgroundColor,
            elevation: 0,
            
            selectedLabelStyle: GoogleFonts.inter(
              //  color: Get.theme.cardColor,
              fontSize: 11, height: 2,
              letterSpacing: 0,
              fontWeight: FontWeight.w500,
            ),
            unselectedItemColor: AppTheme.newLightColor,
            //   unselectedIconTheme: IconThemeData(color: AppTheme.ligthIconcolor),
            selectedIconTheme: IconThemeData(color: AppTheme.lightPrimaryColor),
            selectedItemColor: AppTheme.lightPrimaryColor,
            unselectedLabelStyle: GoogleFonts.inter(
              //  color: Get.theme.cardColor,
              fontSize: 11,
              letterSpacing: 0, height: 2,
              fontWeight: FontWeight.w500,
            ),
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_filled,
                    size: 22,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.explore,
                    size: 22,
                  ),
                  label: 'Redeem'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.history,
                    size: 22,
                  ),
                  label: 'History'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    size: 22,
                  ),
                  label: 'Profile'),
            ],
            onTap: (val) {
              FocusScope.of(context).unfocus();
              controller.changeTabIndex(val);
            },
            currentIndex: controller.tabIndex,
          ),
        ),
      ),
    );
  }
}
