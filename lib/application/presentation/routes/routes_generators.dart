import 'package:get/get.dart';
import 'package:lilac_chat/application/presentation/routes/routes.dart';
import 'package:lilac_chat/application/presentation/screens/auth/login_screen.dart';
import 'package:lilac_chat/application/presentation/screens/auth/otp_verificaton_screen.dart';
import 'package:lilac_chat/application/presentation/screens/home/home_screen.dart';
import 'package:lilac_chat/application/presentation/screens/splash/splash_screen.dart';

class RoutesGenerator {
  static const Duration animationDuration = Duration(milliseconds: 500);

  static final routes = [
    GetPage(name: Routes.initial, page: () => const ScreenSplash()),
    GetPage(
      name: Routes.login,
      page: () => const ScreenLogin(),
      transition: Transition.fadeIn,
      transitionDuration: animationDuration,
    ),

    GetPage(
      name: Routes.otpverification,
      page: () => const ScreenOtpVerification(),
      transition: Transition.fadeIn,
      transitionDuration: animationDuration,
    ),
    GetPage(
      name: Routes.home,
      page: () => const ScreenHome(),
      transition: Transition.fadeIn,
      transitionDuration: animationDuration,
    ),
  ];
}
