import 'package:frontend_sprint/presentation/dashboard_container_screen/dashboard_container_screen.dart';
import 'package:frontend_sprint/presentation/dashboard_container_screen/binding/dashboard_container_binding.dart';
import 'package:frontend_sprint/presentation/splash_screen/splash_screen.dart';
import 'package:frontend_sprint/presentation/splash_screen/binding/splash_binding.dart';
import 'package:frontend_sprint/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:frontend_sprint/presentation/onboarding_screen/binding/onboarding_binding.dart';
import 'package:frontend_sprint/presentation/login_screen/login_screen.dart';
import 'package:frontend_sprint/presentation/login_screen/binding/login_binding.dart';
import 'package:frontend_sprint/presentation/signup_screen/signup_screen.dart';
import 'package:frontend_sprint/presentation/signup_screen/binding/signup_binding.dart';
import 'package:frontend_sprint/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:frontend_sprint/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String dashboardPage = '/dashboard_page';

  static const String dashboardContainerScreen = '/dashboard_container_screen';

  static const String splashScreen = '/splash_screen';

  static const String onboardingScreen = '/onboarding_screen';

  static const String loginScreen = '/login_screen';

  static const String signupScreen = '/signup_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: dashboardContainerScreen,
      page: () => DashboardContainerScreen(),
      bindings: [
        DashboardContainerBinding(),
      ],
    ),
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: onboardingScreen,
      page: () => OnboardingScreen(),
      bindings: [
        OnboardingBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: signupScreen,
      page: () => SignupScreen(),
      bindings: [
        SignupBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
