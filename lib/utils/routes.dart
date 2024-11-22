

import 'package:get/get.dart';

import 'package:valueapp/view/home/bottom_bar.dart';

import '../bindings/home_bindings.dart';
import '../bindings/rootBindings.dart';
import '../view/auth/login.dart';

import '../view/splash/splash.dart';

class Routes {
  static String home = '/home';
  static String splash = '/';
  static String login = '/login';
  static String signup = '/signup';


}

appRoutes() => [
      GetPage(
        name: Routes.home,
        binding: HomeBindings(),
        page: () => DashboardScreen(),
      ),
      GetPage(
        name: Routes.splash,
        page: () => SplashScreen(),
      ),
      GetPage(
          name: Routes.login,
          binding: IntialBindings(),
          page: () => SignInScreen()),
          // GetPage(
          // name: Routes.meeting,
          // binding: MeetingBindings(),
          // page: () => Meeting()),
          //  GetPage(
          // name: Routes.siteVisit,
          // binding: MeetingBindings(),
          // page: () => SiteVisit()),
      // GetPage(
      //     name: Routes.addFunds,
      //     binding: FundsBinding(),
      //     page: () => AddFunds()),
      // GetPage(
      //     name: Routes.withdrawal,
      //     binding: WithdrawalBinding(),
      //     page: () => WithdrawalFunds()),
      // GetPage(
      //     name: Routes.transferFunds,
      //     binding: FundsBinding(),
      //     page: () => TransferFunds()),
      // GetPage(
      //   name: Routes.signup,
      //   page: () => const SignupScreen(),
      // ),
    ];
